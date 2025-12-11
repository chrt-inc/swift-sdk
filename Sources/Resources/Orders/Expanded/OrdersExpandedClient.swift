import Foundation

public final class OrdersExpandedClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves an expanded order with optional related data for shipper operators. | authz_personas=[shipper_org_operators] | (OrderAndTaskGroupExpandedReq) -> (OrderExpanded)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forShipperOperatorsV1(orderIdOrShortId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrderExpanded {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/expanded/for_shipper_operators/v1/\(orderIdOrShortId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderExpanded.self
        )
    }

    /// Retrieves an expanded order with optional related data for forwarder operators. | authz_personas=[forwarder_org_operators] | (OrderAndTaskGroupExpandedReq) -> (OrderExpanded)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forForwarderOperatorsV1(orderIdOrShortId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrderExpanded {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/expanded/for_forwarder_operators/v1/\(orderIdOrShortId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderExpanded.self
        )
    }

    /// Lists expanded orders for forwarder operators with filtering, sorting, and pagination. | authz: allowed_org_types=[forwarder], min_org_role=operator | (OrderAndTaskGroupExpandedReq) -> (OrdersExpandedListRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForForwarderOperatorsV1(sortBy: OrderSortByEnum? = nil, sortOrder: ExpandedListForForwarderOperatorsV1RequestSortOrder? = nil, page: Int? = nil, pageSize: Int? = nil, filterStatus: OrderStatusEnum1? = nil, filterDraftStartedAtTimestampLte: Date? = nil, filterDraftStartedAtTimestampGte: Date? = nil, filterStagedAtTimestampLte: Date? = nil, filterStagedAtTimestampGte: Date? = nil, filterInProgressAtTimestampLte: Date? = nil, filterInProgressAtTimestampGte: Date? = nil, filterCompletedAtTimestampLte: Date? = nil, filterCompletedAtTimestampGte: Date? = nil, filterExceptionAtTimestampLte: Date? = nil, filterExceptionAtTimestampGte: Date? = nil, filterOrderCancelledAtTimestampLte: Date? = nil, filterOrderCancelledAtTimestampGte: Date? = nil, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrdersExpandedListRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/expanded/list/for_forwarder_operators/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
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
                "filter_order_cancelled_at_timestamp_gte": filterOrderCancelledAtTimestampGte.map { .date($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersExpandedListRes.self
        )
    }

    /// Lists expanded orders for shipper operators with filtering, sorting, and pagination. | authz: allowed_org_types=[shipper], min_org_role=operator | (OrderAndTaskGroupExpandedReq) -> (OrdersExpandedListRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForShipperOperatorsV1(sortBy: OrderSortByEnum? = nil, sortOrder: ExpandedListForShipperOperatorsV1RequestSortOrder? = nil, page: Int? = nil, pageSize: Int? = nil, filterStatus: OrderStatusEnum1? = nil, filterDraftStartedAtTimestampLte: Date? = nil, filterDraftStartedAtTimestampGte: Date? = nil, filterStagedAtTimestampLte: Date? = nil, filterStagedAtTimestampGte: Date? = nil, filterInProgressAtTimestampLte: Date? = nil, filterInProgressAtTimestampGte: Date? = nil, filterCompletedAtTimestampLte: Date? = nil, filterCompletedAtTimestampGte: Date? = nil, filterExceptionAtTimestampLte: Date? = nil, filterExceptionAtTimestampGte: Date? = nil, filterOrderCancelledAtTimestampLte: Date? = nil, filterOrderCancelledAtTimestampGte: Date? = nil, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrdersExpandedListRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/expanded/list/for_shipper_operators/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
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
                "filter_order_cancelled_at_timestamp_gte": filterOrderCancelledAtTimestampGte.map { .date($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersExpandedListRes.self
        )
    }
}