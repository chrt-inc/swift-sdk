import Foundation

public final class ExpandedClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Fetches a single draft order with optional expanded related data. Only the creator of the draft order can access it. | (OrderAndTaskGroupExpandedReq) -> (OrderDraftExpanded)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func retrieveV1(orderIdOrShortId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrderDraftExpanded {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/order_drafts/expanded/retrieve/v1/\(orderIdOrShortId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderDraftExpanded.self
        )
    }

    /// Lists expanded draft orders for the creator with filtering, sorting, and pagination. | (OrderAndTaskGroupExpandedReq) -> (OrderDraftExpandedListRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: OrderDraftSortByEnum? = nil, sortOrder: ExpandedListV1RequestSortOrder? = nil, page: Int? = nil, pageSize: Int? = nil, filterDraftStartedAtTimestampLte: Date? = nil, filterDraftStartedAtTimestampGte: Date? = nil, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrderDraftExpandedListRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/order_drafts/expanded/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .unknown($0) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_draft_started_at_timestamp_lte": filterDraftStartedAtTimestampLte.map { .date($0) }, 
                "filter_draft_started_at_timestamp_gte": filterDraftStartedAtTimestampGte.map { .date($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: OrderDraftExpandedListRes.self
        )
    }
}