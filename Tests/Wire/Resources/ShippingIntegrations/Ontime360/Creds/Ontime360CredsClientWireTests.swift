import Foundation
import Testing
import Chrt

@Suite("Ontime360CredsClient Wire Tests") struct Ontime360CredsClientWireTests {
    @Test func detailV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "active": true,
                  "base_url": "base_url",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "high_water_mark_timestamp": "2024-01-15T09:30:00Z",
                  "notes": "notes",
                  "org_id": "org_id",
                  "owned_by_user_id": "owned_by_user_id",
                  "provider_account_label": "provider_account_label",
                  "provider_org_id": "provider_org_id",
                  "schema_version": 1,
                  "shipping_integration": "ontime360",
                  "site_time_zone": "America/New_York",
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
        let expectedResponse = OnTime360CredsLimited1(
            id: "_id",
            active: Optional(true),
            baseUrl: "base_url",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            highWaterMarkTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            notes: Optional("notes"),
            orgId: "org_id",
            ownedByUserId: "owned_by_user_id",
            providerAccountLabel: Optional("provider_account_label"),
            providerOrgId: "provider_org_id",
            schemaVersion: 1,
            shippingIntegration: .ontime360,
            siteTimeZone: "America/New_York",
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.ontime360.creds.detailV1(
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
                      "active": true,
                      "base_url": "base_url",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "high_water_mark_timestamp": "2024-01-15T09:30:00Z",
                      "notes": "notes",
                      "org_id": "org_id",
                      "owned_by_user_id": "owned_by_user_id",
                      "provider_account_label": "provider_account_label",
                      "provider_org_id": "provider_org_id",
                      "schema_version": 1,
                      "shipping_integration": "ontime360",
                      "site_time_zone": "America/New_York",
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
        let expectedResponse = OnTime360CredsListRes(
            items: [
                OnTime360CredsLimited1(
                    id: "_id",
                    active: Optional(true),
                    baseUrl: "base_url",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    highWaterMarkTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    notes: Optional("notes"),
                    orgId: "org_id",
                    ownedByUserId: "owned_by_user_id",
                    providerAccountLabel: Optional("provider_account_label"),
                    providerOrgId: "provider_org_id",
                    schemaVersion: 1,
                    shippingIntegration: .ontime360,
                    siteTimeZone: "America/New_York",
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shippingIntegrations.ontime360.creds.listV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
                  "provider_account_label": "provider_account_label",
                  "provider_reported_time_zones": [
                    "provider_reported_time_zones"
                  ],
                  "site_time_zone": "site_time_zone"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OnTime360CredsTestRes(
            failureReason: Optional("failure_reason"),
            ok: true,
            providerAccountLabel: Optional("provider_account_label"),
            providerReportedTimeZones: Optional([
                "provider_reported_time_zones"
            ]),
            siteTimeZone: Optional("site_time_zone")
        )
        let response = try await client.shippingIntegrations.ontime360.creds.testV1(
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
        let response = try await client.shippingIntegrations.ontime360.creds.createV1(
            providerOrgId: "provider_org_id",
            request: .init(
                apiKey: "api_key",
                baseUrl: "base_url",
                schemaVersion: 1,
                siteTimeZone: "America/New_York"
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
        let response = try await client.shippingIntegrations.ontime360.creds.deleteV1(
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
        let response = try await client.shippingIntegrations.ontime360.creds.updateV1(
            providerOrgId: "provider_org_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}