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

    @Test func bulkUpdateDeadlinesV11() async throws -> Void {
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
        let expectedResponse = OperationsTasksBulkUpdateDeadlinesRes1(
            updatedCount: 1
        )
        let response = try await client.operations.operationsTasks.bulkUpdateDeadlinesV1(
            request: .init(operationsTaskDeadlineUpdates: [
                OperationsTaskDeadlineUpdate1(
                    deadlineTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    taskId: "task_id"
                )
            ]),
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
                      "tags": [
                        "tags"
                      ],
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
                    tags: Optional([
                        "tags"
                    ]),
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
                  "tags": [
                    "tags"
                  ],
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
            tags: Optional([
                "tags"
            ]),
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