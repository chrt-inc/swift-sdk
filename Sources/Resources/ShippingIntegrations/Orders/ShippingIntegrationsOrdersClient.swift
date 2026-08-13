import Foundation

public final class ShippingIntegrationsOrdersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns one unified shipping integration order by its Mongo ObjectId. | () -> (ShippingIntegrationOrder1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.orders.detailV1(id: "id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter id: Mongo ObjectId of the unified order document. The provider's own order ID is the integration_order_id field on the returned order.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func detailV1(id: String, requestOptions: RequestOptions? = nil) async throws -> ShippingIntegrationOrder1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/orders/detail/v1/\(id)",
            requestOptions: requestOptions,
            responseType: ShippingIntegrationOrder1.self
        )
    }

    /// Lists the caller's orders from every shipping integration with filtering, sorting, and pagination. | () -> (ShippingIntegrationOrderListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.orders.listV1(
    ///         sortBy: .orderedAtTimestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1,
    ///         filterShippingIntegration: [
    ///             .xcelerator
    ///         ],
    ///         filterProviderOrgId: [
    ///             "filter_provider_org_id"
    ///         ],
    ///         filterStatus: [
    ///             .staged
    ///         ],
    ///         filterIntegrationOrderId: "filter_integration_order_id",
    ///         filterReferenceNumber: "filter_reference_number",
    ///         filterOrderedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterOrderedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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
    /// - Parameter filterShippingIntegration: Filter by shipping integration(s)
    /// - Parameter filterProviderOrgId: Filter by provider org ID(s)
    /// - Parameter filterStatus: Filter by unified status(es)
    /// - Parameter filterIntegrationOrderId: Filter by the provider's exact order ID
    /// - Parameter filterReferenceNumber: Filter by an exact reference number carried on the order
    /// - Parameter filterOrderedAtTimestampGte: Filter ordered_at_timestamp >= value
    /// - Parameter filterOrderedAtTimestampLte: Filter ordered_at_timestamp <= value
    /// - Parameter filterMirroredAtTimestampGte: Filter mirrored_at_timestamp >= value
    /// - Parameter filterMirroredAtTimestampLte: Filter mirrored_at_timestamp <= value
    /// - Parameter filterCreatedAtTimestampGte: Filter created_at_timestamp >= value
    /// - Parameter filterCreatedAtTimestampLte: Filter created_at_timestamp <= value
    /// - Parameter filterUpdatedAtTimestampGte: Filter updated_at_timestamp >= value
    /// - Parameter filterUpdatedAtTimestampLte: Filter updated_at_timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: ShippingIntegrationOrderSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterShippingIntegration: [OrgShippingIntegrationEnum1]? = nil, filterProviderOrgId: [String]? = nil, filterStatus: [ShippingIntegrationOrderStatusEnum1]? = nil, filterIntegrationOrderId: String? = nil, filterReferenceNumber: String? = nil, filterOrderedAtTimestampGte: Date? = nil, filterOrderedAtTimestampLte: Date? = nil, filterMirroredAtTimestampGte: Date? = nil, filterMirroredAtTimestampLte: Date? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterUpdatedAtTimestampGte: Date? = nil, filterUpdatedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> ShippingIntegrationOrderListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/orders/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_shipping_integration": filterShippingIntegration.map { .unknown($0) }, 
                "filter_provider_org_id": filterProviderOrgId.map { .stringArray($0) }, 
                "filter_status": filterStatus.map { .unknown($0) }, 
                "filter_integration_order_id": filterIntegrationOrderId.map { .string($0) }, 
                "filter_reference_number": filterReferenceNumber.map { .string($0) }, 
                "filter_ordered_at_timestamp_gte": filterOrderedAtTimestampGte.map { .date($0) }, 
                "filter_ordered_at_timestamp_lte": filterOrderedAtTimestampLte.map { .date($0) }, 
                "filter_mirrored_at_timestamp_gte": filterMirroredAtTimestampGte.map { .date($0) }, 
                "filter_mirrored_at_timestamp_lte": filterMirroredAtTimestampLte.map { .date($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_updated_at_timestamp_gte": filterUpdatedAtTimestampGte.map { .date($0) }, 
                "filter_updated_at_timestamp_lte": filterUpdatedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: ShippingIntegrationOrderListRes.self
        )
    }

    /// Counts the caller's shipping integration orders by unified status. | () -> (ShippingIntegrationOrderStatusSummaryRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.orders.statusSummaryV1(
    ///         filterShippingIntegration: [
    ///             .xcelerator
    ///         ],
    ///         filterProviderOrgId: [
    ///             "filter_provider_org_id"
    ///         ],
    ///         filterStatus: [
    ///             .staged
    ///         ],
    ///         filterIntegrationOrderId: "filter_integration_order_id",
    ///         filterReferenceNumber: "filter_reference_number",
    ///         filterOrderedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterOrderedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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
    /// - Parameter filterShippingIntegration: Filter by shipping integration(s)
    /// - Parameter filterProviderOrgId: Filter by provider org ID(s)
    /// - Parameter filterStatus: Filter by unified status(es)
    /// - Parameter filterIntegrationOrderId: Filter by the provider's exact order ID
    /// - Parameter filterReferenceNumber: Filter by an exact reference number carried on the order
    /// - Parameter filterOrderedAtTimestampGte: Filter ordered_at_timestamp >= value
    /// - Parameter filterOrderedAtTimestampLte: Filter ordered_at_timestamp <= value
    /// - Parameter filterMirroredAtTimestampGte: Filter mirrored_at_timestamp >= value
    /// - Parameter filterMirroredAtTimestampLte: Filter mirrored_at_timestamp <= value
    /// - Parameter filterCreatedAtTimestampGte: Filter created_at_timestamp >= value
    /// - Parameter filterCreatedAtTimestampLte: Filter created_at_timestamp <= value
    /// - Parameter filterUpdatedAtTimestampGte: Filter updated_at_timestamp >= value
    /// - Parameter filterUpdatedAtTimestampLte: Filter updated_at_timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func statusSummaryV1(filterShippingIntegration: [OrgShippingIntegrationEnum1]? = nil, filterProviderOrgId: [String]? = nil, filterStatus: [ShippingIntegrationOrderStatusEnum1]? = nil, filterIntegrationOrderId: String? = nil, filterReferenceNumber: String? = nil, filterOrderedAtTimestampGte: Date? = nil, filterOrderedAtTimestampLte: Date? = nil, filterMirroredAtTimestampGte: Date? = nil, filterMirroredAtTimestampLte: Date? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterUpdatedAtTimestampGte: Date? = nil, filterUpdatedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> ShippingIntegrationOrderStatusSummaryRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/orders/status_summary/v1",
            queryParams: [
                "filter_shipping_integration": filterShippingIntegration.map { .unknown($0) }, 
                "filter_provider_org_id": filterProviderOrgId.map { .stringArray($0) }, 
                "filter_status": filterStatus.map { .unknown($0) }, 
                "filter_integration_order_id": filterIntegrationOrderId.map { .string($0) }, 
                "filter_reference_number": filterReferenceNumber.map { .string($0) }, 
                "filter_ordered_at_timestamp_gte": filterOrderedAtTimestampGte.map { .date($0) }, 
                "filter_ordered_at_timestamp_lte": filterOrderedAtTimestampLte.map { .date($0) }, 
                "filter_mirrored_at_timestamp_gte": filterMirroredAtTimestampGte.map { .date($0) }, 
                "filter_mirrored_at_timestamp_lte": filterMirroredAtTimestampLte.map { .date($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_updated_at_timestamp_gte": filterUpdatedAtTimestampGte.map { .date($0) }, 
                "filter_updated_at_timestamp_lte": filterUpdatedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: ShippingIntegrationOrderStatusSummaryRes.self
        )
    }
}