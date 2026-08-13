import Foundation

public final class ChrtGroundProviderRatesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates ground-provider rates owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | (ChrtGroundProviderRatesClientCreate1) -> (PydanticObjectId)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.chrtGroundProviderRates.createV1(request: .init(
    ///         currencyCode: .usd,
    ///         invoiceType: .accountsReceivable,
    ///         schemaVersion: 1
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.ChrtGroundProviderRatesClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/chrt_ground_provider_rates/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Hard-deletes owner-scoped ground-provider rates. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.chrtGroundProviderRates.deleteV1(rateId: "rate_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(rateId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing_new/chrt_ground_provider_rates/delete/v1/\(rateId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves owner-scoped ground-provider rates. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (ChrtGroundProviderRates1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.chrtGroundProviderRates.getV1(rateId: "rate_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(rateId: String, requestOptions: RequestOptions? = nil) async throws -> ChrtGroundProviderRates1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/chrt_ground_provider_rates/get/v1/\(rateId)",
            requestOptions: requestOptions,
            responseType: ChrtGroundProviderRates1.self
        )
    }

    /// Lists owner-scoped ground-provider rates with counterparty, cargo, vehicle, currency, search, sort, and pagination controls. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (ChrtGroundProviderRatesListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.chrtGroundProviderRates.listV1(
    ///         search: "search",
    ///         sortBy: .name,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1,
    ///         filterServiceLine: [
    ///             .onDemand
    ///         ],
    ///         filterInvoiceTypes: [
    ///             .accountsReceivable
    ///         ],
    ///         filterCurrencyCodes: [
    ///             .usd
    ///         ],
    ///         filterCounterpartyOrgId: "filter_counterparty_org_id",
    ///         filterCounterpartyOffChrtOrgDataId: "filter_counterparty_off_chrt_org_data_id",
    ///         filterShipperAccountId: "filter_shipper_account_id",
    ///         filterCounterpartyDriverId: "filter_counterparty_driver_id",
    ///         filterCargoTypes: [
    ///             .spareParts
    ///         ],
    ///         filterVehicleTypes: [
    ///             .sedan
    ///         ],
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
    /// - Parameter search: Search rate names and comments.
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order.
    /// - Parameter filterServiceLine: Filter by one or more service lines.
    /// - Parameter filterInvoiceTypes: Filter by one or more invoice types.
    /// - Parameter filterCurrencyCodes: Filter by one or more currency codes.
    /// - Parameter filterCounterpartyOrgId: Filter by an associated on-CHRT organization.
    /// - Parameter filterCounterpartyOffChrtOrgDataId: Filter by associated off-CHRT organization data.
    /// - Parameter filterShipperAccountId: Filter by an associated shipper account.
    /// - Parameter filterCounterpartyDriverId: Filter by a driver counterparty.
    /// - Parameter filterCargoTypes: Filter by one or more cargo types.
    /// - Parameter filterVehicleTypes: Filter by one or more vehicle types.
    /// - Parameter filterCreatedAtTimestampGte: Filter by created_at_timestamp greater than or equal.
    /// - Parameter filterCreatedAtTimestampLte: Filter by created_at_timestamp less than or equal.
    /// - Parameter filterUpdatedAtTimestampGte: Filter by updated_at_timestamp greater than or equal.
    /// - Parameter filterUpdatedAtTimestampLte: Filter by updated_at_timestamp less than or equal.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(search: String? = nil, sortBy: ChrtGroundProviderRatesSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterServiceLine: [ServiceLineEnum]? = nil, filterInvoiceTypes: [InvoiceTypeEnum1]? = nil, filterCurrencyCodes: [BillingCurrencyCodeEnum1]? = nil, filterCounterpartyOrgId: String? = nil, filterCounterpartyOffChrtOrgDataId: String? = nil, filterShipperAccountId: String? = nil, filterCounterpartyDriverId: String? = nil, filterCargoTypes: [CargoTypeEnum1]? = nil, filterVehicleTypes: [VehicleTypeEnum]? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterUpdatedAtTimestampGte: Date? = nil, filterUpdatedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> ChrtGroundProviderRatesListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/chrt_ground_provider_rates/list/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_service_line": filterServiceLine.map { .unknown($0) }, 
                "filter_invoice_types": filterInvoiceTypes.map { .unknown($0) }, 
                "filter_currency_codes": filterCurrencyCodes.map { .unknown($0) }, 
                "filter_counterparty_org_id": filterCounterpartyOrgId.map { .string($0) }, 
                "filter_counterparty_off_chrt_org_data_id": filterCounterpartyOffChrtOrgDataId.map { .string($0) }, 
                "filter_shipper_account_id": filterShipperAccountId.map { .string($0) }, 
                "filter_counterparty_driver_id": filterCounterpartyDriverId.map { .string($0) }, 
                "filter_cargo_types": filterCargoTypes.map { .unknown($0) }, 
                "filter_vehicle_types": filterVehicleTypes.map { .unknown($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_updated_at_timestamp_gte": filterUpdatedAtTimestampGte.map { .date($0) }, 
                "filter_updated_at_timestamp_lte": filterUpdatedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: ChrtGroundProviderRatesListRes.self
        )
    }

    /// Returns accounts-payable and accounts-receivable CHRT-ground provider-rate candidates for each eligible TaskGroup. AP candidates target a distinct executor, or the assigned driver when the coordinator is also the executor; AR candidates target the shipper. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[coordinator_org_operators] | (ResolveChrtGroundProviderRatesReq) -> (list[ResolvedTaskGroupChrtGroundProviderRates1])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.chrtGroundProviderRates.resolveV1(request: .init(orderId: "order_id"))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func resolveV1(request: Requests.ResolveChrtGroundProviderRatesReq, requestOptions: RequestOptions? = nil) async throws -> [ResolvedTaskGroupChrtGroundProviderRates1] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/chrt_ground_provider_rates/resolve/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: [ResolvedTaskGroupChrtGroundProviderRates1].self
        )
    }

    /// Updates owner-scoped ground-provider rates and advances the server-managed update timestamp. | authz: allowed_org_types=[provider], min_org_role=operator | (ChrtGroundProviderRatesClientUpdate1) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.chrtGroundProviderRates.updateV1(
    ///         rateId: "rate_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(rateId: String, request: Requests.ChrtGroundProviderRatesClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing_new/chrt_ground_provider_rates/update/v1/\(rateId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}