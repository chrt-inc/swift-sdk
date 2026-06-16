import Foundation

public final class OrdersAndOrderGroupsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists the caller's order groups with member orders nested and a derived shipping-status rollup. Filtering, sorting, and pagination use stored group fields. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (OrderGroupExpandedListRes)
    ///
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter filterBillingReviewStatus: Filter by the group's billing-review status(es).
    /// - Parameter filterOrderId: Filter to groups containing this order id.
    /// - Parameter filterCreatedAtTimestampGte: Filter created_at_timestamp >= value (inclusive).
    /// - Parameter filterCreatedAtTimestampLte: Filter created_at_timestamp <= value (inclusive).
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func orderGroupsListV1(sortBy: OrderGroupExpandedSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterBillingReviewStatus: BillingReviewStatusEnum? = nil, filterOrderId: String? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> OrderGroupExpandedListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/orders_and_order_groups/order_groups/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_billing_review_status": filterBillingReviewStatus.map { .string($0.rawValue) }, 
                "filter_order_id": filterOrderId.map { .string($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: OrderGroupExpandedListRes.self
        )
    }

    /// Lists the caller's standalone orders (provider party, non-DRAFT, not in any of the caller's order groups), each with the caller org's billing-review status. Filtering, sorting, and pagination use stored Order fields. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (UngroupedOrderListRes)
    ///
    /// - Parameter filterShippingStatus: Filter by order status(es).
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ungroupedOrdersListV1(filterShippingStatus: OrderStatusEnum1? = nil, sortBy: UngroupedOrderSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> UngroupedOrderListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/orders_and_order_groups/ungrouped_orders/list/v1",
            queryParams: [
                "filter_shipping_status": filterShippingStatus.map { .string($0.rawValue) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: UngroupedOrderListRes.self
        )
    }
}