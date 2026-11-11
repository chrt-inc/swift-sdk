import Foundation
import Testing
import Chrt

@Suite("OperationsTaskListDefaultsClient Wire Tests") struct OperationsTaskListDefaultsClientWireTests {
    @Test func deleteV11() async throws -> Void {
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
        let response = try await client.operations.operationsTaskListDefaults.deleteV1(
            operationsTaskListDefaultId: "operations_task_list_default_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                [
                  {
                    "_id": "_id",
                    "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                    "counterparty_org_id": "counterparty_org_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "created_by_user_id": "created_by_user_id",
                    "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_edited_by_user_id": "last_edited_by_user_id",
                    "owned_by_org_id": "owned_by_org_id",
                    "schema_version": 1,
                    "service_line": "on_demand",
                    "task_lists_to_apply_at_order_creation": [
                      {
                        "task_list_id": "task_list_id"
                      }
                    ],
                    "task_lists_to_apply_at_order_staging": [
                      {
                        "task_list_id": "task_list_id"
                      }
                    ]
                  }
                ]
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            OperationsTaskListDefault1(
                id: "_id",
                counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                counterpartyOrgId: Optional("counterparty_org_id"),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByUserId: "created_by_user_id",
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                lastEditedByUserId: "last_edited_by_user_id",
                ownedByOrgId: "owned_by_org_id",
                schemaVersion: 1,
                serviceLine: ServiceLineEnum.onDemand,
                taskListsToApplyAtOrderCreation: Optional([
                    TaskListToApplyToOrder1(
                        taskListId: "task_list_id"
                    )
                ]),
                taskListsToApplyAtOrderStaging: Optional([
                    TaskListToApplyToOrder1(
                        taskListId: "task_list_id"
                    )
                ])
            )
        ]
        let response = try await client.operations.operationsTaskListDefaults.listV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func setV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "schema_version": 1,
                  "service_line": "on_demand",
                  "task_lists_to_apply_at_order_creation": [
                    {
                      "department_id": "department_id",
                      "entry_tag": "entry_tag",
                      "initial_deadline_timestamp": "2024-01-15T09:30:00Z",
                      "task_list_id": "task_list_id"
                    }
                  ],
                  "task_lists_to_apply_at_order_staging": [
                    {
                      "department_id": "department_id",
                      "entry_tag": "entry_tag",
                      "initial_deadline_timestamp": "2024-01-15T09:30:00Z",
                      "task_list_id": "task_list_id"
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
        let expectedResponse = OperationsTaskListDefault1(
            id: "_id",
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            ownedByOrgId: "owned_by_org_id",
            schemaVersion: 1,
            serviceLine: ServiceLineEnum.onDemand,
            taskListsToApplyAtOrderCreation: Optional([
                TaskListToApplyToOrder1(
                    departmentId: Optional("department_id"),
                    entryTag: Optional("entry_tag"),
                    initialDeadlineTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    taskListId: "task_list_id"
                )
            ]),
            taskListsToApplyAtOrderStaging: Optional([
                TaskListToApplyToOrder1(
                    departmentId: Optional("department_id"),
                    entryTag: Optional("entry_tag"),
                    initialDeadlineTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    taskListId: "task_list_id"
                )
            ])
        )
        let response = try await client.operations.operationsTaskListDefaults.setV1(
            request: .init(
                schemaVersion: 1,
                serviceLine: .onDemand
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}