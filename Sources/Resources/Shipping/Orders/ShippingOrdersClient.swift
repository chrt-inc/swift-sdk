import Foundation

public final class ShippingOrdersClient: Sendable {
    public let cargo: CargoClient
    public let drafts: DraftsClient
    public let expanded: ExpandedClient
    public let orderEvents: OrderEventsClient
    public let task: TaskClient
    public let taskArtifact: TaskArtifactClient
    public let taskGroup: TaskGroupClient
    public let utils: OrdersUtilsClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.cargo = CargoClient(config: config)
        self.drafts = DraftsClient(config: config)
        self.expanded = ExpandedClient(config: config)
        self.orderEvents = OrderEventsClient(config: config)
        self.task = TaskClient(config: config)
        self.taskArtifact = TaskArtifactClient(config: config)
        self.taskGroup = TaskGroupClient(config: config)
        self.utils = OrdersUtilsClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds operator(s) to the caller's assignees on the order. Coordinator writes coordinator_assigned_user_ids; executor writes executor_assigned_user_ids on matching task_group_details. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (OrdersAssignReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.assignV1(
    ///         orderId: "order_id",
    ///         request: .init(operatorUserIds: [
    ///             "operator_user_ids"
    ///         ])
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func assignV1(orderId: String, request: Requests.OrdersAssignReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/assign/v1/\(orderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Cancels an order and non-terminal child entities in a transaction. | authz_personas=[task_group_operating_org_operators] | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.cancelV1(orderId: "order_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cancelV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/orders/cancel/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Cancels multiple orders and their non-terminal child entities in a transaction. | authz_personas=[task_group_operating_org_operators] | (OrdersCancelManyReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.cancelManyV1(request: .init(orderIds: [
    ///         "order_ids"
    ///     ]))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cancelManyV1(request: Requests.OrdersCancelManyReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/orders/cancel_many/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Adds or updates a coordinator task list to apply when the draft is staged. | authz_personas=[coordinator_org_operators] | (UTCDatetime | None) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.addCoordinatorTaskListToApplyAtOrderStagingV1(
    ///         orderId: "order_id",
    ///         taskListId: "task_list_id",
    ///         departmentId: "department_id",
    ///         request: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addCoordinatorTaskListToApplyAtOrderStagingV1(orderId: String, taskListId: String, departmentId: String? = nil, request: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/coordinator_task_lists_to_apply_at_order_staging/add/v1/\(orderId)/\(taskListId)",
            queryParams: [
                "department_id": departmentId.map { .string($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Removes a coordinator task list pending application at draft staging. | authz_personas=[coordinator_org_operators] | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.removeCoordinatorTaskListToApplyAtOrderStagingV1(
    ///         orderId: "order_id",
    ///         taskListId: "task_list_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeCoordinatorTaskListToApplyAtOrderStagingV1(orderId: String, taskListId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/coordinator_task_lists_to_apply_at_order_staging/remove/v1/\(orderId)/\(taskListId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Hard-deletes a draft order and all dependent entities. | authz_personas=[draft_creator_org_operator] | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.deleteDraftV1(orderId: "order_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteDraftV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/orders/delete_draft/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Hard-deletes multiple draft orders and all dependent entities. | authz_personas=[draft_creator_org_operator] | (OrdersDeleteManyDraftsReq) -> (OrdersDeleteManyDraftsRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.deleteManyDraftsV1(request: .init(orderIds: [
    ///         "order_ids"
    ///     ]))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteManyDraftsV1(request: Requests.OrdersDeleteManyDraftsReq, requestOptions: RequestOptions? = nil) async throws -> OrdersDeleteManyDraftsRes {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/orders/delete_many_drafts/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersDeleteManyDraftsRes.self
        )
    }

    /// Validates a draft order and stages all related entities in a transaction. | authz_personas=[draft_creator_org_operator] | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.stageV1(orderId: "order_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func stageV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/stage/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Returns the coordinator's account-level default department for the order's shipper. | authz: min_org_role=operator | () -> (PydanticObjectId | None)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.getSuggestedDepartmentV1(orderId: "order_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getSuggestedDepartmentV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> String? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/orders/suggested_department/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: String?.self
        )
    }

    /// Sets task-group ordering on an order ensuring terminal task groups precede non-terminal task groups. | authz_personas=[draft_creator_org_operator, coordinator_org_operators] | (OrdersTaskGroupOrderingReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.taskGroupOrderingV1(
    ///         orderId: "order_id",
    ///         request: .init(taskGroupIds: [
    ///             "task_group_ids"
    ///         ])
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func taskGroupOrderingV1(orderId: String, request: Requests.OrdersTaskGroupOrderingReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/orders/task_group_ordering/v1/\(orderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Returns distinct label values matching the query for orders where the caller is coordinator (coordinator_label) or executor (task_group_details.executor_label). | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[str])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.typeaheadLabelV1(
    ///         query: "query",
    ///         limit: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter query: Typeahead search query
    /// - Parameter limit: Max results
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typeaheadLabelV1(query: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [String] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/orders/typeahead/label/v1",
            queryParams: [
                "query": .string(query), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [String].self
        )
    }

    /// Returns distinct order short ID, off-CHRT reference ID, and AWB values matching the query via case-insensitive regex. Searches visible non-draft orders and caller-created draft orders. | authz: allowed_org_types=[provider, shipper], min_org_role=operator | () -> (list[OrderTypeaheadResult])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.typeaheadV1(
    ///         query: "query",
    ///         limit: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter query: Typeahead search query
    /// - Parameter limit: Max results per field
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typeaheadV1(query: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [OrderTypeaheadResult] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/orders/typeahead/v1",
            queryParams: [
                "query": .string(query), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [OrderTypeaheadResult].self
        )
    }

    /// Removes operator(s) from the caller's assignees on the order. Coordinator writes coordinator_assigned_user_ids; executor writes executor_assigned_user_ids on matching task_group_details. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (OrdersUnassignReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.unassignV1(
    ///         orderId: "order_id",
    ///         request: .init(operatorUserIds: [
    ///             "operator_user_ids"
    ///         ])
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func unassignV1(orderId: String, request: Requests.OrdersUnassignReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/unassign/v1/\(orderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates department_id for the caller's role on the order. Coordinator writes coordinator_department_id; executor writes executor_department_id on matching task_group_details rows. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (OrdersUpdateDepartmentReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.updateDepartmentV1(
    ///         orderId: "order_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateDepartmentV1(orderId: String, request: Requests.OrdersUpdateDepartmentReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/update_department/v1/\(orderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates service-line and organization assignments on a draft order. | authz_personas=[draft_creator_org_operator] | (OrdersUpdateDraftReq) -> (OrdersUpdateDraftRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.updateDraftV1(
    ///         orderId: "order_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateDraftV1(orderId: String, request: Requests.OrdersUpdateDraftReq, requestOptions: RequestOptions? = nil) async throws -> OrdersUpdateDraftRes {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/update_draft/v1/\(orderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersUpdateDraftRes.self
        )
    }

    /// Updates label for the caller's role on the order. Coordinator writes coordinator_label; executor writes executor_label on matching task_group_details rows. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (OrdersUpdateLabelReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.updateLabelV1(
    ///         orderId: "order_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateLabelV1(orderId: String, request: Requests.OrdersUpdateLabelReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/update_label/v1/\(orderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates off_chrt_reference_id on an order. Drafts require the creating org's operator; operational orders require the order creator org's operator. | authz_personas=[draft_creator_org_operator, order_creator_org_operators] | (OrdersUpdateOffChrtReferenceIdReq) -> (OrdersUpdateOffChrtReferenceIdRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.updateOffChrtReferenceIdV1(
    ///         orderId: "order_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateOffChrtReferenceIdV1(orderId: String, request: Requests.OrdersUpdateOffChrtReferenceIdReq, requestOptions: RequestOptions? = nil) async throws -> OrdersUpdateOffChrtReferenceIdRes {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/update_off_chrt_reference_id/v1/\(orderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersUpdateOffChrtReferenceIdRes.self
        )
    }

    /// Validates a draft order for staging and returns requirement results. | authz_personas=[draft_creator_org_operator] | () -> (OrderDraftValidationResult)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.validateDraftV1(orderId: "order_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func validateDraftV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> OrderDraftValidationResult {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/orders/validate_draft/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: OrderDraftValidationResult.self
        )
    }
}