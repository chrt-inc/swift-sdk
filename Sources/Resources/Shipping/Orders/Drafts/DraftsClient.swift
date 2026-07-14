import Foundation

public final class DraftsClient: Sendable {
    public let cargo: CargoClient
    public let expanded: DraftsExpandedClient
    public let task: TaskClient
    public let taskArtifact: TaskArtifactClient
    public let taskGroup: TaskGroupClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.cargo = CargoClient(config: config)
        self.expanded = DraftsExpandedClient(config: config)
        self.task = TaskClient(config: config)
        self.taskArtifact = TaskArtifactClient(config: config)
        self.taskGroup = TaskGroupClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a draft order from an ad-hoc core or saved template. When both a core and template ID are supplied, the core drives the build and the template ID is recorded as provenance. | authz: min_org_role=operator | (OrderBuilderReq) -> (OrderBuilderRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func buildV1(request: OrderBuilderReq, requestOptions: RequestOptions? = nil) async throws -> OrderBuilderRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/drafts/build/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderBuilderRes.self
        )
    }

    /// Reports whether an order builder request's references resolve. | authz: min_org_role=operator | (OrderBuilderReq) -> (OrderTemplateResolvabilityRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func buildPrecheckV1(request: OrderBuilderReq, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateResolvabilityRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/drafts/build_precheck/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateResolvabilityRes.self
        )
    }

    /// Creates a draft order from an ad-hoc core or saved template and streams progress events via SSE. When both a core and template ID are supplied, the core drives the build and the template ID is recorded as provenance. | authz: min_org_role=operator | (OrderBuilderReq) -> (OrderBuilderStreamEvent)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func buildWithStreamingV1(request: OrderBuilderReq, requestOptions: RequestOptions? = nil) async throws -> JSONValue {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/drafts/build_with_streaming/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: JSONValue.self
        )
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

    /// Deletes multiple draft orders and associated entities, skipping drafts with billing links. | authz_personas=[draft_creator_org_operator] | (OrdersDraftDeleteManyReq) -> (OrdersDraftDeleteManyRes)
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

    /// Converts an order screenshot into lightly structured text for the AI order builder. | authz: min_org_role=operator | (UploadFile) -> (str)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func imageToTextV1(request: Requests.BodyPostShippingOrdersDraftsImageToTextV1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/drafts/image_to_text/v1",
            contentType: .multipartFormData,
            body: request.asMultipartFormData(),
            requestOptions: requestOptions,
            responseType: String.self
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