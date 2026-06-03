import Foundation
import Testing
import Chrt

@Suite("OperationsTaskListsClient Wire Tests") struct OperationsTaskListsClientWireTests {
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
                      "tags": [
                        "tags"
                      ],
                      "entries": [
                        {
                          "task_type": "review_order_details",
                          "title": "title",
                          "description": "description"
                        }
                      ],
                      "_id": "_id",
                      "org_id": "org_id",
                      "archived": true,
                      "created_by_user_id": "created_by_user_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "updated_at_timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = OperationsTaskListListRes(
            items: [
                OperationsTaskList1(
                    schemaVersion: 1,
                    name: "name",
                    description: Optional("description"),
                    tags: Optional([
                        "tags"
                    ]),
                    entries: Optional([
                        OperationsTaskListEntry1(
                            taskType: .reviewOrderDetails,
                            title: "title",
                            description: "description"
                        )
                    ]),
                    id: "_id",
                    orgId: "org_id",
                    archived: Optional(true),
                    createdByUserId: "created_by_user_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.operations.operationsTaskLists.listV1(
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterArchived: true,
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
                  "name": "name",
                  "description": "description",
                  "tags": [
                    "tags"
                  ],
                  "entries": [
                    {
                      "id": "id",
                      "task_type": "review_order_details",
                      "title": "title",
                      "description": "description",
                      "deadline_anchor": "from_first_task",
                      "deadline_offset_seconds": 1
                    }
                  ],
                  "_id": "_id",
                  "org_id": "org_id",
                  "archived": true,
                  "created_by_user_id": "created_by_user_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "updated_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OperationsTaskList1(
            schemaVersion: 1,
            name: "name",
            description: Optional("description"),
            tags: Optional([
                "tags"
            ]),
            entries: Optional([
                OperationsTaskListEntry1(
                    id: Optional("id"),
                    taskType: .reviewOrderDetails,
                    title: "title",
                    description: "description",
                    deadlineAnchor: Optional(.fromFirstTask),
                    deadlineOffsetSeconds: Optional(1)
                )
            ]),
            id: "_id",
            orgId: "org_id",
            archived: Optional(true),
            createdByUserId: "created_by_user_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.operations.operationsTaskLists.getV1(
            taskListId: "task_list_id",
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
        let response = try await client.operations.operationsTaskLists.updateV1(
            taskListId: "task_list_id",
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
        let response = try await client.operations.operationsTaskLists.createV1(
            request: .init(
                schemaVersion: 1,
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func setEntriesV11() async throws -> Void {
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
        let response = try await client.operations.operationsTaskLists.setEntriesV1(
            taskListId: "task_list_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reorderEntriesV11() async throws -> Void {
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
        let response = try await client.operations.operationsTaskLists.reorderEntriesV1(
            taskListId: "task_list_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func archiveV11() async throws -> Void {
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
        let response = try await client.operations.operationsTaskLists.archiveV1(
            taskListId: "task_list_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unarchiveV11() async throws -> Void {
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
        let response = try await client.operations.operationsTaskLists.unarchiveV1(
            taskListId: "task_list_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func applyToCaseV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  "string"
                ]
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            "string"
        ]
        let response = try await client.operations.operationsTaskLists.applyToCaseV1(
            taskListId: "task_list_id",
            caseId: "case_id",
            initialDeadlineTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeFromCaseV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "deleted_count": 1,
                  "kept_count": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OperationsTaskListRemoveFromCaseRes1(
            deletedCount: 1,
            keptCount: 1
        )
        let response = try await client.operations.operationsTaskLists.removeFromCaseV1(
            taskListId: "task_list_id",
            caseId: "case_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}