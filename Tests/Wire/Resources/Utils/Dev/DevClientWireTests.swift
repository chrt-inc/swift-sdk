import Foundation
import Testing
import Chrt

@Suite("DevClient Wire Tests") struct DevClientWireTests {
    @Test func postAgentV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "logistics_fact": "logistics_fact",
                  "response": "response",
                  "topics_used": [
                    "topics_used"
                  ]
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AgentRes(
            logisticsFact: "logistics_fact",
            response: "response",
            topicsUsed: [
                "topics_used"
            ]
        )
        let response = try await client.utils.dev.postAgentV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getDecodedJwtV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "azp": "azp",
                  "exp": 1,
                  "fva": [
                    1
                  ],
                  "iat": 1,
                  "iss": "iss",
                  "jti": "jti",
                  "nbf": 1,
                  "o": {
                    "id": "id",
                    "rol": "owner",
                    "slg": "slg"
                  },
                  "org_id": "org_id",
                  "org_public_metadata": {
                    "key": "value"
                  },
                  "primary_email_address": "primary_email_address",
                  "sid": "sid",
                  "sts": "sts",
                  "sub": "sub",
                  "user_id": "user_id",
                  "v": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DecodedJwtWithOrgAndUserId(
            azp: Optional("azp"),
            exp: Optional(1),
            fva: Optional([
                1
            ]),
            iat: Optional(1),
            iss: Optional("iss"),
            jti: Optional("jti"),
            nbf: Optional(1),
            o: Optional(ClerkOrgData(
                id: Optional("id"),
                rol: Optional(.owner),
                slg: Optional("slg")
            )),
            orgId: "org_id",
            orgPublicMetadata: Optional([
                "key": JSONValue.string("value")
            ]),
            primaryEmailAddress: Optional("primary_email_address"),
            sid: Optional("sid"),
            sts: Optional("sts"),
            sub: Optional("sub"),
            userId: "user_id",
            v: Optional(1)
        )
        let response = try await client.utils.dev.getDecodedJwtV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getEmailV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                string
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = "string"
        let response = try await client.utils.dev.getEmailV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getGitInfoV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "key": "value"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            "key": "value"
        ]
        let response = try await client.utils.dev.getGitInfoV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getTemplateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                string
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = "string"
        let response = try await client.utils.dev.getTemplateV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func createTemplateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "message": "message",
                  "number": 1,
                  "timestamp": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TemplateRes(
            message: "message",
            number: 1,
            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.utils.dev.createTemplateV1(
            request: .init(
                message: "message",
                number: 1,
                timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getUserIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                string
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = "string"
        let response = try await client.utils.dev.getUserIdV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getUserIdV21() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                string
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = "string"
        let response = try await client.utils.dev.getUserIdV2(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}