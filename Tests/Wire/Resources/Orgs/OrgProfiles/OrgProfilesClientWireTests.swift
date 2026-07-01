import Foundation
import Testing
import Chrt

@Suite("OrgProfilesClient Wire Tests") struct OrgProfilesClientWireTests {
    @Test func getAvatarV11() async throws -> Void {
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
        let response = try await client.orgs.orgProfiles.getAvatarV1(
            handle: "handle",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createProviderV11() async throws -> Void {
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
        let response = try await client.orgs.orgProfiles.createProviderV1(
            request: .init(
                description: "description",
                emailAddressPrimary: "email_address_primary",
                phoneNumberPrimary: "phone_number_primary",
                schemaVersion: 1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateProviderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                true
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.orgs.orgProfiles.updateProviderV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "description": "description",
                  "email_address_primary": "email_address_primary",
                  "org_id": "org_id",
                  "phone_number_primary": "phone_number_primary",
                  "schema_version": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ProviderOrgProfile1(
            id: "_id",
            description: "description",
            emailAddressPrimary: "email_address_primary",
            orgId: "org_id",
            phoneNumberPrimary: "phone_number_primary",
            schemaVersion: 1
        )
        let response = try await client.orgs.orgProfiles.getV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getByHandleV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "description": "description",
                  "email_address_primary": "email_address_primary",
                  "org_id": "org_id",
                  "phone_number_primary": "phone_number_primary",
                  "schema_version": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ProviderOrgProfile1(
            id: "_id",
            description: "description",
            emailAddressPrimary: "email_address_primary",
            orgId: "org_id",
            phoneNumberPrimary: "phone_number_primary",
            schemaVersion: 1
        )
        let response = try await client.orgs.orgProfiles.getByHandleV1(
            handle: "handle",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}