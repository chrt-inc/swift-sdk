import Foundation
import Testing
import Chrt

@Suite("MessagesClient Wire Tests") struct MessagesClientWireTests {
    @Test func listDriversForProviderOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "driver": {
                        "_id": "_id",
                        "org_id": "org_id",
                        "schema_version": 1,
                        "user_id": "user_id"
                      },
                      "last_message": {
                        "message": "message",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z",
                        "user_id": "user_id"
                      },
                      "last_message_order_short_id": "last_message_order_short_id",
                      "last_message_task_group_id": "last_message_task_group_id",
                      "thread_count": 1,
                      "unread_count": 1
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
        let expectedResponse = TaskGroupMessageDriverListRes(
            items: [
                TaskGroupMessageDriverListItem(
                    driver: Driver1(
                        id: "_id",
                        orgId: "org_id",
                        schemaVersion: 1,
                        userId: "user_id"
                    ),
                    lastMessage: Optional(TaskGroupMessageWithSenderName(
                        message: "message",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        userId: "user_id"
                    )),
                    lastMessageOrderShortId: Optional("last_message_order_short_id"),
                    lastMessageTaskGroupId: Optional("last_message_task_group_id"),
                    threadCount: Optional(1),
                    unreadCount: Optional(1)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.taskGroups.messages.listDriversForProviderOperatorsV1(
            includeDriversWithoutMessages: true,
            page: 1,
            pageSize: 1,
            filterStatuses: [
                .draft
            ],
            filterDriverIds: [
                "filter_driver_ids"
            ],
            filterDriverStatuses: [
                .unassigned
            ],
            filterLastMessageAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastMessageAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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
                  "org_id": "org_id",
                  "schema_version": 1,
                  "task_group_id": "task_group_id",
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
        let expectedResponse = TaskGroupMessageReadState1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastReadMessageTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            schemaVersion: 1,
            taskGroupId: "task_group_id",
            userId: "user_id"
        )
        let response = try await client.shipping.taskGroups.messages.markReadV1(
            taskGroupId: "task_group_id",
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
                      "org_id": "org_id",
                      "schema_version": 1,
                      "task_group_id": "task_group_id",
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
        let expectedResponse = TaskGroupMessageReadStateListRes(
            items: [
                TaskGroupMessageReadStateExpanded(
                    id: "_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    lastReadMessageTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    orgId: "org_id",
                    schemaVersion: 1,
                    taskGroupId: "task_group_id",
                    userId: "user_id",
                    userName: Optional("user_name")
                )
            ]
        )
        let response = try await client.shipping.taskGroups.messages.listReadStatesV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listThreadsForDriverV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "coordinator_org_id": "coordinator_org_id",
                      "driver": {
                        "_id": "_id",
                        "org_id": "org_id",
                        "schema_version": 1,
                        "user_id": "user_id"
                      },
                      "driver_id": "driver_id",
                      "executor_org_id": "executor_org_id",
                      "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
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
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "status": "draft",
                      "task_group_id": "task_group_id",
                      "task_group_type": "chrt_ground_provider",
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
        let expectedResponse = TaskGroupMessageThreadListRes(
            items: [
                TaskGroupMessageThreadListItem(
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    coordinatorOrgId: Optional("coordinator_org_id"),
                    driver: Optional(Driver.driver1(
                        Driver1(
                            id: "_id",
                            orgId: "org_id",
                            schemaVersion: 1,
                            userId: "user_id"
                        )
                    )),
                    driverId: Optional("driver_id"),
                    executorOrgId: Optional("executor_org_id"),
                    inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lastMessage: Optional(TaskGroupMessageWithSenderName(
                        message: "message",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        userId: "user_id"
                    )),
                    messageCount: 1,
                    orderId: "order_id",
                    orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                    orderShortId: "order_short_id",
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    status: TaskGroupStatusEnum1.draft,
                    taskGroupId: "task_group_id",
                    taskGroupType: TaskGroupTypeEnum1.chrtGroundProvider,
                    unreadCount: 1
                )
            ],
            totalCount: 1,
            totalUnreadCount: 1
        )
        let response = try await client.shipping.taskGroups.messages.listThreadsForDriverV1(
            filterStatuses: [
                .draft
            ],
            filterUnread: true,
            filterLastMessageAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastMessageAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            includeThreadsWithoutMessages: true,
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listThreadsForProviderOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "coordinator_org_id": "coordinator_org_id",
                      "driver": {
                        "_id": "_id",
                        "org_id": "org_id",
                        "schema_version": 1,
                        "user_id": "user_id"
                      },
                      "driver_id": "driver_id",
                      "executor_org_id": "executor_org_id",
                      "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
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
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "status": "draft",
                      "task_group_id": "task_group_id",
                      "task_group_type": "chrt_ground_provider",
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
        let expectedResponse = TaskGroupMessageThreadListRes(
            items: [
                TaskGroupMessageThreadListItem(
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    coordinatorOrgId: Optional("coordinator_org_id"),
                    driver: Optional(Driver.driver1(
                        Driver1(
                            id: "_id",
                            orgId: "org_id",
                            schemaVersion: 1,
                            userId: "user_id"
                        )
                    )),
                    driverId: Optional("driver_id"),
                    executorOrgId: Optional("executor_org_id"),
                    inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lastMessage: Optional(TaskGroupMessageWithSenderName(
                        message: "message",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        userId: "user_id"
                    )),
                    messageCount: 1,
                    orderId: "order_id",
                    orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                    orderShortId: "order_short_id",
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    status: TaskGroupStatusEnum1.draft,
                    taskGroupId: "task_group_id",
                    taskGroupType: TaskGroupTypeEnum1.chrtGroundProvider,
                    unreadCount: 1
                )
            ],
            totalCount: 1,
            totalUnreadCount: 1
        )
        let response = try await client.shipping.taskGroups.messages.listThreadsForProviderOperatorsV1(
            providerRole: .all,
            includeThreadsWithoutMessages: true,
            page: 1,
            pageSize: 1,
            filterStatuses: [
                .draft
            ],
            filterDriverId: "filter_driver_id",
            filterTaskGroupTypes: [
                .chrtGroundProvider
            ],
            filterOrderIds: [
                "filter_order_ids"
            ],
            filterShipperOrgId: "filter_shipper_org_id",
            filterOffChrtShipperOrgDataId: "filter_off_chrt_shipper_org_data_id",
            filterLastMessageFromDriver: true,
            filterUnread: true,
            filterLastMessageAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastMessageAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}