import Foundation
import Testing
import Chrt

@Suite("CredsClient Wire Tests") struct CredsClientWireTests {
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
                  "client_id": "client_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "customer_id": "customer_id",
                  "description": "description",
                  "high_water_mark_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "owned_by_user_id": "owned_by_user_id",
                  "provider_account_label": "provider_account_label",
                  "provider_org_id": "provider_org_id",
                  "schema_version": 1,
                  "shipping_integration": "alvys",
                  "updated_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AlvysCredsLimited1(
            id: "_id",
            accessTokenExpiresAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            accessTokenUpdatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            active: Optional(true),
            clientId: "client_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            customerId: "customer_id",
            description: Optional("description"),
            highWaterMarkTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orgId: "org_id",
            ownedByUserId: "owned_by_user_id",
            providerAccountLabel: Optional("provider_account_label"),
            providerOrgId: "provider_org_id",
            schemaVersion: 1,
            shippingIntegration: .alvys,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.alvys.creds.detailV1(
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
                      "client_id": "client_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "customer_id": "customer_id",
                      "description": "description",
                      "high_water_mark_timestamp": "2024-01-15T09:30:00Z",
                      "org_id": "org_id",
                      "owned_by_user_id": "owned_by_user_id",
                      "provider_account_label": "provider_account_label",
                      "provider_org_id": "provider_org_id",
                      "schema_version": 1,
                      "shipping_integration": "alvys",
                      "updated_at_timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = AlvysCredsListRes(
            items: [
                AlvysCredsLimited1(
                    id: "_id",
                    accessTokenExpiresAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    accessTokenUpdatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    active: Optional(true),
                    clientId: "client_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    customerId: "customer_id",
                    description: Optional("description"),
                    highWaterMarkTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    orgId: "org_id",
                    ownedByUserId: "owned_by_user_id",
                    providerAccountLabel: Optional("provider_account_label"),
                    providerOrgId: "provider_org_id",
                    schemaVersion: 1,
                    shippingIntegration: .alvys,
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shippingIntegrations.alvys.creds.listV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
        let expectedResponse = AlvysCredsTestRes(
            failureReason: Optional("failure_reason"),
            ok: true,
            providerAccountLabel: Optional("provider_account_label")
        )
        let response = try await client.shippingIntegrations.alvys.creds.testV1(
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
        let response = try await client.shippingIntegrations.alvys.creds.createV1(
            providerOrgId: "provider_org_id",
            request: .init(
                clientId: "client_id",
                clientSecret: "client_secret",
                customerId: "customer_id",
                schemaVersion: 1
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
        let response = try await client.shippingIntegrations.alvys.creds.deleteV1(
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
        let response = try await client.shippingIntegrations.alvys.creds.updateV1(
            providerOrgId: "provider_org_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}