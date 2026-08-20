import Foundation

public final class ShippingIntegrationsOrdersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns one unified shipping integration order by its Mongo ObjectId with related organizations expanded. | () -> (ShippingIntegrationOrderExpanded1)
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
    public func detailV1(id: String, requestOptions: RequestOptions? = nil) async throws -> ShippingIntegrationOrderExpanded1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/orders/detail/v1/\(id)",
            requestOptions: requestOptions,
            responseType: ShippingIntegrationOrderExpanded1.self
        )
    }

    /// Lists orders assigned to the caller's integration executor organization across all shipping integrations with integration coordinator organizations expanded, filtering, sorting, pagination, and optional search. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (ShippingIntegrationOrderListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.orders.listForIntegrationExecutorOperatorsV1(
    ///         sortBy: .orderedAtTimestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1,
    ///         search: "search",
    ///         filterShippingIntegration: [
    ///             .xcelerator
    ///         ],
    ///         filterStatus: [
    ///             .staged
    ///         ],
    ///         filterIntegrationOrderId: "filter_integration_order_id",
    ///         filterReferenceNumber: "filter_reference_number",
    ///         filterOrderedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterOrderedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastMirroredAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastMirroredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterFirstMirroredAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterFirstMirroredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter search: Search provider order IDs and reference numbers.
    /// - Parameter filterShippingIntegration: Filter by shipping integration(s)
    /// - Parameter filterStatus: Filter by unified status(es)
    /// - Parameter filterIntegrationOrderId: Filter by the provider's exact order ID
    /// - Parameter filterReferenceNumber: Filter by an exact reference number carried on the order
    /// - Parameter filterOrderedAtTimestampGte: Filter ordered_at_timestamp >= value
    /// - Parameter filterOrderedAtTimestampLte: Filter ordered_at_timestamp <= value
    /// - Parameter filterLastMirroredAtTimestampGte: Filter last_mirrored_at_timestamp >= value
    /// - Parameter filterLastMirroredAtTimestampLte: Filter last_mirrored_at_timestamp <= value
    /// - Parameter filterFirstMirroredAtTimestampGte: Filter first_mirrored_at_timestamp >= value
    /// - Parameter filterFirstMirroredAtTimestampLte: Filter first_mirrored_at_timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForIntegrationExecutorOperatorsV1(sortBy: ShippingIntegrationOrderSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterShippingIntegration: [OrgShippingIntegrationEnum1]? = nil, filterStatus: [ShippingIntegrationOrderStatusEnum1]? = nil, filterIntegrationOrderId: String? = nil, filterReferenceNumber: String? = nil, filterOrderedAtTimestampGte: Date? = nil, filterOrderedAtTimestampLte: Date? = nil, filterLastMirroredAtTimestampGte: Date? = nil, filterLastMirroredAtTimestampLte: Date? = nil, filterFirstMirroredAtTimestampGte: Date? = nil, filterFirstMirroredAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> ShippingIntegrationOrderListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/orders/list/for_integration_executor_operators/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_shipping_integration": filterShippingIntegration.map { .unknown($0) }, 
                "filter_status": filterStatus.map { .unknown($0) }, 
                "filter_integration_order_id": filterIntegrationOrderId.map { .string($0) }, 
                "filter_reference_number": filterReferenceNumber.map { .string($0) }, 
                "filter_ordered_at_timestamp_gte": filterOrderedAtTimestampGte.map { .date($0) }, 
                "filter_ordered_at_timestamp_lte": filterOrderedAtTimestampLte.map { .date($0) }, 
                "filter_last_mirrored_at_timestamp_gte": filterLastMirroredAtTimestampGte.map { .date($0) }, 
                "filter_last_mirrored_at_timestamp_lte": filterLastMirroredAtTimestampLte.map { .date($0) }, 
                "filter_first_mirrored_at_timestamp_gte": filterFirstMirroredAtTimestampGte.map { .date($0) }, 
                "filter_first_mirrored_at_timestamp_lte": filterFirstMirroredAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: ShippingIntegrationOrderListRes.self
        )
    }

    /// Lists the caller's orders from every shipping integration with provider organizations expanded, filtering, sorting, pagination, and optional search. | () -> (ShippingIntegrationOrderListRes)
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
    ///         search: "search",
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
    ///         filterCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastMirroredAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastMirroredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterFirstMirroredAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterFirstMirroredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter search: Search provider order IDs and reference numbers.
    /// - Parameter filterShippingIntegration: Filter by shipping integration(s)
    /// - Parameter filterProviderOrgId: Filter by provider org ID(s)
    /// - Parameter filterStatus: Filter by unified status(es)
    /// - Parameter filterIntegrationOrderId: Filter by the provider's exact order ID
    /// - Parameter filterReferenceNumber: Filter by an exact reference number carried on the order
    /// - Parameter filterOrderedAtTimestampGte: Filter ordered_at_timestamp >= value
    /// - Parameter filterOrderedAtTimestampLte: Filter ordered_at_timestamp <= value
    /// - Parameter filterCompletedAtTimestampGte: Filter completed_at_timestamp >= value
    /// - Parameter filterCompletedAtTimestampLte: Filter completed_at_timestamp <= value
    /// - Parameter filterLastMirroredAtTimestampGte: Filter last_mirrored_at_timestamp >= value
    /// - Parameter filterLastMirroredAtTimestampLte: Filter last_mirrored_at_timestamp <= value
    /// - Parameter filterFirstMirroredAtTimestampGte: Filter first_mirrored_at_timestamp >= value
    /// - Parameter filterFirstMirroredAtTimestampLte: Filter first_mirrored_at_timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: ShippingIntegrationOrderSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterShippingIntegration: [OrgShippingIntegrationEnum1]? = nil, filterProviderOrgId: [String]? = nil, filterStatus: [ShippingIntegrationOrderStatusEnum1]? = nil, filterIntegrationOrderId: String? = nil, filterReferenceNumber: String? = nil, filterOrderedAtTimestampGte: Date? = nil, filterOrderedAtTimestampLte: Date? = nil, filterCompletedAtTimestampGte: Date? = nil, filterCompletedAtTimestampLte: Date? = nil, filterLastMirroredAtTimestampGte: Date? = nil, filterLastMirroredAtTimestampLte: Date? = nil, filterFirstMirroredAtTimestampGte: Date? = nil, filterFirstMirroredAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> ShippingIntegrationOrderListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/orders/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_shipping_integration": filterShippingIntegration.map { .unknown($0) }, 
                "filter_provider_org_id": filterProviderOrgId.map { .stringArray($0) }, 
                "filter_status": filterStatus.map { .unknown($0) }, 
                "filter_integration_order_id": filterIntegrationOrderId.map { .string($0) }, 
                "filter_reference_number": filterReferenceNumber.map { .string($0) }, 
                "filter_ordered_at_timestamp_gte": filterOrderedAtTimestampGte.map { .date($0) }, 
                "filter_ordered_at_timestamp_lte": filterOrderedAtTimestampLte.map { .date($0) }, 
                "filter_completed_at_timestamp_gte": filterCompletedAtTimestampGte.map { .date($0) }, 
                "filter_completed_at_timestamp_lte": filterCompletedAtTimestampLte.map { .date($0) }, 
                "filter_last_mirrored_at_timestamp_gte": filterLastMirroredAtTimestampGte.map { .date($0) }, 
                "filter_last_mirrored_at_timestamp_lte": filterLastMirroredAtTimestampLte.map { .date($0) }, 
                "filter_first_mirrored_at_timestamp_gte": filterFirstMirroredAtTimestampGte.map { .date($0) }, 
                "filter_first_mirrored_at_timestamp_lte": filterFirstMirroredAtTimestampLte.map { .date($0) }
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
    ///         filterCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastMirroredAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastMirroredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterFirstMirroredAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterFirstMirroredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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
    /// - Parameter filterCompletedAtTimestampGte: Filter completed_at_timestamp >= value
    /// - Parameter filterCompletedAtTimestampLte: Filter completed_at_timestamp <= value
    /// - Parameter filterLastMirroredAtTimestampGte: Filter last_mirrored_at_timestamp >= value
    /// - Parameter filterLastMirroredAtTimestampLte: Filter last_mirrored_at_timestamp <= value
    /// - Parameter filterFirstMirroredAtTimestampGte: Filter first_mirrored_at_timestamp >= value
    /// - Parameter filterFirstMirroredAtTimestampLte: Filter first_mirrored_at_timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func statusSummaryV1(filterShippingIntegration: [OrgShippingIntegrationEnum1]? = nil, filterProviderOrgId: [String]? = nil, filterStatus: [ShippingIntegrationOrderStatusEnum1]? = nil, filterIntegrationOrderId: String? = nil, filterReferenceNumber: String? = nil, filterOrderedAtTimestampGte: Date? = nil, filterOrderedAtTimestampLte: Date? = nil, filterCompletedAtTimestampGte: Date? = nil, filterCompletedAtTimestampLte: Date? = nil, filterLastMirroredAtTimestampGte: Date? = nil, filterLastMirroredAtTimestampLte: Date? = nil, filterFirstMirroredAtTimestampGte: Date? = nil, filterFirstMirroredAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> ShippingIntegrationOrderStatusSummaryRes {
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
                "filter_completed_at_timestamp_gte": filterCompletedAtTimestampGte.map { .date($0) }, 
                "filter_completed_at_timestamp_lte": filterCompletedAtTimestampLte.map { .date($0) }, 
                "filter_last_mirrored_at_timestamp_gte": filterLastMirroredAtTimestampGte.map { .date($0) }, 
                "filter_last_mirrored_at_timestamp_lte": filterLastMirroredAtTimestampLte.map { .date($0) }, 
                "filter_first_mirrored_at_timestamp_gte": filterFirstMirroredAtTimestampGte.map { .date($0) }, 
                "filter_first_mirrored_at_timestamp_lte": filterFirstMirroredAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: ShippingIntegrationOrderStatusSummaryRes.self
        )
    }

    /// Returns distinct integration order IDs and reference numbers matching the query via case-insensitive regex within the caller's organization. | () -> (list[ShippingIntegrationOrderTypeaheadResult])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.orders.typeaheadV1(
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
            path: "/shipping_integrations/orders/typeahead/v1",
            queryParams: [
                "query": .string(query), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [ShippingIntegrationOrderTypeaheadResult].self
        )
    }
}