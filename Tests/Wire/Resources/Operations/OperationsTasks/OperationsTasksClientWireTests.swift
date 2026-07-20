import Foundation
import Testing
import Chrt

@Suite("OperationsTasksClient Wire Tests") struct OperationsTasksClientWireTests {
    @Test func addCommentV11() async throws -> Void {
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
        let response = try await client.operations.operationsTasks.addCommentV1(
            taskId: "task_id",
            request: .init(comment: "comment"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func applyTimeDeltaToDeadlineTimestampsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "updated_count": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OperationsTasksDeadlineTimestampsUpdateRes1(
            updatedCount: 1
        )
        let response = try await client.operations.operationsTasks.applyTimeDeltaToDeadlineTimestampsV1(
            request: .init(
                operationsTaskIds: [
                    "operations_task_ids"
                ],
                timeDelta: "time_delta"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteCommentV11() async throws -> Void {
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
        let response = try await client.operations.operationsTasks.deleteCommentV1(
            taskId: "task_id",
            commentId: "comment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func expandedListV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "assigned_users": [
                        {
                          "first_name": null,
                          "last_name": null,
                          "role": "owner",
                          "user_id": "user_id"
                        }
                      ],
                      "department": {
                        "_id": "_id",
                        "created_at": "2024-01-15T09:30:00Z",
                        "created_by_user_id": "created_by_user_id",
                        "department_type": "aerospace",
                        "name": "name",
                        "org_id": "org_id",
                        "schema_version": 1,
                        "short_id": "short_id"
                      },
                      "operations_task": {
                        "_id": "_id",
                        "description": "description",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "org_id": "org_id",
                        "schema_version": 1,
                        "task_type": "review_order_details",
                        "title": "title"
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
        let expectedResponse = OperationsTaskExpandedListRes(
            items: [
                OperationsTaskExpandedListItem(
                    assignedUsers: [
                        OrgMemberDetails(
                            firstName: Optional(nil),
                            lastName: Optional(nil),
                            role: .owner,
                            userId: "user_id"
                        )
                    ],
                    department: Optional(Department1(
                        id: "_id",
                        createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        createdByUserId: "created_by_user_id",
                        departmentType: .aerospace,
                        name: "name",
                        orgId: "org_id",
                        schemaVersion: 1,
                        shortId: "short_id"
                    )),
                    operationsTask: OperationsTask1(
                        id: "_id",
                        description: "description",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        orgId: "org_id",
                        schemaVersion: 1,
                        taskType: .reviewOrderDetails,
                        title: "title"
                    )
                )
            ],
            totalCount: 1
        )
        let response = try await client.operations.operationsTasks.expandedListV1(
            sortBy: .deadlineTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            search: "search",
            filterOrderShortId: "filter_order_short_id",
            filterOrderOffChrtReferenceId: "filter_order_off_chrt_reference_id",
            filterDepartmentId: "filter_department_id",
            filterAssignedUserId: "filter_assigned_user_id",
            filterDeadlineGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterDeadlineLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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
                      "assigned_user_ids": [
                        "assigned_user_ids"
                      ],
                      "comments": [
                        {
                          "comment": "comment",
                          "timestamp": "2024-01-15T09:30:00Z",
                          "user_id": "user_id"
                        }
                      ],
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "completed_by_user_id": "completed_by_user_id",
                      "deadline_timestamp": "2024-01-15T09:30:00Z",
                      "department_id": "department_id",
                      "description": "description",
                      "order_id": "order_id",
                      "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                      "order_short_id": "order_short_id",
                      "org_id": "org_id",
                      "schema_version": 1,
                      "source_task_list_id": "source_task_list_id",
                      "status": "not_started",
                      "task_type": "review_order_details",
                      "title": "title"
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
        let expectedResponse = OperationsTaskListRes(
            items: [
                OperationsTask1(
                    id: "_id",
                    assignedUserIds: Optional([
                        "assigned_user_ids"
                    ]),
                    comments: Optional([
                        OperationsTaskComment1(
                            comment: "comment",
                            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            userId: "user_id"
                        )
                    ]),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    completedByUserId: Optional("completed_by_user_id"),
                    deadlineTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    departmentId: Optional("department_id"),
                    description: "description",
                    orderId: "order_id",
                    orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                    orderShortId: "order_short_id",
                    orgId: "org_id",
                    schemaVersion: 1,
                    sourceTaskListId: Optional("source_task_list_id"),
                    status: Optional(.notStarted),
                    taskType: .reviewOrderDetails,
                    title: "title"
                )
            ],
            totalCount: 1
        )
        let response = try await client.operations.operationsTasks.listV1(
            sortBy: .deadlineTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            search: "search",
            filterOrderShortId: "filter_order_short_id",
            filterOrderOffChrtReferenceId: "filter_order_off_chrt_reference_id",
            filterDepartmentId: "filter_department_id",
            filterAssignedUserId: "filter_assigned_user_id",
            filterDeadlineGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterDeadlineLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func setDeadlineTimestampsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "updated_count": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OperationsTasksDeadlineTimestampsUpdateRes1(
            updatedCount: 1
        )
        let response = try await client.operations.operationsTasks.setDeadlineTimestampsV1(
            request: .init(updates: [
                OperationsTaskDeadlineTimestampUpdate1(
                    deadlineTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    operationsTaskId: "operations_task_id"
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateStatusV11() async throws -> Void {
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
        let response = try await client.operations.operationsTasks.updateStatusV1(
            taskId: "task_id",
            request: .init(status: .notStarted),
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
        let response = try await client.operations.operationsTasks.createV1(
            request: .init(
                description: "description",
                orderId: "order_id",
                schemaVersion: 1,
                taskType: .reviewOrderDetails,
                title: "title"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "assigned_user_ids": [
                    "assigned_user_ids"
                  ],
                  "comments": [
                    {
                      "comment": "comment",
                      "id": "id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "completed_at_timestamp": "2024-01-15T09:30:00Z",
                  "completed_by_user_id": "completed_by_user_id",
                  "deadline_timestamp": "2024-01-15T09:30:00Z",
                  "department_id": "department_id",
                  "description": "description",
                  "order_id": "order_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "order_short_id": "order_short_id",
                  "org_id": "org_id",
                  "schema_version": 1,
                  "source_task_list_id": "source_task_list_id",
                  "status": "not_started",
                  "task_type": "review_order_details",
                  "title": "title"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OperationsTask1(
            id: "_id",
            assignedUserIds: Optional([
                "assigned_user_ids"
            ]),
            comments: Optional([
                OperationsTaskComment1(
                    comment: "comment",
                    id: Optional("id"),
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            completedByUserId: Optional("completed_by_user_id"),
            deadlineTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            departmentId: Optional("department_id"),
            description: "description",
            orderId: "order_id",
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            orderShortId: "order_short_id",
            orgId: "org_id",
            schemaVersion: 1,
            sourceTaskListId: Optional("source_task_list_id"),
            status: Optional(.notStarted),
            taskType: .reviewOrderDetails,
            title: "title"
        )
        let response = try await client.operations.operationsTasks.getV1(
            taskId: "task_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteV11() async throws -> Void {
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
        let response = try await client.operations.operationsTasks.deleteV1(
            taskId: "task_id",
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
        let response = try await client.operations.operationsTasks.updateV1(
            taskId: "task_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}