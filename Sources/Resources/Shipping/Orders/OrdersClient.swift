import Foundation

public final class OrdersClient: Sendable {
    public let drafts: DraftsClient
    public let expanded: ExpandedClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.drafts = DraftsClient(config: config)
        self.expanded = ExpandedClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds operator(s) to the caller's assignees on the order. Coordinator writes coordinator_assigned_user_ids; executor writes executor_assigned_user_ids on matching task_group_details. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (OrdersAssignReq) -> (bool)
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

    /// Cancels an order and non-terminal child entities in a transaction. | authz_personas=[lig_owner_operators] | () -> (bool)
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

    /// Cancels multiple orders and their non-terminal child entities in a transaction. | authz_personas=[lig_owner_operators] | (OrdersCancelManyReq) -> (bool)
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

    /// Validates a draft order and stages all related entities in a transaction. | authz_personas=[draft_creator_org_operator] | () -> (bool)
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

    /// Returns the department this order would map to from the shipper routing rules — a non-binding default for the UI. Department is never auto-applied; the frontend applies it explicitly via update_department_and_label. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | () -> (PydanticObjectId | None)
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

    /// Returns distinct label values matching the query for orders where the caller is coordinator (coordinator_label) or executor (task_group_details.executor_label). | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[str])
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

    /// Returns distinct short_id and off_chrt_reference_id values matching the query via case-insensitive regex. Searches visible non-draft orders and caller-created draft orders. | authz: allowed_org_types=[provider, shipper], min_org_role=operator | () -> (list[OrderTypeaheadResult])
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

    /// Updates department_id and/or label for the caller's role on the order. Coordinator writes coordinator_* fields; executor writes executor_* fields on matching task_group_details rows. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (OrdersUpdateDepartmentAndLabelReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateDepartmentAndLabelV1(orderId: String, request: Requests.OrdersUpdateDepartmentAndLabelReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/update_department_and_label/v1/\(orderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates off_chrt_reference_id on a non-draft order. | authz_personas=[order_creator_org_operators] | (OrdersUpdateOffChrtReferenceIdReq) -> (OrdersUpdateOffChrtReferenceIdRes)
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
}