import Foundation
import Testing
import Chrt

@Suite("DraftsClient Wire Tests") struct DraftsClientWireTests {
    @Test func addCoordinatorTaskListToApplyAtOrderStagingV11() async throws -> Void {
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
        let response = try await client.shipping.orders.drafts.addCoordinatorTaskListToApplyAtOrderStagingV1(
            orderId: "order_id",
            taskListId: "task_list_id",
            departmentId: "department_id",
            request: .init(body: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeCoordinatorTaskListToApplyAtOrderStagingV11() async throws -> Void {
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
        let response = try await client.shipping.orders.drafts.removeCoordinatorTaskListToApplyAtOrderStagingV1(
            orderId: "order_id",
            taskListId: "task_list_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createFromOrderTemplateNewV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "order_id": "order_id",
                  "order_short_id": "order_short_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrdersOpenDraftRes(
            orderId: "order_id",
            orderShortId: "order_short_id"
        )
        let response = try await client.shipping.orders.drafts.createFromOrderTemplateNewV1(
            request: .init(),
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
        let response = try await client.shipping.orders.drafts.deleteV1(
            orderId: "order_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteManyV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "deleted_order_ids": [
                    "deleted_order_ids"
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
        let expectedResponse = OrdersDraftDeleteManyRes(
            deletedOrderIds: [
                "deleted_order_ids"
            ]
        )
        let response = try await client.shipping.orders.drafts.deleteManyV1(
            request: .init(orderIds: [
                "order_ids"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func openV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "order_id": "order_id",
                  "order_short_id": "order_short_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrdersOpenDraftRes(
            orderId: "order_id",
            orderShortId: "order_short_id"
        )
        let response = try await client.shipping.orders.drafts.openV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func setTaskGroupOrderingV11() async throws -> Void {
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
        let response = try await client.shipping.orders.drafts.setTaskGroupOrderingV1(
            orderId: "order_id",
            request: .init(taskGroupIds: [
                "task_group_ids"
            ]),
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
                  "coordinator_org_id": "coordinator_org_id",
                  "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "service_line": "on_demand",
                  "shipper_org_id": "shipper_org_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrdersDraftUpdateRes(
            coordinatorOrgId: Optional("coordinator_org_id"),
            offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
            orderId: "order_id",
            orderShortId: "order_short_id",
            serviceLine: .onDemand,
            shipperOrgId: Optional("shipper_org_id")
        )
        let response = try await client.shipping.orders.drafts.updateV1(
            orderId: "order_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func validateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "is_valid": true,
                  "issues": [
                    {
                      "requirement_key": "requirement_key"
                    }
                  ],
                  "requirements": {
                    "all_entities_are_draft": true,
                    "at_least_one_task_has_time_window": true,
                    "cargos_have_valid_lifecycle": true,
                    "coordinator_shipper_accounts_match_order": true,
                    "order_has_coordinator": true,
                    "order_has_shipper": true,
                    "order_has_task_groups": true,
                    "task_groups_have_valid_task_sequence": true,
                    "task_groups_have_valid_tasks": true,
                    "tasks_have_valid_actions": true,
                    "tasks_have_valid_cargo": true
                  }
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderDraftValidationResult(
            isValid: true,
            issues: Optional([
                ValidationIssue(
                    requirementKey: "requirement_key"
                )
            ]),
            requirements: OrderDraftValidationRequirements(
                allEntitiesAreDraft: Optional(true),
                atLeastOneTaskHasTimeWindow: Optional(true),
                cargosHaveValidLifecycle: Optional(true),
                coordinatorShipperAccountsMatchOrder: Optional(true),
                orderHasCoordinator: Optional(true),
                orderHasShipper: Optional(true),
                orderHasTaskGroups: Optional(true),
                taskGroupsHaveValidTaskSequence: Optional(true),
                taskGroupsHaveValidTasks: Optional(true),
                tasksHaveValidActions: Optional(true),
                tasksHaveValidCargo: Optional(true)
            )
        )
        let response = try await client.shipping.orders.drafts.validateV1(
            orderId: "order_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}