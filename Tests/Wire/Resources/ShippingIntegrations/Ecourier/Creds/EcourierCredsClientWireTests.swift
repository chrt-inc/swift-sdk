import Foundation
import Testing
import Chrt

@Suite("EcourierCredsClient Wire Tests") struct EcourierCredsClientWireTests {
    @Test func detailV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "active": true,
                  "base_url": "https://bigtex.e-courier.com",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "ecourier_customer_code": "ecourier_customer_code",
                  "ecourier_customer_id": "ecourier_customer_id",
                  "ecourier_database": "ecourier_database",
                  "high_water_mark_timestamp": "2024-01-15T09:30:00Z",
                  "notes": "notes",
                  "org_id": "org_id",
                  "owned_by_user_id": "owned_by_user_id",
                  "provider_account_label": "provider_account_label",
                  "provider_org_id": "provider_org_id",
                  "schema_version": 1,
                  "shipping_integration": "ecourier",
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
        let expectedResponse = EcourierCredsLimited1(
            id: "_id",
            active: Optional(true),
            baseUrl: "https://bigtex.e-courier.com",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            ecourierCustomerCode: "ecourier_customer_code",
            ecourierCustomerId: "ecourier_customer_id",
            ecourierDatabase: "ecourier_database",
            highWaterMarkTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            notes: Optional("notes"),
            orgId: "org_id",
            ownedByUserId: "owned_by_user_id",
            providerAccountLabel: Optional("provider_account_label"),
            providerOrgId: "provider_org_id",
            schemaVersion: 1,
            shippingIntegration: .ecourier,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            username: "username"
        )
        let response = try await client.shippingIntegrations.ecourier.creds.detailV1(
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
                      "base_url": "https://bigtex.e-courier.com",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "ecourier_customer_code": "ecourier_customer_code",
                      "ecourier_customer_id": "ecourier_customer_id",
                      "ecourier_database": "ecourier_database",
                      "high_water_mark_timestamp": "2024-01-15T09:30:00Z",
                      "notes": "notes",
                      "org_id": "org_id",
                      "owned_by_user_id": "owned_by_user_id",
                      "provider_account_label": "provider_account_label",
                      "provider_org_id": "provider_org_id",
                      "schema_version": 1,
                      "shipping_integration": "ecourier",
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
        let expectedResponse = EcourierCredsListRes(
            items: [
                EcourierCredsLimited1(
                    id: "_id",
                    active: Optional(true),
                    baseUrl: "https://bigtex.e-courier.com",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    ecourierCustomerCode: "ecourier_customer_code",
                    ecourierCustomerId: "ecourier_customer_id",
                    ecourierDatabase: "ecourier_database",
                    highWaterMarkTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    notes: Optional("notes"),
                    orgId: "org_id",
                    ownedByUserId: "owned_by_user_id",
                    providerAccountLabel: Optional("provider_account_label"),
                    providerOrgId: "provider_org_id",
                    schemaVersion: 1,
                    shippingIntegration: .ecourier,
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    username: "username"
                )
            ],
            totalCount: 1
        )
        let response = try await client.shippingIntegrations.ecourier.creds.listV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
        let expectedResponse = EcourierCredsTestRes(
            failureReason: Optional("failure_reason"),
            ok: true,
            providerAccountLabel: Optional("provider_account_label")
        )
        let response = try await client.shippingIntegrations.ecourier.creds.testV1(
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
        let response = try await client.shippingIntegrations.ecourier.creds.createV1(
            providerOrgId: "provider_org_id",
            request: .init(
                baseUrl: "https://bigtex.e-courier.com",
                ecourierCustomerCode: "ecourier_customer_code",
                ecourierCustomerId: "ecourier_customer_id",
                ecourierDatabase: "ecourier_database",
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
        let response = try await client.shippingIntegrations.ecourier.creds.deleteV1(
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
        let response = try await client.shippingIntegrations.ecourier.creds.updateV1(
            providerOrgId: "provider_org_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}