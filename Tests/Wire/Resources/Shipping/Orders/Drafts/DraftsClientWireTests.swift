import Foundation
import Testing
import Chrt

@Suite("DraftsClient Wire Tests") struct DraftsClientWireTests {
    @Test func buildV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "notes": [
                    "notes"
                  ],
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "summary": "summary",
                  "validation_issues": [
                    "validation_issues"
                  ],
                  "validation_passed": true
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderBuilderRes(
            notes: Optional([
                "notes"
            ]),
            orderId: Optional("order_id"),
            orderShortId: Optional("order_short_id"),
            summary: "summary",
            validationIssues: Optional([
                "validation_issues"
            ]),
            validationPassed: Optional(true)
        )
        let response = try await client.shipping.orders.drafts.buildV1(
            request: OrderBuilderReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func buildPrecheckV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "unresolvable_coordinator": true,
                  "unresolvable_directory_entry_ids": [
                    "unresolvable_directory_entry_ids"
                  ],
                  "unresolvable_driver_ids": [
                    "unresolvable_driver_ids"
                  ],
                  "unresolvable_off_chrt_executor_org_ids": [
                    "unresolvable_off_chrt_executor_org_ids"
                  ],
                  "unresolvable_off_chrt_shipper": true,
                  "valid": true
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderTemplateResolvabilityRes(
            unresolvableCoordinator: Optional(true),
            unresolvableDirectoryEntryIds: Optional([
                "unresolvable_directory_entry_ids"
            ]),
            unresolvableDriverIds: Optional([
                "unresolvable_driver_ids"
            ]),
            unresolvableOffChrtExecutorOrgIds: Optional([
                "unresolvable_off_chrt_executor_org_ids"
            ]),
            unresolvableOffChrtShipper: Optional(true),
            valid: true
        )
        let response = try await client.shipping.orders.drafts.buildPrecheckV1(
            request: OrderBuilderReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

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
                  ],
                  "order_ids_skipped_due_to_billing_links": [
                    "order_ids_skipped_due_to_billing_links"
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
            ],
            orderIdsSkippedDueToBillingLinks: [
                "order_ids_skipped_due_to_billing_links"
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

    @Test func imageToTextV11() async throws -> Void {
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
        let response = try await client.shipping.orders.drafts.imageToTextV1(
            request: .init(file: .init(data: Data("".utf8))),
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
                  "off_chrt_reference_id": "off_chrt_reference_id",
                  "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
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
            offChrtReferenceId: Optional("off_chrt_reference_id"),
            offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
            orderId: "order_id",
            orderShortId: "order_short_id",
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