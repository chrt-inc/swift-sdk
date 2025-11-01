import Foundation
import Testing
import Chrt

@Suite("DevClient Wire Tests") struct DevClientWireTests {
    @Test func getAgentV11() async throws -> Void {
        let stub = WireStub()
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
        let response = try await client.dev.getAgentV1()
        try #require(response == expectedResponse)
    }

    @Test func getUserIdV11() async throws -> Void {
        let stub = WireStub()
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
        let response = try await client.dev.getUserIdV1()
        try #require(response == expectedResponse)
    }

    @Test func getUserIdV21() async throws -> Void {
        let stub = WireStub()
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
        let response = try await client.dev.getUserIdV2()
        try #require(response == expectedResponse)
    }

    @Test func getDecodedJwtV11() async throws -> Void {
        let stub = WireStub()
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
                  "sid": "sid",
                  "sub": "sub",
                  "sts": "sts",
                  "v": 1,
                  "o": {
                    "id": "id",
                    "rol": "rol",
                    "slg": "slg"
                  },
                  "org_public_metadata": {
                    "key": "value"
                  },
                  "primary_email_address": "primary_email_address",
                  "user_id": "user_id",
                  "org_id": "org_id"
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
            sid: Optional("sid"),
            sub: Optional("sub"),
            sts: Optional("sts"),
            v: Optional(1),
            o: Optional(ClerkOrgData(
                id: Optional("id"),
                rol: Optional("rol"),
                slg: Optional("slg")
            )),
            orgPublicMetadata: Optional([
                "key": JSONValue.string("value")
            ]),
            primaryEmailAddress: Optional("primary_email_address"),
            userId: "user_id",
            orgId: "org_id"
        )
        let response = try await client.dev.getDecodedJwtV1()
        try #require(response == expectedResponse)
    }

    @Test func getEmailV11() async throws -> Void {
        let stub = WireStub()
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
        let response = try await client.dev.getEmailV1()
        try #require(response == expectedResponse)
    }

    @Test func getDurableV11() async throws -> Void {
        let stub = WireStub()
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
            "key": JSONValue.string("value")
        ]
        let response = try await client.dev.getDurableV1()
        try #require(response == expectedResponse)
    }

    @Test func getTemplateV11() async throws -> Void {
        let stub = WireStub()
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
        let response = try await client.dev.getTemplateV1()
        try #require(response == expectedResponse)
    }

    @Test func createTemplateV11() async throws -> Void {
        let stub = WireStub()
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
        let response = try await client.dev.createTemplateV1(request: .init(
            message: "message",
            number: 1,
            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        ))
        try #require(response == expectedResponse)
    }

    @Test func getGitInfoV11() async throws -> Void {
        let stub = WireStub()
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
        let response = try await client.dev.getGitInfoV1()
        try #require(response == expectedResponse)
    }
}