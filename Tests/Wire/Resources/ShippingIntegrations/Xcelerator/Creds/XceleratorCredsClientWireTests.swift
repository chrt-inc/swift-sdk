import Foundation
import Testing
import Chrt

@Suite("XceleratorCredsClient Wire Tests") struct XceleratorCredsClientWireTests {
    @Test func detailV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "access_token_expires_at_timestamp": "2024-01-15T09:30:00Z",
                  "access_token_updated_at_timestamp": "2024-01-15T09:30:00Z",
                  "active": true,
                  "base_url": "base_url",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "description": "description",
                  "high_water_mark_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "owned_by_user_id": "owned_by_user_id",
                  "provider_account_label": "provider_account_label",
                  "provider_org_id": "provider_org_id",
                  "schema_version": 1,
                  "shipping_integration": "xcelerator",
                  "updated_at_timestamp": "2024-01-15T09:30:00Z",
                  "username": "username"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = XceleratorCredsLimited1(
            id: "_id",
            accessTokenExpiresAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            accessTokenUpdatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            active: Optional(true),
            baseUrl: "base_url",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            description: Optional("description"),
            highWaterMarkTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orgId: "org_id",
            ownedByUserId: "owned_by_user_id",
            providerAccountLabel: Optional("provider_account_label"),
            providerOrgId: "provider_org_id",
            schemaVersion: 1,
            shippingIntegration: .xcelerator,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            username: Optional("username")
        )
        let response = try await client.shippingIntegrations.xcelerator.creds.detailV1(
            providerOrgId: "provider_org_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "_id": "_id",
                      "access_token_expires_at_timestamp": "2024-01-15T09:30:00Z",
                      "access_token_updated_at_timestamp": "2024-01-15T09:30:00Z",
                      "active": true,
                      "base_url": "base_url",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "description": "description",
                      "high_water_mark_timestamp": "2024-01-15T09:30:00Z",
                      "org_id": "org_id",
                      "owned_by_user_id": "owned_by_user_id",
                      "provider_account_label": "provider_account_label",
                      "provider_org_id": "provider_org_id",
                      "schema_version": 1,
                      "shipping_integration": "xcelerator",
                      "updated_at_timestamp": "2024-01-15T09:30:00Z",
                      "username": "username"
                    }
                  ],
                  "total_count": 1
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = XceleratorCredsListRes(
            items: [
                XceleratorCredsLimited1(
                    id: "_id",
                    accessTokenExpiresAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    accessTokenUpdatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    active: Optional(true),
                    baseUrl: "base_url",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    description: Optional("description"),
                    highWaterMarkTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    orgId: "org_id",
                    ownedByUserId: "owned_by_user_id",
                    providerAccountLabel: Optional("provider_account_label"),
                    providerOrgId: "provider_org_id",
                    schemaVersion: 1,
                    shippingIntegration: .xcelerator,
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    username: Optional("username")
                )
            ],
            totalCount: 1
        )
        let response = try await client.shippingIntegrations.xcelerator.creds.listV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func testV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "failure_reason": "failure_reason",
                  "ok": true,
                  "provider_account_label": "provider_account_label"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = XceleratorCredsTestRes(
            failureReason: Optional("failure_reason"),
            ok: true,
            providerAccountLabel: Optional("provider_account_label")
        )
        let response = try await client.shippingIntegrations.xcelerator.creds.testV1(
            providerOrgId: "provider_org_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                string
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = "string"
        let response = try await client.shippingIntegrations.xcelerator.creds.createV1(
            providerOrgId: "provider_org_id",
            request: .init(
                baseUrl: "https://tenant.dispatchscience.com",
                password: "password",
                schemaVersion: 1,
                username: "username"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                true
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.shippingIntegrations.xcelerator.creds.deleteV1(
            providerOrgId: "provider_org_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                true
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.shippingIntegrations.xcelerator.creds.updateV1(
            providerOrgId: "provider_org_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}