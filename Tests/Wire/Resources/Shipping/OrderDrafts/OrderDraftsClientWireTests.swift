import Foundation
import Testing
import Chrt

@Suite("OrderDraftsClient Wire Tests") struct OrderDraftsClientWireTests {
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
        let response = try await client.shipping.orderDrafts.deleteV1(
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
        let response = try await client.shipping.orderDrafts.deleteManyV1(
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
        let response = try await client.shipping.orderDrafts.imageToTextV1(
            request: .init(file: .init(data: Data("".utf8))),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func newV11() async throws -> Void {
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
        let expectedResponse = OrdersNewDraftRes(
            orderId: "order_id",
            orderShortId: "order_short_id"
        )
        let response = try await client.shipping.orderDrafts.newV1(
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
        let response = try await client.shipping.orderDrafts.setTaskGroupOrderingV1(
            orderId: "order_id",
            request: .init(taskGroupIds: [
                "task_group_ids"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typeaheadV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "type": "off_chrt_reference_id",
                    "values": [
                      {
                        "order_ids": [
                          "order_ids"
                        ],
                        "value": "value"
                      }
                    ]
                  }
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
            OrderTypeaheadResult(
                type: .offChrtReferenceId,
                values: [
                    OrderTypeaheadValue(
                        orderIds: [
                            "order_ids"
                        ],
                        value: "value"
                    )
                ]
            )
        ]
        let response = try await client.shipping.orderDrafts.typeaheadV1(
            query: "query",
            limit: 1,
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
        let response = try await client.shipping.orderDrafts.updateV1(
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
        let response = try await client.shipping.orderDrafts.validateV1(
            orderId: "order_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}