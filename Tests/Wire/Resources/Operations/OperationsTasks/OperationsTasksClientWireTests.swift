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
                      "case_id": "case_id",
                      "title": "title",
                      "description": "description",
                      "deadline_timestamp": "2024-01-15T09:30:00Z",
                      "_id": "_id",
                      "org_id": "org_id",
                      "completed": true,
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
                    caseId: "case_id",
                    title: "title",
                    description: "description",
                    deadlineTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    id: "_id",
                    orgId: "org_id",
                    completed: Optional(true),
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
            filterCaseId: "filter_case_id",
            filterCompleted: true,
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
                  "case_id": "case_id",
                  "title": "title",
                  "description": "description",
                  "deadline_timestamp": "2024-01-15T09:30:00Z",
                  "_id": "_id",
                  "org_id": "org_id",
                  "completed": true,
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
            caseId: "case_id",
            title: "title",
            description: "description",
            deadlineTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            id: "_id",
            orgId: "org_id",
            completed: Optional(true),
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
                caseId: "case_id",
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