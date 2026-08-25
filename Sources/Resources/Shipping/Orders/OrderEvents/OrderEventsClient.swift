import Foundation

public final class OrderEventsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists event log entries for an order with organization and user display data hydrated, filtering, sorting, and pagination. | authz: min_org_role=administrator | authz_personas=[draft_creator_org_operator, coordinator_org_operators] | () -> (OrderEventListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.orderEvents.listV1(
    ///         orderId: "order_id",
    ///         sortBy: .timestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1,
    ///         filterAction: [
    ///             .shippingOrderDraftStarted
    ///         ],
    ///         filterUserId: "filter_user_id",
    ///         filterOrgId: "filter_org_id",
    ///         filterTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter filterAction: Filter by order event action(s)
    /// - Parameter filterUserId: Filter by actor user ID
    /// - Parameter filterOrgId: Filter by actor org ID
    /// - Parameter filterTimestampGte: Filter timestamp >= value
    /// - Parameter filterTimestampLte: Filter timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(orderId: String, sortBy: OrderEventSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterAction: [OrderEventActionEnum1]? = nil, filterUserId: String? = nil, filterOrgId: String? = nil, filterTimestampGte: Date? = nil, filterTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> OrderEventListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/orders/order_events/list/v1/\(orderId)",
            queryParams: [
                "sort_by": sortBy.map { .unknown($0) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_action": filterAction.map { .unknown($0) }, 
                "filter_user_id": filterUserId.map { .string($0) }, 
                "filter_org_id": filterOrgId.map { .string($0) }, 
                "filter_timestamp_gte": filterTimestampGte.map { .date($0) }, 
                "filter_timestamp_lte": filterTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: OrderEventListRes.self
        )
    }

    /// Retrieves a single order event log entry by its ID with organization and user name hydrated. | authz: min_org_role=administrator | authz_personas=[draft_creator_org_operator, coordinator_org_operators] | () -> (OrderEventExpanded1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.orderEvents.getV1(orderEventId: "order_event_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(orderEventId: String, requestOptions: RequestOptions? = nil) async throws -> OrderEventExpanded1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/orders/order_events/v1/\(orderEventId)",
            requestOptions: requestOptions,
            responseType: OrderEventExpanded1.self
        )
    }
}