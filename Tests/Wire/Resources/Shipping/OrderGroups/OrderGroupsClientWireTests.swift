import Foundation
import Testing
import Chrt

@Suite("OrderGroupsClient Wire Tests") struct OrderGroupsClientWireTests {
    @Test func addOrderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "billing_review_status": "not_started",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "description": "description",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "name": "name",
                  "order_ids": [
                    "order_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "schema_version": 1,
                  "short_id": "short_id"
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
            id: "_id",
            billingReviewStatus: Optional(.notStarted),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByOrgId: "created_by_org_id",
            createdByUserId: "created_by_user_id",
            description: Optional("description"),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            name: "name",
            orderIds: Optional([
                "order_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            schemaVersion: 1,
            shortId: "short_id"
        )
        let response = try await client.shipping.orderGroups.addOrderV1(
            orderGroupId: "order_group_id",
            orderId: "order_id",
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
                      "billing_review_status": "not_started",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "description": "description",
                      "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                      "name": "name",
                      "order_ids": [
                        "order_ids"
                      ],
                      "owned_by_org_id": "owned_by_org_id",
                      "schema_version": 1,
                      "short_id": "short_id"
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
                    id: "_id",
                    billingReviewStatus: Optional(.notStarted),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    description: Optional("description"),
                    lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    name: "name",
                    orderIds: Optional([
                        "order_ids"
                    ]),
                    ownedByOrgId: "owned_by_org_id",
                    schemaVersion: 1,
                    shortId: "short_id"
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

    @Test func newV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "billing_review_status": "not_started",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "description": "description",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "name": "name",
                  "order_ids": [
                    "order_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "schema_version": 1,
                  "short_id": "short_id"
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
            id: "_id",
            billingReviewStatus: Optional(.notStarted),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByOrgId: "created_by_org_id",
            createdByUserId: "created_by_user_id",
            description: Optional("description"),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            name: "name",
            orderIds: Optional([
                "order_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            schemaVersion: 1,
            shortId: "short_id"
        )
        let response = try await client.shipping.orderGroups.newV1(
            request: .init(
                name: "name",
                schemaVersion: 1
            ),
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
                  "_id": "_id",
                  "billing_review_status": "not_started",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "description": "description",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "name": "name",
                  "order_ids": [
                    "order_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "schema_version": 1,
                  "short_id": "short_id"
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
            id: "_id",
            billingReviewStatus: Optional(.notStarted),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByOrgId: "created_by_org_id",
            createdByUserId: "created_by_user_id",
            description: Optional("description"),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            name: "name",
            orderIds: Optional([
                "order_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            schemaVersion: 1,
            shortId: "short_id"
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
                  "_id": "_id",
                  "billing_review_status": "not_started",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "description": "description",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "name": "name",
                  "order_ids": [
                    "order_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "schema_version": 1,
                  "short_id": "short_id"
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
            id: "_id",
            billingReviewStatus: Optional(.notStarted),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByOrgId: "created_by_org_id",
            createdByUserId: "created_by_user_id",
            description: Optional("description"),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            name: "name",
            orderIds: Optional([
                "order_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            schemaVersion: 1,
            shortId: "short_id"
        )
        let response = try await client.shipping.orderGroups.setBillingReviewStatusV1(
            orderGroupId: "order_group_id",
            request: .init(billingReviewStatus: .notStarted),
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
                  "_id": "_id",
                  "billing_review_status": "not_started",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "description": "description",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "name": "name",
                  "order_ids": [
                    "order_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "schema_version": 1,
                  "short_id": "short_id"
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
            id: "_id",
            billingReviewStatus: Optional(.notStarted),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByOrgId: "created_by_org_id",
            createdByUserId: "created_by_user_id",
            description: Optional("description"),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            name: "name",
            orderIds: Optional([
                "order_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            schemaVersion: 1,
            shortId: "short_id"
        )
        let response = try await client.shipping.orderGroups.updateV1(
            orderGroupId: "order_group_id",
            request: .init(),
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
                  "_id": "_id",
                  "billing_review_status": "not_started",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "description": "description",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "name": "name",
                  "order_ids": [
                    "order_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "schema_version": 1,
                  "short_id": "short_id"
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
            id: "_id",
            billingReviewStatus: Optional(.notStarted),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByOrgId: "created_by_org_id",
            createdByUserId: "created_by_user_id",
            description: Optional("description"),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            name: "name",
            orderIds: Optional([
                "order_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            schemaVersion: 1,
            shortId: "short_id"
        )
        let response = try await client.shipping.orderGroups.getByIdV1(
            orderGroupId: "order_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}