import Foundation

public final class OrdersExpandedClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves an expanded order with optional related data for shipper operators. | authz_personas=[shipper_org_operators] | (OrderAndTaskGroupExpandedReq) -> (OrderExpanded)
    ///
    /// - Parameter orderRef: Order ID, short ID, or off-chrt reference ID
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forShipperOperatorsV1(orderRef: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrderExpanded {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/expanded/for_shipper_operators/v1/\(orderRef)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderExpanded.self
        )
    }

    /// Retrieves an expanded order with optional related data for forwarder operators. | authz_personas=[forwarder_org_operators] | (OrderAndTaskGroupExpandedReq) -> (OrderExpanded)
    ///
    /// - Parameter orderRef: Order ID, short ID, or off-chrt reference ID
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forForwarderOperatorsV1(orderRef: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrderExpanded {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/expanded/for_forwarder_operators/v1/\(orderRef)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderExpanded.self
        )
    }

    /// Lists expanded orders for forwarder operators with filtering, sorting, pagination, and optional search. | authz: allowed_org_types=[forwarder], min_org_role=operator | (OrderAndTaskGroupExpandedReq) -> (OrdersExpandedListRes)
    ///
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter search: Full-text search query (searches order short_id and off_chrt_reference_id)
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForForwarderOperatorsV1(sortBy: OrderSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterStatus: OrderStatusEnum1? = nil, filterDraftStartedAtTimestampLte: Date? = nil, filterDraftStartedAtTimestampGte: Date? = nil, filterStagedAtTimestampLte: Date? = nil, filterStagedAtTimestampGte: Date? = nil, filterInProgressAtTimestampLte: Date? = nil, filterInProgressAtTimestampGte: Date? = nil, filterCompletedAtTimestampLte: Date? = nil, filterCompletedAtTimestampGte: Date? = nil, filterExceptionAtTimestampLte: Date? = nil, filterExceptionAtTimestampGte: Date? = nil, filterOrderCancelledAtTimestampLte: Date? = nil, filterOrderCancelledAtTimestampGte: Date? = nil, filterOrderCancelled: Bool? = nil, filterCourierOrgId: String? = nil, filterShipperOrgId: String? = nil, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrdersExpandedListRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/expanded/list/for_forwarder_operators/v1",
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
                "filter_exception_at_timestamp_lte": filterExceptionAtTimestampLte.map { .date($0) }, 
                "filter_exception_at_timestamp_gte": filterExceptionAtTimestampGte.map { .date($0) }, 
                "filter_order_cancelled_at_timestamp_lte": filterOrderCancelledAtTimestampLte.map { .date($0) }, 
                "filter_order_cancelled_at_timestamp_gte": filterOrderCancelledAtTimestampGte.map { .date($0) }, 
                "filter_order_cancelled": filterOrderCancelled.map { .bool($0) }, 
                "filter_courier_org_id": filterCourierOrgId.map { .string($0) }, 
                "filter_shipper_org_id": filterShipperOrgId.map { .string($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersExpandedListRes.self
        )
    }

    /// Lists expanded orders for shipper operators with filtering, sorting, pagination, and optional search. | authz: allowed_org_types=[shipper], min_org_role=operator | (OrderAndTaskGroupExpandedReq) -> (OrdersExpandedListRes)
    ///
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter search: Full-text search query (searches order short_id and off_chrt_reference_id)
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForShipperOperatorsV1(sortBy: OrderSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterStatus: OrderStatusEnum1? = nil, filterDraftStartedAtTimestampLte: Date? = nil, filterDraftStartedAtTimestampGte: Date? = nil, filterStagedAtTimestampLte: Date? = nil, filterStagedAtTimestampGte: Date? = nil, filterInProgressAtTimestampLte: Date? = nil, filterInProgressAtTimestampGte: Date? = nil, filterCompletedAtTimestampLte: Date? = nil, filterCompletedAtTimestampGte: Date? = nil, filterExceptionAtTimestampLte: Date? = nil, filterExceptionAtTimestampGte: Date? = nil, filterOrderCancelledAtTimestampLte: Date? = nil, filterOrderCancelledAtTimestampGte: Date? = nil, filterOrderCancelled: Bool? = nil, filterCourierOrgId: String? = nil, filterForwarderOrgId: String? = nil, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrdersExpandedListRes {
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
                "filter_exception_at_timestamp_lte": filterExceptionAtTimestampLte.map { .date($0) }, 
                "filter_exception_at_timestamp_gte": filterExceptionAtTimestampGte.map { .date($0) }, 
                "filter_order_cancelled_at_timestamp_lte": filterOrderCancelledAtTimestampLte.map { .date($0) }, 
                "filter_order_cancelled_at_timestamp_gte": filterOrderCancelledAtTimestampGte.map { .date($0) }, 
                "filter_order_cancelled": filterOrderCancelled.map { .bool($0) }, 
                "filter_courier_org_id": filterCourierOrgId.map { .string($0) }, 
                "filter_forwarder_org_id": filterForwarderOrgId.map { .string($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersExpandedListRes.self
        )
    }

    /// Returns distinct short_id and off_chrt_reference_id values matching the query via case-insensitive regex. Searches non-draft orders visible to the caller's org. | authz: allowed_org_types=[forwarder, shipper], min_org_role=operator | () -> (list[OrderTypeaheadResult])
    ///
    /// - Parameter query: Typeahead search query
    /// - Parameter limit: Max results per field
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typeaheadV1(query: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [OrderTypeaheadResult] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/orders/expanded/typeahead/v1",
            queryParams: [
                "query": .string(query), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [OrderTypeaheadResult].self
        )
    }
}