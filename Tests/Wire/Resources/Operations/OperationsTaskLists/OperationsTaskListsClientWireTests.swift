import Foundation
import Testing
import Chrt

@Suite("OperationsTaskListsClient Wire Tests") struct OperationsTaskListsClientWireTests {
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

    @Test func addEntryV11() async throws -> Void {
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
        let response = try await client.operations.operationsTaskLists.addEntryV1(
            taskListId: "task_list_id",
            request: OperationsTaskListEntryClientCreate1(
                description: "description",
                taskType: .reviewOrderDetails,
                title: "title"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func editEntryV11() async throws -> Void {
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
        let response = try await client.operations.operationsTaskLists.editEntryV1(
            taskListId: "task_list_id",
            entryUuid: "entry_uuid",
            request: OperationsTaskListEntryClientCreate1(
                description: "description",
                taskType: .reviewOrderDetails,
                title: "title"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeEntryV11() async throws -> Void {
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
        let response = try await client.operations.operationsTaskLists.removeEntryV1(
            taskListId: "task_list_id",
            entryUuid: "entry_uuid",
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

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "_id": "_id",
                      "archived": true,
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_user_id": "created_by_user_id",
                      "description": "description",
                      "entries": [
                        {
                          "description": "description",
                          "task_type": "review_order_details",
                          "title": "title"
                        }
                      ],
                      "name": "name",
                      "org_id": "org_id",
                      "schema_version": 1,
                      "tags": [
                        "tags"
                      ],
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
                    id: "_id",
                    archived: Optional(true),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByUserId: "created_by_user_id",
                    description: Optional("description"),
                    entries: Optional([
                        OperationsTaskListEntry1(
                            description: "description",
                            taskType: .reviewOrderDetails,
                            title: "title"
                        )
                    ]),
                    name: "name",
                    orgId: "org_id",
                    schemaVersion: 1,
                    tags: Optional([
                        "tags"
                    ]),
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

    @Test func removeNotStartedTasksFromCaseV11() async throws -> Void {
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
        let response = try await client.operations.operationsTaskLists.removeNotStartedTasksFromCaseV1(
            taskListId: "task_list_id",
            caseId: "case_id",
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
                name: "name",
                schemaVersion: 1
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
                  "archived": true,
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "description": "description",
                  "entries": [
                    {
                      "deadline_anchor": "from_first_task",
                      "deadline_offset_seconds": 1,
                      "description": "description",
                      "task_type": "review_order_details",
                      "title": "title",
                      "uuid": "uuid"
                    }
                  ],
                  "name": "name",
                  "org_id": "org_id",
                  "schema_version": 1,
                  "tags": [
                    "tags"
                  ],
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
            id: "_id",
            archived: Optional(true),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            description: Optional("description"),
            entries: Optional([
                OperationsTaskListEntry1(
                    deadlineAnchor: Optional(.fromFirstTask),
                    deadlineOffsetSeconds: Optional(1),
                    description: "description",
                    taskType: .reviewOrderDetails,
                    title: "title",
                    uuid: Optional("uuid")
                )
            ]),
            name: "name",
            orgId: "org_id",
            schemaVersion: 1,
            tags: Optional([
                "tags"
            ]),
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
}