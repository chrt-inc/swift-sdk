import Foundation

public final class TaskGroupsExpandedClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves an expanded task group with optional related data for courier operators. | authz_personas=[courier_org_operators] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpanded)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forCourierOperatorsV1(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpanded {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/expanded/for_courier_operators/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupExpanded.self
        )
    }

    /// Retrieves an expanded task group with optional related data for courier drivers. | authz_personas=[courier_driver] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpanded)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forCourierDriverV1(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpanded {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/expanded/for_courier_driver/v1/\(taskGroupId)",
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

    /// Retrieves an expanded task group with optional related data for forwarder operators. | authz_personas=[forwarder_org_operators] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpanded)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forForwarderOperatorsV1(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpanded {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/expanded/for_forwarder_operators/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupExpanded.self
        )
    }

    /// Lists expanded task groups for courier operators with filtering, sorting, pagination, and optional full-text search. | authz_personas=[courier_org_operators] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpandedListRes)
    ///
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter search: Full-text search query (searches order_short_id, order_off_chrt_reference_id, flight_number)
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForCourierOperatorsV1(sortBy: TaskGroupSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterStatus: TaskGroupStatusEnum1? = nil, filterDraftStartedAtTimestampLte: Date? = nil, filterDraftStartedAtTimestampGte: Date? = nil, filterStagedAtTimestampLte: Date? = nil, filterStagedAtTimestampGte: Date? = nil, filterInProgressAtTimestampLte: Date? = nil, filterInProgressAtTimestampGte: Date? = nil, filterCompletedAtTimestampLte: Date? = nil, filterCompletedAtTimestampGte: Date? = nil, filterSkippedAtTimestampLte: Date? = nil, filterSkippedAtTimestampGte: Date? = nil, filterExceptionAtTimestampLte: Date? = nil, filterExceptionAtTimestampGte: Date? = nil, filterOrderCancelled: Bool? = nil, filterDriverId: String? = nil, filterForwarderOrgId: String? = nil, filterShipperOrgId: String? = nil, filterOffChrtShipperOrgId: String? = nil, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpandedListRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/expanded/list/for_courier_operators/v1",
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
                "filter_exception_at_timestamp_lte": filterExceptionAtTimestampLte.map { .date($0) }, 
                "filter_exception_at_timestamp_gte": filterExceptionAtTimestampGte.map { .date($0) }, 
                "filter_order_cancelled": filterOrderCancelled.map { .bool($0) }, 
                "filter_driver_id": filterDriverId.map { .string($0) }, 
                "filter_forwarder_org_id": filterForwarderOrgId.map { .string($0) }, 
                "filter_shipper_org_id": filterShipperOrgId.map { .string($0) }, 
                "filter_off_chrt_shipper_org_id": filterOffChrtShipperOrgId.map { .string($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupExpandedListRes.self
        )
    }

    /// Lists expanded task groups for courier driver with filtering, sorting, pagination, and optional full-text search. | authz_personas=[courier_driver] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpandedListRes)
    ///
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter search: Full-text search query (searches order_short_id, order_off_chrt_reference_id, flight_number)
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForCourierDriverV1(sortBy: TaskGroupSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterStatus: TaskGroupStatusEnum1? = nil, filterDraftStartedAtTimestampLte: Date? = nil, filterDraftStartedAtTimestampGte: Date? = nil, filterStagedAtTimestampLte: Date? = nil, filterStagedAtTimestampGte: Date? = nil, filterInProgressAtTimestampLte: Date? = nil, filterInProgressAtTimestampGte: Date? = nil, filterCompletedAtTimestampLte: Date? = nil, filterCompletedAtTimestampGte: Date? = nil, filterSkippedAtTimestampLte: Date? = nil, filterSkippedAtTimestampGte: Date? = nil, filterExceptionAtTimestampLte: Date? = nil, filterExceptionAtTimestampGte: Date? = nil, filterOrderCancelled: Bool? = nil, filterForwarderOrgId: String? = nil, filterShipperOrgId: String? = nil, filterOffChrtShipperOrgId: String? = nil, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupExpandedListRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/expanded/list/for_courier_driver/v1",
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
                "filter_exception_at_timestamp_lte": filterExceptionAtTimestampLte.map { .date($0) }, 
                "filter_exception_at_timestamp_gte": filterExceptionAtTimestampGte.map { .date($0) }, 
                "filter_order_cancelled": filterOrderCancelled.map { .bool($0) }, 
                "filter_forwarder_org_id": filterForwarderOrgId.map { .string($0) }, 
                "filter_shipper_org_id": filterShipperOrgId.map { .string($0) }, 
                "filter_off_chrt_shipper_org_id": filterOffChrtShipperOrgId.map { .string($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupExpandedListRes.self
        )
    }

    /// Returns distinct order_short_id and order_off_chrt_reference_id values matching the query via case-insensitive regex. Searches non-draft task groups belonging to the caller's courier org. | authz: allowed_org_types=[courier], min_org_role=driver | () -> (list[TaskGroupTypeaheadResult])
    ///
    /// - Parameter query: Typeahead search query
    /// - Parameter limit: Max results per field
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typeaheadV1(query: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [TaskGroupTypeaheadResult] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/task_groups/expanded/typeahead/v1",
            queryParams: [
                "query": .string(query), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [TaskGroupTypeaheadResult].self
        )
    }
}