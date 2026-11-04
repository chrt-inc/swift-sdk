import Foundation

public final class AlvysOrdersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns one mirrored Alvys load by the provider's own load ID. | () -> (AlvysOrder1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.alvys.orders.detailByIntegrationOrderIdV1(
    ///         orgId: "org_id",
    ///         integrationOrderId: "integration_order_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter orgId: CHRT org ID of the other party (executor if caller is coordinator, coordinator if caller is executor)
    /// - Parameter integrationOrderId: The Alvys load Id (32 hex), as carried on a unified order row
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func detailByIntegrationOrderIdV1(orgId: String, integrationOrderId: String, requestOptions: RequestOptions? = nil) async throws -> AlvysOrder1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/alvys/orders/by_integration_order_id/detail/v1/\(orgId)/\(integrationOrderId)",
            requestOptions: requestOptions,
            responseType: AlvysOrder1.self
        )
    }

    /// Returns one mirrored Alvys load by its Mongo ObjectId. | () -> (AlvysOrder1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.alvys.orders.detailV1(id: "id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter id: Mongo ObjectId of the mirror document. The Alvys load Id is the integration_order_id, accepted by the by_integration_order_id route.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func detailV1(id: String, requestOptions: RequestOptions? = nil) async throws -> AlvysOrder1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/alvys/orders/detail/v1/\(id)",
            requestOptions: requestOptions,
            responseType: AlvysOrder1.self
        )
    }

    /// Lists mirrored Alvys loads for the caller's organization with filtering, sorting, and pagination. | () -> (AlvysOrderListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.alvys.orders.listV1(
    ///         sortBy: .mirroredAtTimestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1,
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
    /// - Parameter filterProviderOrgId: Filter by provider org ID(s)
    /// - Parameter filterIntegrationOrderId: Filter by the exact Alvys load Id
    /// - Parameter filterProviderStatusRaw: Filter by Alvys' own load status, e.g. Open or Invoiced
    /// - Parameter filterMirroredAtTimestampGte: Filter mirrored_at_timestamp >= value
    /// - Parameter filterMirroredAtTimestampLte: Filter mirrored_at_timestamp <= value
    /// - Parameter filterCreatedAtTimestampGte: Filter created_at_timestamp >= value
    /// - Parameter filterCreatedAtTimestampLte: Filter created_at_timestamp <= value
    /// - Parameter filterUpdatedAtTimestampGte: Filter updated_at_timestamp >= value
    /// - Parameter filterUpdatedAtTimestampLte: Filter updated_at_timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: AlvysOrderSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterProviderOrgId: [String]? = nil, filterIntegrationOrderId: String? = nil, filterProviderStatusRaw: String? = nil, filterMirroredAtTimestampGte: Date? = nil, filterMirroredAtTimestampLte: Date? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterUpdatedAtTimestampGte: Date? = nil, filterUpdatedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> AlvysOrderListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/alvys/orders/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
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
            responseType: AlvysOrderListRes.self
        )
    }

    /// Fetches and mirrors one Alvys load by the provider's own load ID, updating the unified order list alongside it. | authz: min_org_role=operator | (AlvysOrderSyncOneReq) -> (AlvysOrder1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.alvys.orders.syncOneV1(request: .init(
    ///         integrationOrderId: "integration_order_id",
    ///         providerOrgId: "provider_org_id"
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func syncOneV1(request: Requests.AlvysOrderSyncOneReq, requestOptions: RequestOptions? = nil) async throws -> AlvysOrder1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping_integrations/alvys/orders/sync_one/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: AlvysOrder1.self
        )
    }
}