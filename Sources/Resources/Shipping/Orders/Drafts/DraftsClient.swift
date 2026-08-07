import Foundation

public final class DraftsClient: Sendable {
    public let cargo: DraftsCargoClient
    public let taskGroup: DraftsTaskGroupClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.cargo = DraftsCargoClient(config: config)
        self.taskGroup = DraftsTaskGroupClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds a coordinator task list with an optional department override to apply when the draft order is staged. | authz_personas=[coordinator_org_operators] | (UTCDatetime | None) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addCoordinatorTaskListToApplyAtOrderStagingV1(orderId: String, taskListId: String, departmentId: String? = nil, request: Date?, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/drafts/coordinator_task_lists_to_apply_at_order_staging/add/v1/\(orderId)/\(taskListId)",
            queryParams: [
                "department_id": departmentId.map { .string($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Removes a pending coordinator staging task list from a draft order. | authz_personas=[coordinator_org_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeCoordinatorTaskListToApplyAtOrderStagingV1(orderId: String, taskListId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/drafts/coordinator_task_lists_to_apply_at_order_staging/remove/v1/\(orderId)/\(taskListId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Creates a draft Order through one of three paths: (1) provide only order_template_new_id to load the saved template's core and record that template as the Order's provenance; (2) provide only order_template_new_core to materialize an ad hoc submitted core without template provenance; (3) provide both to record and validate the saved template as provenance while materializing the submitted core, without modifying the saved template. | authz: min_org_role=operator | (OrdersCreateDraftFromOrderTemplateNewReq) -> (OrdersOpenDraftRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createFromOrderTemplateNewV1(request: Requests.OrdersCreateDraftFromOrderTemplateNewReq, requestOptions: RequestOptions? = nil) async throws -> OrdersOpenDraftRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/drafts/create_from_order_template_new/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersOpenDraftRes.self
        )
    }

    /// Deletes a draft order and all associated entities. | authz_personas=[draft_creator_org_operator] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/orders/drafts/delete/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes multiple draft orders and associated entities. | authz_personas=[draft_creator_org_operator] | (OrdersDraftDeleteManyReq) -> (OrdersDraftDeleteManyRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteManyV1(request: Requests.OrdersDraftDeleteManyReq, requestOptions: RequestOptions? = nil) async throws -> OrdersDraftDeleteManyRes {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/orders/drafts/delete_many/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersDraftDeleteManyRes.self
        )
    }

    /// Opens a new draft order shell with org assignments based on caller's organization type. | authz: min_org_role=operator | (OrdersOpenDraftReq) -> (OrdersOpenDraftRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func openV1(request: Requests.OrdersOpenDraftReq, requestOptions: RequestOptions? = nil) async throws -> OrdersOpenDraftRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/drafts/open/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersOpenDraftRes.self
        )
    }

    /// Sets the ordering of task groups within a draft order. Must provide all task group IDs with no duplicates. | (SetTaskGroupOrderingDraftReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setTaskGroupOrderingV1(orderId: String, request: Requests.SetTaskGroupOrderingDraftReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/orders/drafts/set_task_group_ordering/v1/\(orderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates coordinator and/or shipper org assignments for a draft order. | authz_personas=[draft_creator_org_operator] | (OrdersDraftUpdateReq) -> (OrdersDraftUpdateRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(orderId: String, request: Requests.OrdersDraftUpdateReq, requestOptions: RequestOptions? = nil) async throws -> OrdersDraftUpdateRes {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/drafts/update/v1/\(orderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersDraftUpdateRes.self
        )
    }

    /// Validates the draft order for staging and returns requirement results. | () -> (OrderDraftValidationResult)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func validateV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> OrderDraftValidationResult {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/orders/drafts/validate/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: OrderDraftValidationResult.self
        )
    }
}