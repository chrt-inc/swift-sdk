import Foundation

public final class XceleratorOrdersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns one mirrored Xcelerator order by the provider's own order ID with the provider organization expanded. | () -> (XceleratorOrderExpanded1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.xcelerator.orders.detailByIntegrationOrderIdV1(
    ///         providerOrgId: "provider_org_id",
    ///         integrationOrderId: "integration_order_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter providerOrgId: CHRT org ID of the courier whose Xcelerator instance holds the order
    /// - Parameter integrationOrderId: Xcelerator's own ID for the order (its OrderTrackingId), as carried on a unified order row
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func detailByIntegrationOrderIdV1(providerOrgId: String, integrationOrderId: String, requestOptions: RequestOptions? = nil) async throws -> XceleratorOrderExpanded1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/xcelerator/orders/by_integration_order_id/detail/v1/\(providerOrgId)/\(integrationOrderId)",
            requestOptions: requestOptions,
            responseType: XceleratorOrderExpanded1.self
        )
    }

    /// Returns one mirrored Xcelerator order by its Mongo ObjectId with the provider organization expanded. | () -> (XceleratorOrderExpanded1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.xcelerator.orders.detailV1(id: "id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter id: Mongo ObjectId of the mirror document. Xcelerator's own order ID is the integration_order_id, accepted by the by_integration_order_id route.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func detailV1(id: String, requestOptions: RequestOptions? = nil) async throws -> XceleratorOrderExpanded1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/xcelerator/orders/detail/v1/\(id)",
            requestOptions: requestOptions,
            responseType: XceleratorOrderExpanded1.self
        )
    }

    /// Lists mirrored Xcelerator orders with provider organizations expanded, filtering, sorting, pagination, and optional search. | () -> (XceleratorOrderListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.xcelerator.orders.listV1(
    ///         sortBy: .mirroredAtTimestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1,
    ///         search: "search",
    ///         filterProviderOrgId: [
    ///             "filter_provider_org_id"
    ///         ],
    ///         filterIntegrationOrderId: "filter_integration_order_id",
    ///         filterProviderStatusRaw: "filter_provider_status_raw",
    ///         filterMirroredAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterMirroredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterUpdatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterUpdatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter search: Search Xcelerator order IDs.
    /// - Parameter filterProviderOrgId: Filter by provider org ID(s)
    /// - Parameter filterIntegrationOrderId: Filter by Xcelerator's exact order tracking ID
    /// - Parameter filterProviderStatusRaw: Filter by Xcelerator's raw status letter
    /// - Parameter filterMirroredAtTimestampGte: Filter mirrored_at_timestamp >= value
    /// - Parameter filterMirroredAtTimestampLte: Filter mirrored_at_timestamp <= value
    /// - Parameter filterCreatedAtTimestampGte: Filter created_at_timestamp >= value
    /// - Parameter filterCreatedAtTimestampLte: Filter created_at_timestamp <= value
    /// - Parameter filterUpdatedAtTimestampGte: Filter updated_at_timestamp >= value
    /// - Parameter filterUpdatedAtTimestampLte: Filter updated_at_timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: XceleratorOrderSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterProviderOrgId: [String]? = nil, filterIntegrationOrderId: String? = nil, filterProviderStatusRaw: String? = nil, filterMirroredAtTimestampGte: Date? = nil, filterMirroredAtTimestampLte: Date? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterUpdatedAtTimestampGte: Date? = nil, filterUpdatedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> XceleratorOrderListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/xcelerator/orders/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_provider_org_id": filterProviderOrgId.map { .stringArray($0) }, 
                "filter_integration_order_id": filterIntegrationOrderId.map { .string($0) }, 
                "filter_provider_status_raw": filterProviderStatusRaw.map { .string($0) }, 
                "filter_mirrored_at_timestamp_gte": filterMirroredAtTimestampGte.map { .date($0) }, 
                "filter_mirrored_at_timestamp_lte": filterMirroredAtTimestampLte.map { .date($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_updated_at_timestamp_gte": filterUpdatedAtTimestampGte.map { .date($0) }, 
                "filter_updated_at_timestamp_lte": filterUpdatedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: XceleratorOrderListRes.self
        )
    }

    /// Fetches and mirrors one Xcelerator order by the provider's own order ID. | authz: min_org_role=operator | (XceleratorOrderSyncOneReq) -> (XceleratorOrder1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.xcelerator.orders.syncOneV1(request: .init(
    ///         integrationOrderId: "integration_order_id",
    ///         providerOrgId: "provider_org_id"
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func syncOneV1(request: Requests.XceleratorOrderSyncOneReq, requestOptions: RequestOptions? = nil) async throws -> XceleratorOrder1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping_integrations/xcelerator/orders/sync_one/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: XceleratorOrder1.self
        )
    }
}