import Foundation
import Testing
import Chrt

@Suite("DevClient Wire Tests") struct DevClientWireTests {
    @Test func postAgentGeographyV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "response": "response"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GeographyRes(
            response: "response"
        )
        let response = try await client.utils.dev.postAgentGeographyV1(
            request: .init(prompt: "prompt"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postAgentOpenaiPingV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "response": "response"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PingOpenAiRes(
            response: "response"
        )
        let response = try await client.utils.dev.postAgentOpenaiPingV1(
            request: .init(prompt: "prompt"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postAgentPingV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "activity_completed_at": "activity_completed_at",
                  "nonce": "nonce",
                  "response": "response",
                  "workflow_completed_at": "workflow_completed_at"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PingRes(
            activityCompletedAt: "activity_completed_at",
            nonce: "nonce",
            response: "response",
            workflowCompletedAt: "workflow_completed_at"
        )
        let response = try await client.utils.dev.postAgentPingV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getCredentialInfoV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "caller": {
                    "credential": "credential",
                    "credential_type": "session_jwt",
                    "org_id": "org_id",
                    "org_role": "owner",
                    "org_subscription": true,
                    "org_type": "provider",
                    "user_email": "user_email",
                    "user_id": "user_id"
                  },
                  "credential_type": "session_jwt",
                  "raw_claims": {
                    "key": "value"
                  }
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CredentialInfoRes(
            caller: Caller(
                credential: Optional("credential"),
                credentialType: .sessionJwt,
                orgId: "org_id",
                orgRole: Optional(.owner),
                orgSubscription: Optional(true),
                orgType: Optional(.provider),
                userEmail: Optional("user_email"),
                userId: "user_id"
            ),
            credentialType: .sessionJwt,
            rawClaims: [
                "key": JSONValue.string("value")
            ]
        )
        let response = try await client.utils.dev.getCredentialInfoV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
            "key": Optional("value")
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