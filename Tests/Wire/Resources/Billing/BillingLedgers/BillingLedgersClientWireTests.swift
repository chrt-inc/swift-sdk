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
                  "_id": "_id",
                  "comments": "comments",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "inactive_at_timestamp": "2024-01-15T09:30:00Z",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "schema_version": 1,
                  "status": "active",
                  "task_group_type": "chrt_ground_provider"
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
            id: "_id",
            comments: Optional("comments"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByOrgId: "created_by_org_id",
            createdByUserId: "created_by_user_id",
            inactiveAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            name: Optional("name"),
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            schemaVersion: 1,
            status: Optional(.active),
            taskGroupType: Optional(.chrtGroundProvider)
        )
        let response = try await client.billing.billingLedgers.getByIdV1(
            id: "id",
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

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "_id": "_id",
                      "comments": "comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "inactive_at_timestamp": "2024-01-15T09:30:00Z",
                      "name": "name",
                      "owned_by_org_id": "owned_by_org_id",
                      "payment_destination_driver_id": "payment_destination_driver_id",
                      "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                      "payment_destination_org_id": "payment_destination_org_id",
                      "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                      "payment_origin_org_id": "payment_origin_org_id",
                      "schema_version": 1,
                      "status": "active",
                      "task_group_type": "chrt_ground_provider"
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
                    id: "_id",
                    comments: Optional("comments"),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    inactiveAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    name: Optional("name"),
                    ownedByOrgId: "owned_by_org_id",
                    paymentDestinationDriverId: Optional("payment_destination_driver_id"),
                    paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
                    paymentDestinationOrgId: Optional("payment_destination_org_id"),
                    paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
                    paymentOriginOrgId: Optional("payment_origin_org_id"),
                    schemaVersion: 1,
                    status: Optional(.active),
                    taskGroupType: Optional(.chrtGroundProvider)
                )
            ],
            totalCount: 1
        )
        let response = try await client.billing.billingLedgers.listV1(
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterStatus: [
                .active
            ],
            filterTaskGroupType: .chrtGroundProvider,
            filterPaymentOriginOrgId: "filter_payment_origin_org_id",
            filterPaymentDestinationOrgId: "filter_payment_destination_org_id",
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
}