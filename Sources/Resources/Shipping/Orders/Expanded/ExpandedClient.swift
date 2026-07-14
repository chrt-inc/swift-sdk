import Foundation

public final class ExpandedClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves an expanded order with optional related data for coordinator operators (the provider org coordinating the order). | authz_personas=[coordinator_org_operators] | (OrderAndTaskGroupExpandedReq) -> (OrderExpandedForCoordinator)
    ///
    /// - Parameter orderRef: Order ID, short ID, or off-chrt reference ID
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forCoordinatorOperatorsV1(orderRef: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrderExpandedForCoordinator {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/expanded/for_coordinator_operators/v1/\(orderRef)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderExpandedForCoordinator.self
        )
    }

    /// Retrieves an expanded order containing only task groups executed by the caller's provider org. | authz_personas=[order_executor_org_operators] | (OrderAndTaskGroupExpandedReq) -> (OrderExpandedForExecutor)
    ///
    /// - Parameter orderRef: Order ID, short ID, or off-chrt reference ID
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forExecutorOperatorsV1(orderRef: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrderExpandedForExecutor {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/expanded/for_executor_operators/v1/\(orderRef)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderExpandedForExecutor.self
        )
    }

    /// Retrieves an expanded order for a provider org that is the coordinator, an executor, or both, with role-filtered task-group details. Mirrors the per-item projection of the for_provider_operators list route. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (OrderAndTaskGroupExpandedReq) -> (OrderExpandedForProvider)
    ///
    /// - Parameter orderRef: Order ID, short ID, or off-chrt reference ID
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forProviderOperatorsV1(orderRef: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrderExpandedForProvider {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/expanded/for_provider_operators/v1/\(orderRef)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderExpandedForProvider.self
        )
    }

    /// Retrieves an expanded order with optional related data for shipper operators. | authz_personas=[shipper_org_operators] | (OrderAndTaskGroupExpandedReq) -> (OrderExpandedForShipper)
    ///
    /// - Parameter orderRef: Order ID, short ID, or off-chrt reference ID
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forShipperOperatorsV1(orderRef: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrderExpandedForShipper {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/expanded/for_shipper_operators/v1/\(orderRef)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderExpandedForShipper.self
        )
    }

    /// Lists expanded orders where the caller's provider org is the coordinator. Filtering, sorting, pagination, optional search. | authz: allowed_org_types=[provider], min_org_role=operator | (OrderAndTaskGroupExpandedReq) -> (OrdersExpandedListForCoordinatorRes)
    ///
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter search: Full-text search query (searches order short_id and off_chrt_reference_id)
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForCoordinatorOperatorsV1(sortBy: OrderSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterStatus: OrderStatusEnum1? = nil, filterDraftStartedAtTimestampLte: Date? = nil, filterDraftStartedAtTimestampGte: Date? = nil, filterStagedAtTimestampLte: Date? = nil, filterStagedAtTimestampGte: Date? = nil, filterInProgressAtTimestampLte: Date? = nil, filterInProgressAtTimestampGte: Date? = nil, filterCompletedAtTimestampLte: Date? = nil, filterCompletedAtTimestampGte: Date? = nil, filterCancelledAtTimestampLte: Date? = nil, filterCancelledAtTimestampGte: Date? = nil, filterExceptionAtTimestampLte: Date? = nil, filterExceptionAtTimestampGte: Date? = nil, filterExecutorOrgId: String? = nil, filterShipperOrgId: String? = nil, filterOffChrtShipperOrgId: String? = nil, filterCoordinatorDepartmentId: String? = nil, filterCoordinatorAssignedUserIds: String? = nil, filterCoordinatorLabel: String? = nil, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrdersExpandedListForCoordinatorRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/expanded/list/for_coordinator_operators/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }, 
                "filter_draft_started_at_timestamp_lte": filterDraftStartedAtTimestampLte.map { .date($0) }, 
                "filter_draft_started_at_timestamp_gte": filterDraftStartedAtTimestampGte.map { .date($0) }, 
                "filter_staged_at_timestamp_lte": filterStagedAtTimestampLte.map { .date($0) }, 
                "filter_staged_at_timestamp_gte": filterStagedAtTimestampGte.map { .date($0) }, 
                "filter_in_progress_at_timestamp_lte": filterInProgressAtTimestampLte.map { .date($0) }, 
                "filter_in_progress_at_timestamp_gte": filterInProgressAtTimestampGte.map { .date($0) }, 
                "filter_completed_at_timestamp_lte": filterCompletedAtTimestampLte.map { .date($0) }, 
                "filter_completed_at_timestamp_gte": filterCompletedAtTimestampGte.map { .date($0) }, 
                "filter_cancelled_at_timestamp_lte": filterCancelledAtTimestampLte.map { .date($0) }, 
                "filter_cancelled_at_timestamp_gte": filterCancelledAtTimestampGte.map { .date($0) }, 
                "filter_exception_at_timestamp_lte": filterExceptionAtTimestampLte.map { .date($0) }, 
                "filter_exception_at_timestamp_gte": filterExceptionAtTimestampGte.map { .date($0) }, 
                "filter_executor_org_id": filterExecutorOrgId.map { .string($0) }, 
                "filter_shipper_org_id": filterShipperOrgId.map { .string($0) }, 
                "filter_off_chrt_shipper_org_id": filterOffChrtShipperOrgId.map { .string($0) }, 
                "filter_coordinator_department_id": filterCoordinatorDepartmentId.map { .string($0) }, 
                "filter_coordinator_assigned_user_ids": filterCoordinatorAssignedUserIds.map { .string($0) }, 
                "filter_coordinator_label": filterCoordinatorLabel.map { .string($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersExpandedListForCoordinatorRes.self
        )
    }

    /// Lists expanded orders where the caller's provider org executes at least one task group. Each result contains only that org's task groups. | authz: allowed_org_types=[provider], min_org_role=operator | (OrderAndTaskGroupExpandedReq) -> (OrdersExpandedListForExecutorRes)
    ///
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter search: Full-text search query (searches order short_id and off_chrt_reference_id)
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForExecutorOperatorsV1(sortBy: OrderSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterStatus: OrderStatusEnum1? = nil, filterDraftStartedAtTimestampLte: Date? = nil, filterDraftStartedAtTimestampGte: Date? = nil, filterStagedAtTimestampLte: Date? = nil, filterStagedAtTimestampGte: Date? = nil, filterInProgressAtTimestampLte: Date? = nil, filterInProgressAtTimestampGte: Date? = nil, filterCompletedAtTimestampLte: Date? = nil, filterCompletedAtTimestampGte: Date? = nil, filterCancelledAtTimestampLte: Date? = nil, filterCancelledAtTimestampGte: Date? = nil, filterExceptionAtTimestampLte: Date? = nil, filterExceptionAtTimestampGte: Date? = nil, filterCoordinatorOrgId: String? = nil, filterShipperOrgId: String? = nil, filterOffChrtShipperOrgId: String? = nil, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrdersExpandedListForExecutorRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/expanded/list/for_executor_operators/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }, 
                "filter_draft_started_at_timestamp_lte": filterDraftStartedAtTimestampLte.map { .date($0) }, 
                "filter_draft_started_at_timestamp_gte": filterDraftStartedAtTimestampGte.map { .date($0) }, 
                "filter_staged_at_timestamp_lte": filterStagedAtTimestampLte.map { .date($0) }, 
                "filter_staged_at_timestamp_gte": filterStagedAtTimestampGte.map { .date($0) }, 
                "filter_in_progress_at_timestamp_lte": filterInProgressAtTimestampLte.map { .date($0) }, 
                "filter_in_progress_at_timestamp_gte": filterInProgressAtTimestampGte.map { .date($0) }, 
                "filter_completed_at_timestamp_lte": filterCompletedAtTimestampLte.map { .date($0) }, 
                "filter_completed_at_timestamp_gte": filterCompletedAtTimestampGte.map { .date($0) }, 
                "filter_cancelled_at_timestamp_lte": filterCancelledAtTimestampLte.map { .date($0) }, 
                "filter_cancelled_at_timestamp_gte": filterCancelledAtTimestampGte.map { .date($0) }, 
                "filter_exception_at_timestamp_lte": filterExceptionAtTimestampLte.map { .date($0) }, 
                "filter_exception_at_timestamp_gte": filterExceptionAtTimestampGte.map { .date($0) }, 
                "filter_coordinator_org_id": filterCoordinatorOrgId.map { .string($0) }, 
                "filter_shipper_org_id": filterShipperOrgId.map { .string($0) }, 
                "filter_off_chrt_shipper_org_id": filterOffChrtShipperOrgId.map { .string($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersExpandedListForExecutorRes.self
        )
    }

    /// Lists expanded orders where the caller's provider org is the coordinator, an executor, or both. Each order appears once with role-filtered task-group details. | authz: allowed_org_types=[provider], min_org_role=operator | (OrderAndTaskGroupExpandedReq) -> (OrdersExpandedListForProviderRes)
    ///
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter search: Full-text search query (searches order short_id and off_chrt_reference_id)
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForProviderOperatorsV1(providerRole: OrderProviderRoleFilterEnum? = nil, sortBy: OrderSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterStatus: OrderStatusEnum1? = nil, filterDraftStartedAtTimestampLte: Date? = nil, filterDraftStartedAtTimestampGte: Date? = nil, filterStagedAtTimestampLte: Date? = nil, filterStagedAtTimestampGte: Date? = nil, filterInProgressAtTimestampLte: Date? = nil, filterInProgressAtTimestampGte: Date? = nil, filterCompletedAtTimestampLte: Date? = nil, filterCompletedAtTimestampGte: Date? = nil, filterCancelledAtTimestampLte: Date? = nil, filterCancelledAtTimestampGte: Date? = nil, filterExceptionAtTimestampLte: Date? = nil, filterExceptionAtTimestampGte: Date? = nil, filterExecutorOrgId: String? = nil, filterCoordinatorOrgId: String? = nil, filterShipperOrgId: String? = nil, filterOffChrtShipperOrgId: String? = nil, filterCoordinatorDepartmentId: String? = nil, filterCoordinatorAssignedUserIds: String? = nil, filterCoordinatorLabel: String? = nil, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrdersExpandedListForProviderRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/expanded/list/for_provider_operators/v1",
            queryParams: [
                "provider_role": providerRole.map { .string($0.rawValue) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }, 
                "filter_draft_started_at_timestamp_lte": filterDraftStartedAtTimestampLte.map { .date($0) }, 
                "filter_draft_started_at_timestamp_gte": filterDraftStartedAtTimestampGte.map { .date($0) }, 
                "filter_staged_at_timestamp_lte": filterStagedAtTimestampLte.map { .date($0) }, 
                "filter_staged_at_timestamp_gte": filterStagedAtTimestampGte.map { .date($0) }, 
                "filter_in_progress_at_timestamp_lte": filterInProgressAtTimestampLte.map { .date($0) }, 
                "filter_in_progress_at_timestamp_gte": filterInProgressAtTimestampGte.map { .date($0) }, 
                "filter_completed_at_timestamp_lte": filterCompletedAtTimestampLte.map { .date($0) }, 
                "filter_completed_at_timestamp_gte": filterCompletedAtTimestampGte.map { .date($0) }, 
                "filter_cancelled_at_timestamp_lte": filterCancelledAtTimestampLte.map { .date($0) }, 
                "filter_cancelled_at_timestamp_gte": filterCancelledAtTimestampGte.map { .date($0) }, 
                "filter_exception_at_timestamp_lte": filterExceptionAtTimestampLte.map { .date($0) }, 
                "filter_exception_at_timestamp_gte": filterExceptionAtTimestampGte.map { .date($0) }, 
                "filter_executor_org_id": filterExecutorOrgId.map { .string($0) }, 
                "filter_coordinator_org_id": filterCoordinatorOrgId.map { .string($0) }, 
                "filter_shipper_org_id": filterShipperOrgId.map { .string($0) }, 
                "filter_off_chrt_shipper_org_id": filterOffChrtShipperOrgId.map { .string($0) }, 
                "filter_coordinator_department_id": filterCoordinatorDepartmentId.map { .string($0) }, 
                "filter_coordinator_assigned_user_ids": filterCoordinatorAssignedUserIds.map { .string($0) }, 
                "filter_coordinator_label": filterCoordinatorLabel.map { .string($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersExpandedListForProviderRes.self
        )
    }

    /// Lists expanded orders for shipper operators with filtering, sorting, pagination, and optional search. | authz: allowed_org_types=[shipper], min_org_role=operator | (OrderAndTaskGroupExpandedReq) -> (OrdersExpandedListForShipperRes)
    ///
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter search: Full-text search query (searches order short_id and off_chrt_reference_id)
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForShipperOperatorsV1(sortBy: OrderSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterStatus: OrderStatusEnum1? = nil, filterDraftStartedAtTimestampLte: Date? = nil, filterDraftStartedAtTimestampGte: Date? = nil, filterStagedAtTimestampLte: Date? = nil, filterStagedAtTimestampGte: Date? = nil, filterInProgressAtTimestampLte: Date? = nil, filterInProgressAtTimestampGte: Date? = nil, filterCompletedAtTimestampLte: Date? = nil, filterCompletedAtTimestampGte: Date? = nil, filterCancelledAtTimestampLte: Date? = nil, filterCancelledAtTimestampGte: Date? = nil, filterExceptionAtTimestampLte: Date? = nil, filterExceptionAtTimestampGte: Date? = nil, filterExecutorOrgId: String? = nil, filterCoordinatorOrgId: String? = nil, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrdersExpandedListForShipperRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/expanded/list/for_shipper_operators/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }, 
                "filter_draft_started_at_timestamp_lte": filterDraftStartedAtTimestampLte.map { .date($0) }, 
                "filter_draft_started_at_timestamp_gte": filterDraftStartedAtTimestampGte.map { .date($0) }, 
                "filter_staged_at_timestamp_lte": filterStagedAtTimestampLte.map { .date($0) }, 
                "filter_staged_at_timestamp_gte": filterStagedAtTimestampGte.map { .date($0) }, 
                "filter_in_progress_at_timestamp_lte": filterInProgressAtTimestampLte.map { .date($0) }, 
                "filter_in_progress_at_timestamp_gte": filterInProgressAtTimestampGte.map { .date($0) }, 
                "filter_completed_at_timestamp_lte": filterCompletedAtTimestampLte.map { .date($0) }, 
                "filter_completed_at_timestamp_gte": filterCompletedAtTimestampGte.map { .date($0) }, 
                "filter_cancelled_at_timestamp_lte": filterCancelledAtTimestampLte.map { .date($0) }, 
                "filter_cancelled_at_timestamp_gte": filterCancelledAtTimestampGte.map { .date($0) }, 
                "filter_exception_at_timestamp_lte": filterExceptionAtTimestampLte.map { .date($0) }, 
                "filter_exception_at_timestamp_gte": filterExceptionAtTimestampGte.map { .date($0) }, 
                "filter_executor_org_id": filterExecutorOrgId.map { .string($0) }, 
                "filter_coordinator_org_id": filterCoordinatorOrgId.map { .string($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersExpandedListForShipperRes.self
        )
    }
}