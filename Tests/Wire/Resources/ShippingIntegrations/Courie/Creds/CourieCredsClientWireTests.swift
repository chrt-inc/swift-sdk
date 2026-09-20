import Foundation
import Testing
import Chrt

@Suite("CourieCredsClient Wire Tests") struct CourieCredsClientWireTests {
    @Test func detailV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "active": true,
                  "courier_id": "courier_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "customer_ids": [
                    "customer_ids"
                  ],
                  "high_water_mark_timestamp": "2024-01-15T09:30:00Z",
                  "notes": "notes",
                  "org_id": "org_id",
                  "owned_by_user_id": "owned_by_user_id",
                  "provider_org_id": "provider_org_id",
                  "schema_version": 1,
                  "shipping_integration": "courie",
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
        let expectedResponse = CourieCredsLimited1(
            id: "_id",
            active: Optional(true),
            courierId: "courier_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            customerIds: Optional([
                "customer_ids"
            ]),
            highWaterMarkTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            notes: Optional("notes"),
            orgId: "org_id",
            ownedByUserId: "owned_by_user_id",
            providerOrgId: "provider_org_id",
            schemaVersion: 1,
            shippingIntegration: .courie,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.courie.creds.detailV1(
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
                      "courier_id": "courier_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "customer_ids": [
                        "customer_ids"
                      ],
                      "high_water_mark_timestamp": "2024-01-15T09:30:00Z",
                      "notes": "notes",
                      "org_id": "org_id",
                      "owned_by_user_id": "owned_by_user_id",
                      "provider_org_id": "provider_org_id",
                      "schema_version": 1,
                      "shipping_integration": "courie",
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
        let expectedResponse = CourieCredsListRes(
            items: [
                CourieCredsLimited1(
                    id: "_id",
                    active: Optional(true),
                    courierId: "courier_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    customerIds: Optional([
                        "customer_ids"
                    ]),
                    highWaterMarkTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    notes: Optional("notes"),
                    orgId: "org_id",
                    ownedByUserId: "owned_by_user_id",
                    providerOrgId: "provider_org_id",
                    schemaVersion: 1,
                    shippingIntegration: .courie,
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shippingIntegrations.courie.creds.listV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
        let expectedResponse = CourieCredsTestRes(
            failureReason: Optional("failure_reason"),
            ok: true
        )
        let response = try await client.shippingIntegrations.courie.creds.testV1(
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
        let response = try await client.shippingIntegrations.courie.creds.createV1(
            providerOrgId: "provider_org_id",
            request: .init(
                apiKey: "api_key",
                courierId: "courier_id",
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
        let response = try await client.shippingIntegrations.courie.creds.deleteV1(
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
        let response = try await client.shippingIntegrations.courie.creds.updateV1(
            providerOrgId: "provider_org_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}