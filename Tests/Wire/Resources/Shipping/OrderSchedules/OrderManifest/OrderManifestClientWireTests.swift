import Foundation
import Testing
import Chrt

@Suite("OrderManifestClient Wire Tests") struct OrderManifestClientWireTests {
    @Test func validateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "is_valid": true,
                  "requirements": {
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
        let expectedResponse = OrderManifestValidationResult(
            isValid: true,
            requirements: OrderManifestValidationRequirements(
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
        let response = try await client.shipping.orderSchedules.orderManifest.validateV1(
            request: OrderManifest1(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}