import Foundation
import Testing
import Chrt

@Suite("OrdersAndOrderGroupsClient Wire Tests") struct OrdersAndOrderGroupsClientWireTests {
    @Test func orderGroupsListV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "order_group": {
                        "_id": "_id",
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                        "name": "name",
                        "owned_by_org_id": "owned_by_org_id",
                        "schema_version": 1,
                        "short_id": "short_id"
                      },
                      "orders": [
                        {
                          "_id": "_id",
                          "created_by_org_id": "created_by_org_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "schema_version": 1,
                          "short_id": "short_id"
                        }
                      ],
                      "shipping_status": "draft"
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
        let expectedResponse = OrderGroupExpandedListRes(
            items: [
                OrderGroupExpandedRow(
                    orderGroup: OrderGroup1(
                        id: "_id",
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        name: "name",
                        ownedByOrgId: "owned_by_org_id",
                        schemaVersion: 1,
                        shortId: "short_id"
                    ),
                    orders: [
                        Order1(
                            id: "_id",
                            createdByOrgId: "created_by_org_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            schemaVersion: 1,
                            shortId: "short_id"
                        )
                    ],
                    shippingStatus: Optional(.draft)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.ordersAndOrderGroups.orderGroupsListV1(
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterBillingReviewStatus: [
                .notStarted
            ],
            filterOrderId: "filter_order_id",
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ungroupedOrdersListV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "billing_review_status": "not_started",
                      "order": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "schema_version": 1,
                        "short_id": "short_id"
                      }
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
        let expectedResponse = UngroupedOrderListRes(
            items: [
                UngroupedOrderRow(
                    billingReviewStatus: .notStarted,
                    order: Order1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        schemaVersion: 1,
                        shortId: "short_id"
                    )
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.ordersAndOrderGroups.ungroupedOrdersListV1(
            filterShippingStatus: [
                .draft
            ],
            sortBy: .draftStartedAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}