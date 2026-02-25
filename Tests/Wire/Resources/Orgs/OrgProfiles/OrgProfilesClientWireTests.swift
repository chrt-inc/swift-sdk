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

    @Test func createCourierV11() async throws -> Void {
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
        let response = try await client.orgs.orgProfiles.createCourierV1(
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

    @Test func updateCourierV11() async throws -> Void {
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
        let response = try await client.orgs.orgProfiles.updateCourierV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createForwarderV11() async throws -> Void {
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
        let response = try await client.orgs.orgProfiles.createForwarderV1(
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

    @Test func updateForwarderV11() async throws -> Void {
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
        let response = try await client.orgs.orgProfiles.updateForwarderV1(
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
                  "courier_org_profile": {
                    "_id": "_id",
                    "description": "description",
                    "email_address_primary": "email_address_primary",
                    "org_id": "org_id",
                    "phone_number_primary": "phone_number_primary",
                    "schema_version": 1
                  },
                  "forwarder_org_profile": {
                    "_id": "_id",
                    "description": "description",
                    "email_address_primary": "email_address_primary",
                    "org_id": "org_id",
                    "phone_number_primary": "phone_number_primary",
                    "schema_version": 1
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
        let expectedResponse = OrgProfileRes1(
            courierOrgProfile: Optional(CourierOrgProfile1(
                id: "_id",
                description: "description",
                emailAddressPrimary: "email_address_primary",
                orgId: "org_id",
                phoneNumberPrimary: "phone_number_primary",
                schemaVersion: 1
            )),
            forwarderOrgProfile: Optional(ForwarderOrgProfile1(
                id: "_id",
                description: "description",
                emailAddressPrimary: "email_address_primary",
                orgId: "org_id",
                phoneNumberPrimary: "phone_number_primary",
                schemaVersion: 1
            ))
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
                  "courier_org_profile": {
                    "_id": "_id",
                    "description": "description",
                    "email_address_primary": "email_address_primary",
                    "org_id": "org_id",
                    "phone_number_primary": "phone_number_primary",
                    "schema_version": 1
                  },
                  "forwarder_org_profile": {
                    "_id": "_id",
                    "description": "description",
                    "email_address_primary": "email_address_primary",
                    "org_id": "org_id",
                    "phone_number_primary": "phone_number_primary",
                    "schema_version": 1
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
        let expectedResponse = OrgProfileRes1(
            courierOrgProfile: Optional(CourierOrgProfile1(
                id: "_id",
                description: "description",
                emailAddressPrimary: "email_address_primary",
                orgId: "org_id",
                phoneNumberPrimary: "phone_number_primary",
                schemaVersion: 1
            )),
            forwarderOrgProfile: Optional(ForwarderOrgProfile1(
                id: "_id",
                description: "description",
                emailAddressPrimary: "email_address_primary",
                orgId: "org_id",
                phoneNumberPrimary: "phone_number_primary",
                schemaVersion: 1
            ))
        )
        let response = try await client.orgs.orgProfiles.getByHandleV1(
            handle: "handle",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}