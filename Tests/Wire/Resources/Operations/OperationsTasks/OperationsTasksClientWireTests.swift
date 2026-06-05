import Foundation
import Testing
import Chrt

@Suite("OperationsTasksClient Wire Tests") struct OperationsTasksClientWireTests {
    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "schema_version": 1,
                      "order_id": "order_id",
                      "task_type": "review_order_details",
                      "title": "title",
                      "description": "description",
                      "deadline_timestamp": "2024-01-15T09:30:00Z",
                      "tags": [
                        "tags"
                      ],
                      "assigned_user_ids": [
                        "assigned_user_ids"
                      ],
                      "_id": "_id",
                      "org_id": "org_id",
                      "department_id": "department_id",
                      "source_task_list_id": "source_task_list_id",
                      "status": "not_started",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "completed_by_user_id": "completed_by_user_id",
                      "comments": [
                        {
                          "comment": "comment",
                          "user_id": "user_id",
                          "timestamp": "2024-01-15T09:30:00Z"
                        }
                      ]
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
                    schemaVersion: 1,
                    orderId: "order_id",
                    taskType: .reviewOrderDetails,
                    title: "title",
                    description: "description",
                    deadlineTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    tags: Optional([
                        "tags"
                    ]),
                    assignedUserIds: Optional([
                        "assigned_user_ids"
                    ]),
                    id: "_id",
                    orgId: "org_id",
                    departmentId: Optional("department_id"),
                    sourceTaskListId: Optional("source_task_list_id"),
                    status: Optional(.notStarted),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    completedByUserId: Optional("completed_by_user_id"),
                    comments: Optional([
                        OperationsTaskComment1(
                            comment: "comment",
                            userId: "user_id",
                            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ])
                )
            ],
            totalCount: 1
        )
        let response = try await client.operations.operationsTasks.listV1(
            sortBy: .deadlineTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterOrderId: "filter_order_id",
            filterDepartmentId: "filter_department_id",
            filterTaskType: [
                .reviewOrderDetails
            ],
            filterStatus: [
                .notStarted
            ],
            filterTag: [
                "filter_tag"
            ],
            filterAssignedUserId: "filter_assigned_user_id",
            filterDeadlineGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterDeadlineLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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
                  "schema_version": 1,
                  "order_id": "order_id",
                  "task_type": "review_order_details",
                  "title": "title",
                  "description": "description",
                  "deadline_timestamp": "2024-01-15T09:30:00Z",
                  "tags": [
                    "tags"
                  ],
                  "assigned_user_ids": [
                    "assigned_user_ids"
                  ],
                  "_id": "_id",
                  "org_id": "org_id",
                  "department_id": "department_id",
                  "source_task_list_id": "source_task_list_id",
                  "status": "not_started",
                  "completed_at_timestamp": "2024-01-15T09:30:00Z",
                  "completed_by_user_id": "completed_by_user_id",
                  "comments": [
                    {
                      "id": "id",
                      "comment": "comment",
                      "user_id": "user_id",
                      "timestamp": "2024-01-15T09:30:00Z"
                    }
                  ]
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
            schemaVersion: 1,
            orderId: "order_id",
            taskType: .reviewOrderDetails,
            title: "title",
            description: "description",
            deadlineTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            tags: Optional([
                "tags"
            ]),
            assignedUserIds: Optional([
                "assigned_user_ids"
            ]),
            id: "_id",
            orgId: "org_id",
            departmentId: Optional("department_id"),
            sourceTaskListId: Optional("source_task_list_id"),
            status: Optional(.notStarted),
            completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            completedByUserId: Optional("completed_by_user_id"),
            comments: Optional([
                OperationsTaskComment1(
                    id: Optional("id"),
                    comment: "comment",
                    userId: "user_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ])
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
                schemaVersion: 1,
                orderId: "order_id",
                taskType: .reviewOrderDetails,
                title: "title",
                description: "description"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func completeV11() async throws -> Void {
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
        let response = try await client.operations.operationsTasks.completeV1(
            taskId: "task_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func uncompleteV11() async throws -> Void {
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
        let response = try await client.operations.operationsTasks.uncompleteV1(
            taskId: "task_id",
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
}