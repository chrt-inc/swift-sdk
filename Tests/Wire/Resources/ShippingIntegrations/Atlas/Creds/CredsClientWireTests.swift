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
                  "active": true,
                  "base_url": "base_url",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "high_water_mark_timestamp": "2024-01-15T09:30:00Z",
                  "notes": "notes",
                  "org_id": "org_id",
                  "owned_by_user_id": "owned_by_user_id",
                  "provider_org_id": "provider_org_id",
                  "schema_version": 1,
                  "shipping_integration": "atlas",
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
        let expectedResponse = AtlasCredsLimited1(
            id: "_id",
            active: Optional(true),
            baseUrl: "base_url",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            highWaterMarkTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            notes: Optional("notes"),
            orgId: "org_id",
            ownedByUserId: "owned_by_user_id",
            providerOrgId: "provider_org_id",
            schemaVersion: 1,
            shippingIntegration: .atlas,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.atlas.creds.detailV1(
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
                      "provider_org_id": "provider_org_id",
                      "schema_version": 1,
                      "shipping_integration": "atlas",
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
        let expectedResponse = AtlasCredsListRes(
            items: [
                AtlasCredsLimited1(
                    id: "_id",
                    active: Optional(true),
                    baseUrl: "base_url",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    highWaterMarkTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    notes: Optional("notes"),
                    orgId: "org_id",
                    ownedByUserId: "owned_by_user_id",
                    providerOrgId: "provider_org_id",
                    schemaVersion: 1,
                    shippingIntegration: .atlas,
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shippingIntegrations.atlas.creds.listV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func testV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "failure_reason": "failure_reason",
                  "ok": true
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AtlasCredsTestRes(
            failureReason: Optional("failure_reason"),
            ok: true
        )
        let response = try await client.shippingIntegrations.atlas.creds.testV1(
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
        let response = try await client.shippingIntegrations.atlas.creds.createV1(
            providerOrgId: "provider_org_id",
            request: .init(
                apiKey: "api_key",
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
        let response = try await client.shippingIntegrations.atlas.creds.deleteV1(
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
        let response = try await client.shippingIntegrations.atlas.creds.updateV1(
            providerOrgId: "provider_org_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}