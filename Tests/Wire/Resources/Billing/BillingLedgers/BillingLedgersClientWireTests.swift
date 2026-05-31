import Foundation
import Testing
import Chrt

@Suite("BillingLedgersClient Wire Tests") struct BillingLedgersClientWireTests {
    @Test func getByIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "name": "name",
                  "task_group_type": "chrt_ground_provider",
                  "comments": "comments",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "_id": "_id",
                  "created_by_user_id": "created_by_user_id",
                  "created_by_org_id": "created_by_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "owned_by_org_id": "owned_by_org_id",
                  "status": "active",
                  "inactive_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = BillingLedger1(
            schemaVersion: 1,
            name: Optional("name"),
            taskGroupType: Optional(.chrtGroundProvider),
            comments: Optional("comments"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            id: "_id",
            createdByUserId: "created_by_user_id",
            createdByOrgId: "created_by_org_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            ownedByOrgId: "owned_by_org_id",
            status: Optional(.active),
            inactiveAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.billing.billingLedgers.getByIdV1(
            id: "id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "schema_version": 1,
                      "name": "name",
                      "task_group_type": "chrt_ground_provider",
                      "comments": "comments",
                      "payment_origin_org_id": "payment_origin_org_id",
                      "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                      "payment_destination_org_id": "payment_destination_org_id",
                      "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                      "payment_destination_driver_id": "payment_destination_driver_id",
                      "_id": "_id",
                      "created_by_user_id": "created_by_user_id",
                      "created_by_org_id": "created_by_org_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "owned_by_org_id": "owned_by_org_id",
                      "status": "active",
                      "inactive_at_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "total_count": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = BillingLedgerListRes(
            items: [
                BillingLedger1(
                    schemaVersion: 1,
                    name: Optional("name"),
                    taskGroupType: Optional(.chrtGroundProvider),
                    comments: Optional("comments"),
                    paymentOriginOrgId: Optional("payment_origin_org_id"),
                    paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
                    paymentDestinationOrgId: Optional("payment_destination_org_id"),
                    paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
                    paymentDestinationDriverId: Optional("payment_destination_driver_id"),
                    id: "_id",
                    createdByUserId: "created_by_user_id",
                    createdByOrgId: "created_by_org_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    ownedByOrgId: "owned_by_org_id",
                    status: Optional(.active),
                    inactiveAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ],
            totalCount: 1
        )
        let response = try await client.billing.billingLedgers.listV1(
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterTaskGroupType: .chrtGroundProvider,
            filterPaymentOriginOrgId: "filter_payment_origin_org_id",
            filterPaymentDestinationOrgId: "filter_payment_destination_org_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
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
        let response = try await client.billing.billingLedgers.createV1(
            request: .init(schemaVersion: 1),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
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
        let response = try await client.billing.billingLedgers.updateV1(
            id: "id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deactivateV11() async throws -> Void {
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
        let response = try await client.billing.billingLedgers.deactivateV1(
            id: "id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}