import Foundation

public final class ExpandedClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Fetches a single draft order with optional expanded related data. Any user in the org (with operator+ role) can access it. | (OrderAndTaskGroupExpandedReq) -> (OrderDraftExpanded)
    ///
    /// - Parameter orderRef: Order ID, short ID, or off-chrt reference ID
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func retrieveV1(orderRef: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrderDraftExpanded {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_drafts/expanded/retrieve/v1/\(orderRef)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderDraftExpanded.self
        )
    }

    /// Lists expanded draft orders for the organization with filtering, sorting, pagination, and optional search. | (OrderAndTaskGroupExpandedReq) -> (OrderDraftExpandedListRes)
    ///
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter search: Full-text search query (searches order short_id and off_chrt_reference_id)
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: OrderDraftSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterDraftStartedAtTimestampLte: Date? = nil, filterDraftStartedAtTimestampGte: Date? = nil, filterCourierOrgId: String? = nil, filterForwarderOrgId: String? = nil, filterShipperOrgId: String? = nil, filterOffChrtShipperOrgId: String? = nil, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrderDraftExpandedListRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_drafts/expanded/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .unknown($0) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_draft_started_at_timestamp_lte": filterDraftStartedAtTimestampLte.map { .date($0) }, 
                "filter_draft_started_at_timestamp_gte": filterDraftStartedAtTimestampGte.map { .date($0) }, 
                "filter_courier_org_id": filterCourierOrgId.map { .string($0) }, 
                "filter_forwarder_org_id": filterForwarderOrgId.map { .string($0) }, 
                "filter_shipper_org_id": filterShipperOrgId.map { .string($0) }, 
                "filter_off_chrt_shipper_org_id": filterOffChrtShipperOrgId.map { .string($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: OrderDraftExpandedListRes.self
        )
    }

    /// Returns distinct short_id and off_chrt_reference_id values matching the query via case-insensitive regex. Searches draft orders created by the caller's org. | authz: min_org_role=operator | () -> (list[OrderTypeaheadResult])
    ///
    /// - Parameter query: Typeahead search query
    /// - Parameter limit: Max results per field
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typeaheadV1(query: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [OrderTypeaheadResult] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/order_drafts/expanded/typeahead/v1",
            queryParams: [
                "query": .string(query), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [OrderTypeaheadResult].self
        )
    }
}