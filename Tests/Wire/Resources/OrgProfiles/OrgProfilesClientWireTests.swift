import Foundation
import Testing
import Chrt

@Suite("OrgProfilesClient Wire Tests") struct OrgProfilesClientWireTests {
    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "courier_org_profile": {
                    "schema_version": 1,
                    "description": "description",
                    "email_address_primary": "email_address_primary",
                    "phone_number_primary": "phone_number_primary",
                    "org_id": "org_id",
                    "_id": "_id"
                  },
                  "forwarder_org_profile": {
                    "schema_version": 1,
                    "description": "description",
                    "email_address_primary": "email_address_primary",
                    "phone_number_primary": "phone_number_primary",
                    "org_id": "org_id",
                    "_id": "_id"
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
                schemaVersion: 1,
                description: "description",
                emailAddressPrimary: "email_address_primary",
                phoneNumberPrimary: "phone_number_primary",
                orgId: "org_id",
                id: "_id"
            )),
            forwarderOrgProfile: Optional(ForwarderOrgProfile1(
                schemaVersion: 1,
                description: "description",
                emailAddressPrimary: "email_address_primary",
                phoneNumberPrimary: "phone_number_primary",
                orgId: "org_id",
                id: "_id"
            ))
        )
        let response = try await client.orgProfiles.getV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
        let response = try await client.orgProfiles.createCourierV1(
            request: .init(
                schemaVersion: 1,
                description: "description",
                emailAddressPrimary: "email_address_primary",
                phoneNumberPrimary: "phone_number_primary"
            ),
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
        let response = try await client.orgProfiles.createForwarderV1(
            request: .init(
                schemaVersion: 1,
                description: "description",
                emailAddressPrimary: "email_address_primary",
                phoneNumberPrimary: "phone_number_primary"
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
        let response = try await client.orgProfiles.updateCourierV1(
            request: .init(),
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
        let response = try await client.orgProfiles.updateForwarderV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getByHandleV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "courier_org_profile": {
                    "schema_version": 1,
                    "description": "description",
                    "email_address_primary": "email_address_primary",
                    "phone_number_primary": "phone_number_primary",
                    "org_id": "org_id",
                    "_id": "_id"
                  },
                  "forwarder_org_profile": {
                    "schema_version": 1,
                    "description": "description",
                    "email_address_primary": "email_address_primary",
                    "phone_number_primary": "phone_number_primary",
                    "org_id": "org_id",
                    "_id": "_id"
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
                schemaVersion: 1,
                description: "description",
                emailAddressPrimary: "email_address_primary",
                phoneNumberPrimary: "phone_number_primary",
                orgId: "org_id",
                id: "_id"
            )),
            forwarderOrgProfile: Optional(ForwarderOrgProfile1(
                schemaVersion: 1,
                description: "description",
                emailAddressPrimary: "email_address_primary",
                phoneNumberPrimary: "phone_number_primary",
                orgId: "org_id",
                id: "_id"
            ))
        )
        let response = try await client.orgProfiles.getByHandleV1(
            handle: "handle",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

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
        let response = try await client.orgProfiles.getAvatarV1(
            handle: "handle",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}