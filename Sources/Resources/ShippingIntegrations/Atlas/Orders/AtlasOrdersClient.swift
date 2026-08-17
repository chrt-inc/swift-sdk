import Foundation

public final class AtlasOrdersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns one mirrored Atlas order by the provider's own order ID with the provider organization expanded. | () -> (AtlasOrderExpanded1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.atlas.orders.detailByIntegrationOrderIdV1(
    ///         providerOrgId: "provider_org_id",
    ///         integrationOrderId: "integration_order_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter providerOrgId: CHRT org ID of the courier whose Atlas instance holds the order
    /// - Parameter integrationOrderId: Atlas's own ID for the order, as carried on a unified order row
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func detailByIntegrationOrderIdV1(providerOrgId: String, integrationOrderId: String, requestOptions: RequestOptions? = nil) async throws -> AtlasOrderExpanded1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/atlas/orders/by_integration_order_id/detail/v1/\(providerOrgId)/\(integrationOrderId)",
            requestOptions: requestOptions,
            responseType: AtlasOrderExpanded1.self
        )
    }

    /// Returns one mirrored Atlas order by its Mongo ObjectId with the provider organization expanded. | () -> (AtlasOrderExpanded1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.atlas.orders.detailV1(id: "id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter id: Mongo ObjectId of the mirror document. Atlas's own order ID is the integration_order_id, accepted by the by_integration_order_id route.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func detailV1(id: String, requestOptions: RequestOptions? = nil) async throws -> AtlasOrderExpanded1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/atlas/orders/detail/v1/\(id)",
            requestOptions: requestOptions,
            responseType: AtlasOrderExpanded1.self
        )
    }

    /// Returns a paginated list of mirrored Atlas orders with provider organizations expanded, filtering, sorting, pagination, and optional search. | (AtlasOrderListFilters) -> (AtlasOrderListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.atlas.orders.listV1(
    ///         sortBy: .mirroredAtTimestamp,
    ///         sortOrder: .asc,
    ///         limit: 1,
    ///         page: 1,
    ///         search: "search",
    ///         filterProviderOrgId: [
    ///             "filter_provider_org_id"
    ///         ],
    ///         filterIntegrationOrderId: "filter_integration_order_id",
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
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort direction
    /// - Parameter limit: Max items to return
    /// - Parameter page: Page number (1-indexed)
    /// - Parameter search: Search Atlas order IDs.
    /// - Parameter filterProviderOrgId: Filter by provider org ID(s)
    /// - Parameter filterIntegrationOrderId: Filter by Atlas's exact order ID
    /// - Parameter filterMirroredAtTimestampGte: Filter mirrored_at_timestamp >= value
    /// - Parameter filterMirroredAtTimestampLte: Filter mirrored_at_timestamp <= value
    /// - Parameter filterCreatedAtTimestampGte: Filter created_at_timestamp >= value
    /// - Parameter filterCreatedAtTimestampLte: Filter created_at_timestamp <= value
    /// - Parameter filterUpdatedAtTimestampGte: Filter updated_at_timestamp >= value
    /// - Parameter filterUpdatedAtTimestampLte: Filter updated_at_timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: AtlasOrderSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, limit: Int? = nil, page: Int? = nil, search: String? = nil, filterProviderOrgId: [String]? = nil, filterIntegrationOrderId: String? = nil, filterMirroredAtTimestampGte: Date? = nil, filterMirroredAtTimestampLte: Date? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterUpdatedAtTimestampGte: Date? = nil, filterUpdatedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> AtlasOrderListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/atlas/orders/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "limit": limit.map { .int($0) }, 
                "page": page.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_provider_org_id": filterProviderOrgId.map { .stringArray($0) }, 
                "filter_integration_order_id": filterIntegrationOrderId.map { .string($0) }, 
                "filter_mirrored_at_timestamp_gte": filterMirroredAtTimestampGte.map { .date($0) }, 
                "filter_mirrored_at_timestamp_lte": filterMirroredAtTimestampLte.map { .date($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_updated_at_timestamp_gte": filterUpdatedAtTimestampGte.map { .date($0) }, 
                "filter_updated_at_timestamp_lte": filterUpdatedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: AtlasOrderListRes.self
        )
    }

    /// Fetches and mirrors one Atlas order by the provider's own order ID. | authz: min_org_role=operator | (AtlasOrderSyncOneReq) -> (AtlasOrder1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.atlas.orders.syncOneV1(request: .init(
    ///         integrationOrderId: "integration_order_id",
    ///         providerOrgId: "provider_org_id"
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func syncOneV1(request: Requests.AtlasOrderSyncOneReq, requestOptions: RequestOptions? = nil) async throws -> AtlasOrder1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping_integrations/atlas/orders/sync_one/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: AtlasOrder1.self
        )
    }

    /// Returns distinct Atlas integration order IDs matching the query via case-insensitive regex within the caller's organization. | authz: caller's organization scope | () -> (list[ShippingIntegrationOrderTypeaheadResult])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.atlas.orders.typeaheadV1(
    ///         query: "query",
    ///         limit: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter query: Typeahead search query
    /// - Parameter limit: Max results
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typeaheadV1(query: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [ShippingIntegrationOrderTypeaheadResult] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/atlas/orders/typeahead/v1",
            queryParams: [
                "query": .string(query), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [ShippingIntegrationOrderTypeaheadResult].self
        )
    }
}