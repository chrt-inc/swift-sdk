import Chrt
import Foundation
import Testing

@Suite("SDK maintenance contracts")
struct SDKContractTests {
    @Test func requestOptionsOverrideAuthenticationAndEncodeQueryValues() async throws {
        let stub = HTTPStub()
        stub.setResponse(body: Data(#"{"status":"ok"}"#.utf8))
        let client = ChrtClient(
            baseURL: "https://sdk.invalid",
            token: "client-token",
            headers: ["X-Request-ID": "client-id"],
            urlSession: stub.urlSession
        )
        var headers = stub.headers
        headers["X-Request-ID"] = "request-id"

        let response = try await client.utils.root.health(
            requestOptions: RequestOptions(
                token: "request-token",
                timeout: 7,
                additionalHeaders: headers,
                additionalQueryParameters: ["filter": "a&b=雪 +/"],
                additionalBodyProperties: ["ignored": .bool(true)]
            )
        )

        #expect(response == ["status": .string("ok")])
        let request = try #require(stub.takeLastRequest())
        #expect(request.httpMethod == "GET")
        #expect(request.url?.path == "/health")
        #expect(request.value(forHTTPHeaderField: "Authorization") == "Bearer request-token")
        #expect(request.value(forHTTPHeaderField: "X-Request-ID") == "request-id")
        #expect(request.timeoutInterval == 7)
        #expect(request.httpBody == nil)
        let url = try #require(request.url)
        let query = try #require(URLComponents(url: url, resolvingAgainstBaseURL: false)?.queryItems)
        #expect(query == [URLQueryItem(name: "filter", value: "a&b=雪 +/")])
    }

    @Test func asyncCredentialProviderAuthenticatesRequests() async throws {
        let stub = HTTPStub()
        stub.setResponse(body: Data(#"{"user":"sdk-user"}"#.utf8))
        let client = ChrtClient(
            baseURL: "https://sdk.invalid",
            token: { "provider-token" },
            urlSession: stub.urlSession
        )

        let response = try await client.utils.root.pingAuthd(
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )

        #expect(response == ["user": "sdk-user"])
        let request = try #require(stub.takeLastRequest())
        #expect(request.value(forHTTPHeaderField: "Authorization") == "Bearer provider-token")
    }

    @Test func retryReturnsDecodedSuccessfulResponse() async throws {
        let stub = HTTPStub()
        stub.setResponseSequence([
            (statusCode: 503, headers: ["Retry-After": "0"], body: Data()),
            (statusCode: 200, headers: ["Content-Type": "application/json"],
             body: Data(#"{"status":"recovered"}"#.utf8)),
        ])
        let client = ChrtClient(
            baseURL: "https://sdk.invalid", token: "token", urlSession: stub.urlSession
        )

        let response = try await client.utils.root.health(
            requestOptions: RequestOptions(maxRetries: 1, additionalHeaders: stub.headers)
        )

        #expect(response == ["status": .string("recovered")])
        #expect(stub.getRequestCount() == 2)
    }

    @Test func disabledRetriesPreserveHTTPError() async throws {
        let stub = HTTPStub()
        stub.setResponseSequence([
            (statusCode: 503, headers: ["Content-Type": "application/json"],
             body: Data(#"{"message":"try later"}"#.utf8)),
            (statusCode: 200, headers: ["Content-Type": "application/json"], body: Data("{}".utf8)),
        ])
        let client = ChrtClient(
            baseURL: "https://sdk.invalid", token: "token", urlSession: stub.urlSession
        )

        await #expect {
            try await client.utils.root.health(
                requestOptions: RequestOptions(maxRetries: 0, additionalHeaders: stub.headers)
            )
        } throws: { error in
            guard case ChrtError.httpError(let httpError) = error else { return false }
            return httpError.statusCode == 503 && httpError.body?.message == "try later"
        }
        #expect(stub.getRequestCount() == 1)
    }

    @Test func malformedSuccessfulResponseThrowsDecodingError() async throws {
        let stub = HTTPStub()
        stub.setResponse(body: Data("not json".utf8))
        let client = ChrtClient(
            baseURL: "https://sdk.invalid", token: "token", urlSession: stub.urlSession
        )

        await #expect {
            try await client.utils.root.health(
                requestOptions: RequestOptions(additionalHeaders: stub.headers)
            )
        } throws: { error in
            guard case ChrtError.decodingError = error else { return false }
            return true
        }
        #expect(stub.getRequestCount() == 1)
    }

    @Test func JSONValuesPreserveTypesAcrossSerialization() throws {
        let data = Data(#"{"flag":true,"count":2,"nothing":null,"nested":["text",false]}"#.utf8)
        let value = try JSONDecoder().decode(JSONValue.self, from: data)
        let expected: JSONValue = .object([
            "flag": .bool(true),
            "count": .number(2),
            "nothing": .null,
            "nested": .array([.string("text"), .bool(false)]),
        ])

        #expect(value == expected)
        let encoded = try JSONEncoder().encode(value)
        #expect(try JSONDecoder().decode(JSONValue.self, from: encoded) == expected)
    }
}
