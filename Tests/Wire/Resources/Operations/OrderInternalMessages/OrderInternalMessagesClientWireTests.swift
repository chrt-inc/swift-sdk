import Foundation
import Testing
import Chrt

@Suite("OrderInternalMessagesClient Wire Tests") struct OrderInternalMessagesClientWireTests {
    @Test func addMessageV11() async throws -> Void {
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
        let response = try await client.operations.orderInternalMessages.addMessageV1(
            orderId: "order_id",
            request: .init(message: "message"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getByOrderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "created_at": "2024-01-15T09:30:00Z",
                  "messages": [
                    {
                      "id": "id",
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "order_id": "order_id",
                  "order_internal_message_s3_object_metadata_ids": [
                    "order_internal_message_s3_object_metadata_ids"
                  ],
                  "org_id": "org_id",
                  "schema_version": 1
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderInternalMessages1(
            id: "_id",
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            messages: Optional([
                OrderInternalMessage1(
                    id: Optional("id"),
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            orderId: "order_id",
            orderInternalMessageS3ObjectMetadataIds: Optional([
                "order_internal_message_s3_object_metadata_ids"
            ]),
            orgId: "org_id",
            schemaVersion: 1
        )
        let response = try await client.operations.orderInternalMessages.getByOrderV1(
            orderId: "order_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteMessageV11() async throws -> Void {
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
        let response = try await client.operations.orderInternalMessages.deleteMessageV1(
            orderId: "order_id",
            messageId: "message_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func markReadV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_read_message_timestamp": "2024-01-15T09:30:00Z",
                  "order_internal_messages_id": "order_internal_messages_id",
                  "org_id": "org_id",
                  "schema_version": 1,
                  "user_id": "user_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderInternalMessagesReadState1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastReadMessageTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orderInternalMessagesId: "order_internal_messages_id",
            orgId: "org_id",
            schemaVersion: 1,
            userId: "user_id"
        )
        let response = try await client.operations.orderInternalMessages.markReadV1(
            orderId: "order_id",
            request: .init(lastReadMessageTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listReadStatesV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "_id": "_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_read_message_timestamp": "2024-01-15T09:30:00Z",
                      "order_internal_messages_id": "order_internal_messages_id",
                      "org_id": "org_id",
                      "schema_version": 1,
                      "user_id": "user_id",
                      "user_name": "user_name"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderInternalMessagesReadStateListRes(
            items: [
                OrderInternalMessagesReadStateExpanded(
                    id: "_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    lastReadMessageTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    orderInternalMessagesId: "order_internal_messages_id",
                    orgId: "org_id",
                    schemaVersion: 1,
                    userId: "user_id",
                    userName: Optional("user_name")
                )
            ]
        )
        let response = try await client.operations.orderInternalMessages.listReadStatesV1(
            orderId: "order_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listThreadsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "last_message": {
                        "message": "message",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z",
                        "user_id": "user_id"
                      },
                      "message_count": 1,
                      "order_id": "order_id",
                      "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                      "order_short_id": "order_short_id",
                      "order_status": "draft",
                      "unread_count": 1
                    }
                  ],
                  "total_count": 1,
                  "total_unread_count": 1
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderInternalMessageThreadListRes(
            items: [
                OrderInternalMessageThreadListItem(
                    lastMessage: OrderInternalMessageWithSenderName(
                        message: "message",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        userId: "user_id"
                    ),
                    messageCount: 1,
                    orderId: "order_id",
                    orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                    orderShortId: "order_short_id",
                    orderStatus: OrderStatusEnum1.draft,
                    unreadCount: 1
                )
            ],
            totalCount: 1,
            totalUnreadCount: 1
        )
        let response = try await client.operations.orderInternalMessages.listThreadsV1(
            filterOrderStatuses: [
                .draft
            ],
            filterOrderIds: [
                "filter_order_ids"
            ],
            filterUnread: true,
            filterLastMessageAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastMessageAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}