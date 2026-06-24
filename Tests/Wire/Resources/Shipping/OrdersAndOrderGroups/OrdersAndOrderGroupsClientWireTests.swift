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
                        "schema_version": 1,
                        "name": "name",
                        "_id": "_id",
                        "short_id": "short_id",
                        "owned_by_org_id": "owned_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "last_edited_at_timestamp": "2024-01-15T09:30:00Z"
                      },
                      "orders": [
                        {
                          "schema_version": 1,
                          "_id": "_id",
                          "short_id": "short_id",
                          "created_by_org_id": "created_by_org_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
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
                        schemaVersion: 1,
                        name: "name",
                        id: "_id",
                        shortId: "short_id",
                        ownedByOrgId: "owned_by_org_id",
                        createdByUserId: "created_by_user_id",
                        createdByOrgId: "created_by_org_id",
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    ),
                    orders: [
                        Order1(
                            schemaVersion: 1,
                            id: "_id",
                            shortId: "short_id",
                            createdByOrgId: "created_by_org_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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
                      "order": {
                        "schema_version": 1,
                        "_id": "_id",
                        "short_id": "short_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
                      },
                      "billing_review_status": "not_started"
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
                    order: Order1(
                        schemaVersion: 1,
                        id: "_id",
                        shortId: "short_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    ),
                    billingReviewStatus: .notStarted
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