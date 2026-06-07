import Foundation

public final class TaskGroupsExpandedClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves an expanded task group with optional related data for executor operators (the provider org doing the work on this task group). | authz_personas=[executor_org_operators] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpanded)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forExecutorOperatorsV1(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpanded {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/expanded/for_executor_operators/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupExpanded.self
        )
    }

    /// Retrieves an expanded task group with optional related data for the driver assigned to it (a driver of the executor provider org). | authz_personas=[driver_for_executor] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpanded)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forDriverForExecutorV1(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpanded {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/expanded/for_driver_for_executor/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupExpanded.self
        )
    }

    /// Retrieves an expanded task group with optional related data for shipper operators. | authz_personas=[shipper_org_operators] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpanded)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forShipperOperatorsV1(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpanded {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/expanded/for_shipper_operators/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupExpanded.self
        )
    }

    /// Retrieves an expanded task group with optional related data for coordinator operators (the provider org coordinating the order). | authz_personas=[coordinator_org_operators] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpanded)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forCoordinatorOperatorsV1(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpanded {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/expanded/for_coordinator_operators/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupExpanded.self
        )
    }

    /// Lists expanded task groups where the caller's provider org is the executor. Filtering, sorting, pagination, optional full-text search. | authz_personas=[executor_org_operators] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpandedListRes)
    ///
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter search: Full-text search query (searches order_short_id, order_off_chrt_reference_id, flight_number)
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForExecutorOperatorsV1(sortBy: TaskGroupSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterStatus: TaskGroupStatusEnum1? = nil, filterDraftStartedAtTimestampLte: Date? = nil, filterDraftStartedAtTimestampGte: Date? = nil, filterStagedAtTimestampLte: Date? = nil, filterStagedAtTimestampGte: Date? = nil, filterInProgressAtTimestampLte: Date? = nil, filterInProgressAtTimestampGte: Date? = nil, filterCompletedAtTimestampLte: Date? = nil, filterCompletedAtTimestampGte: Date? = nil, filterSkippedAtTimestampLte: Date? = nil, filterSkippedAtTimestampGte: Date? = nil, filterCancelledAtTimestampLte: Date? = nil, filterCancelledAtTimestampGte: Date? = nil, filterExceptionAtTimestampLte: Date? = nil, filterExceptionAtTimestampGte: Date? = nil, filterDriverId: String? = nil, filterCoordinatorOrgId: String? = nil, filterShipperOrgId: String? = nil, filterOffChrtShipperOrgId: String? = nil, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpandedListRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/expanded/list/for_executor_operators/v1",
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
                "filter_skipped_at_timestamp_lte": filterSkippedAtTimestampLte.map { .date($0) }, 
                "filter_skipped_at_timestamp_gte": filterSkippedAtTimestampGte.map { .date($0) }, 
                "filter_cancelled_at_timestamp_lte": filterCancelledAtTimestampLte.map { .date($0) }, 
                "filter_cancelled_at_timestamp_gte": filterCancelledAtTimestampGte.map { .date($0) }, 
                "filter_exception_at_timestamp_lte": filterExceptionAtTimestampLte.map { .date($0) }, 
                "filter_exception_at_timestamp_gte": filterExceptionAtTimestampGte.map { .date($0) }, 
                "filter_driver_id": filterDriverId.map { .string($0) }, 
                "filter_coordinator_org_id": filterCoordinatorOrgId.map { .string($0) }, 
                "filter_shipper_org_id": filterShipperOrgId.map { .string($0) }, 
                "filter_off_chrt_shipper_org_id": filterOffChrtShipperOrgId.map { .string($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupExpandedListRes.self
        )
    }

    /// Lists expanded task groups assigned to the caller (a driver of the executor provider) with filtering, sorting, pagination, and optional full-text search. | authz_personas=[driver_for_executor] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpandedListRes)
    ///
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter search: Full-text search query (searches order_short_id, order_off_chrt_reference_id, flight_number)
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForDriverForExecutorV1(sortBy: TaskGroupSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterStatus: TaskGroupStatusEnum1? = nil, filterDraftStartedAtTimestampLte: Date? = nil, filterDraftStartedAtTimestampGte: Date? = nil, filterStagedAtTimestampLte: Date? = nil, filterStagedAtTimestampGte: Date? = nil, filterInProgressAtTimestampLte: Date? = nil, filterInProgressAtTimestampGte: Date? = nil, filterCompletedAtTimestampLte: Date? = nil, filterCompletedAtTimestampGte: Date? = nil, filterSkippedAtTimestampLte: Date? = nil, filterSkippedAtTimestampGte: Date? = nil, filterCancelledAtTimestampLte: Date? = nil, filterCancelledAtTimestampGte: Date? = nil, filterExceptionAtTimestampLte: Date? = nil, filterExceptionAtTimestampGte: Date? = nil, filterCoordinatorOrgId: String? = nil, filterShipperOrgId: String? = nil, filterOffChrtShipperOrgId: String? = nil, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpandedListRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/expanded/list/for_driver_for_executor/v1",
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
                "filter_skipped_at_timestamp_lte": filterSkippedAtTimestampLte.map { .date($0) }, 
                "filter_skipped_at_timestamp_gte": filterSkippedAtTimestampGte.map { .date($0) }, 
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
            responseType: TaskGroupExpandedListRes.self
        )
    }
}