import Foundation
import Testing
import Chrt

@Suite("OrderGroupsClient Wire Tests") struct OrderGroupsClientWireTests {
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
                      "description": "description",
                      "_id": "_id",
                      "short_id": "short_id",
                      "order_ids": [
                        "order_ids"
                      ],
                      "owned_by_org_id": "owned_by_org_id",
                      "billing_review_status": "not_started",
                      "created_by_user_id": "created_by_user_id",
                      "created_by_org_id": "created_by_org_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_edited_at_timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = OrderGroupListRes(
            items: [
                OrderGroup1(
                    schemaVersion: 1,
                    name: "name",
                    description: Optional("description"),
                    id: "_id",
                    shortId: "short_id",
                    orderIds: Optional([
                        "order_ids"
                    ]),
                    ownedByOrgId: "owned_by_org_id",
                    billingReviewStatus: Optional(.notStarted),
                    createdByUserId: "created_by_user_id",
                    createdByOrgId: "created_by_org_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.orderGroups.listV1(
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterOrderId: "filter_order_id",
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getByIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "name": "name",
                  "description": "description",
                  "_id": "_id",
                  "short_id": "short_id",
                  "order_ids": [
                    "order_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "billing_review_status": "not_started",
                  "created_by_user_id": "created_by_user_id",
                  "created_by_org_id": "created_by_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderGroup1(
            schemaVersion: 1,
            name: "name",
            description: Optional("description"),
            id: "_id",
            shortId: "short_id",
            orderIds: Optional([
                "order_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            billingReviewStatus: Optional(.notStarted),
            createdByUserId: "created_by_user_id",
            createdByOrgId: "created_by_org_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shipping.orderGroups.getByIdV1(
            orderGroupId: "order_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func newV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "name": "name",
                  "description": "description",
                  "_id": "_id",
                  "short_id": "short_id",
                  "order_ids": [
                    "order_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "billing_review_status": "not_started",
                  "created_by_user_id": "created_by_user_id",
                  "created_by_org_id": "created_by_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderGroup1(
            schemaVersion: 1,
            name: "name",
            description: Optional("description"),
            id: "_id",
            shortId: "short_id",
            orderIds: Optional([
                "order_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            billingReviewStatus: Optional(.notStarted),
            createdByUserId: "created_by_user_id",
            createdByOrgId: "created_by_org_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shipping.orderGroups.newV1(
            request: .init(
                schemaVersion: 1,
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "name": "name",
                  "description": "description",
                  "_id": "_id",
                  "short_id": "short_id",
                  "order_ids": [
                    "order_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "billing_review_status": "not_started",
                  "created_by_user_id": "created_by_user_id",
                  "created_by_org_id": "created_by_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderGroup1(
            schemaVersion: 1,
            name: "name",
            description: Optional("description"),
            id: "_id",
            shortId: "short_id",
            orderIds: Optional([
                "order_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            billingReviewStatus: Optional(.notStarted),
            createdByUserId: "created_by_user_id",
            createdByOrgId: "created_by_org_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shipping.orderGroups.updateV1(
            orderGroupId: "order_group_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func addOrderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "name": "name",
                  "description": "description",
                  "_id": "_id",
                  "short_id": "short_id",
                  "order_ids": [
                    "order_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "billing_review_status": "not_started",
                  "created_by_user_id": "created_by_user_id",
                  "created_by_org_id": "created_by_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderGroup1(
            schemaVersion: 1,
            name: "name",
            description: Optional("description"),
            id: "_id",
            shortId: "short_id",
            orderIds: Optional([
                "order_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            billingReviewStatus: Optional(.notStarted),
            createdByUserId: "created_by_user_id",
            createdByOrgId: "created_by_org_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shipping.orderGroups.addOrderV1(
            orderGroupId: "order_group_id",
            orderId: "order_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeOrderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "name": "name",
                  "description": "description",
                  "_id": "_id",
                  "short_id": "short_id",
                  "order_ids": [
                    "order_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "billing_review_status": "not_started",
                  "created_by_user_id": "created_by_user_id",
                  "created_by_org_id": "created_by_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderGroup1(
            schemaVersion: 1,
            name: "name",
            description: Optional("description"),
            id: "_id",
            shortId: "short_id",
            orderIds: Optional([
                "order_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            billingReviewStatus: Optional(.notStarted),
            createdByUserId: "created_by_user_id",
            createdByOrgId: "created_by_org_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shipping.orderGroups.removeOrderV1(
            orderGroupId: "order_group_id",
            orderId: "order_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func setBillingReviewStatusV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "name": "name",
                  "description": "description",
                  "_id": "_id",
                  "short_id": "short_id",
                  "order_ids": [
                    "order_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "billing_review_status": "not_started",
                  "created_by_user_id": "created_by_user_id",
                  "created_by_org_id": "created_by_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderGroup1(
            schemaVersion: 1,
            name: "name",
            description: Optional("description"),
            id: "_id",
            shortId: "short_id",
            orderIds: Optional([
                "order_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            billingReviewStatus: Optional(.notStarted),
            createdByUserId: "created_by_user_id",
            createdByOrgId: "created_by_org_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shipping.orderGroups.setBillingReviewStatusV1(
            orderGroupId: "order_group_id",
            request: .init(billingReviewStatus: .notStarted),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}