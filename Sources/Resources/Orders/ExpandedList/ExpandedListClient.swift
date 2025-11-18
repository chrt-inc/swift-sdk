import Foundation

public final class ExpandedListClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves orders expanded list for the shipper organization with optional filters and related data. | (OrderExpandedForShipperReq) -> (OrdersExpandedForShipperRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postShipperExpandedListV1(page: Int? = nil, pageSize: Int? = nil, sortBy: OrderExpandedListSortFieldEnum? = nil, sortOrder: SortOrderEnum? = nil, filterDraftStartedAtGte: Date? = nil, filterDraftStartedAtLte: Date? = nil, filterStatuses: OrderStatusEnum1? = nil, filterOrderCancelled: Bool? = nil, request: OrderExpandedForShipperReq, requestOptions: RequestOptions? = nil) async throws -> OrdersExpandedForShipperRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/expanded/list/for_shipper/v1",
            queryParams: [
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "filter_draft_started_at_gte": filterDraftStartedAtGte.map { .date($0) }, 
                "filter_draft_started_at_lte": filterDraftStartedAtLte.map { .date($0) }, 
                "filter_statuses": filterStatuses.map { .string($0.rawValue) }, 
                "filter_order_cancelled": filterOrderCancelled.map { .bool($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersExpandedForShipperRes.self
        )
    }

    /// Retrieves orders expanded list for order creator org with optional filters, shipper includes, and exclusions. | (OrderExpandedForOrderCreatorReq) -> (OrdersExpandedForOrderCreatorRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postOrderCreatorExpandedListV1(page: Int? = nil, pageSize: Int? = nil, sortBy: OrderExpandedListSortFieldEnum? = nil, sortOrder: SortOrderEnum? = nil, filterDraftStartedAtGte: Date? = nil, filterDraftStartedAtLte: Date? = nil, filterStatuses: OrderStatusEnum1? = nil, filterOrderCancelled: Bool? = nil, includeShipperOrgIds: String? = nil, excludeShipperOrgIds: String? = nil, request: OrderExpandedForOrderCreatorReq, requestOptions: RequestOptions? = nil) async throws -> OrdersExpandedForOrderCreatorRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/expanded/list/for_order_creator/v1",
            queryParams: [
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "filter_draft_started_at_gte": filterDraftStartedAtGte.map { .date($0) }, 
                "filter_draft_started_at_lte": filterDraftStartedAtLte.map { .date($0) }, 
                "filter_statuses": filterStatuses.map { .string($0.rawValue) }, 
                "filter_order_cancelled": filterOrderCancelled.map { .bool($0) }, 
                "include_shipper_org_ids": includeShipperOrgIds.map { .string($0) }, 
                "exclude_shipper_org_ids": excludeShipperOrgIds.map { .string($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersExpandedForOrderCreatorRes.self
        )
    }
}