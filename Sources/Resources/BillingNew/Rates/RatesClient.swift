import Foundation

public final class RatesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Atomically adds counterparties to owner-scoped ground-provider rates without creating duplicates. | authz: allowed_org_types=[provider], min_org_role=operator | (ChrtGroundProviderRatesAddCounterpartiesReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addCounterpartiesV1(rateId: String, request: Requests.ChrtGroundProviderRatesAddCounterpartiesReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/rates/counterparties/add/v1/\(rateId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Atomically removes counterparties from owner-scoped ground-provider rates. | authz: allowed_org_types=[provider], min_org_role=operator | (ChrtGroundProviderRatesRemoveCounterpartiesReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeCounterpartiesV1(rateId: String, request: Requests.ChrtGroundProviderRatesRemoveCounterpartiesReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/rates/counterparties/remove/v1/\(rateId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Creates ground-provider rates owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | (ChrtGroundProviderRatesClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.ChrtGroundProviderRatesClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/rates/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Hard-deletes owner-scoped ground-provider rates. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(rateId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing_new/rates/delete/v1/\(rateId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Lists owner-scoped ground-provider rates with counterparty, cargo, vehicle, currency, search, sort, and pagination controls. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (ChrtGroundProviderRatesListRes)
    ///
    /// - Parameter search: Search rate names and comments.
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order.
    /// - Parameter filterCurrencyCodes: Filter by one or more currency codes.
    /// - Parameter filterCounterpartyOrgId: Filter by an associated on-CHRT organization.
    /// - Parameter filterCounterpartyOffChrtOrgDataId: Filter by associated off-CHRT organization data.
    /// - Parameter filterCounterpartyAccountId: Filter by an associated account.
    /// - Parameter filterCounterpartyDriverId: Filter by an associated driver.
    /// - Parameter filterCargoTypes: Filter by one or more cargo types.
    /// - Parameter filterVehicleTypes: Filter by one or more vehicle types.
    /// - Parameter filterCreatedAtTimestampGte: Filter by created_at_timestamp greater than or equal.
    /// - Parameter filterCreatedAtTimestampLte: Filter by created_at_timestamp less than or equal.
    /// - Parameter filterUpdatedAtTimestampGte: Filter by updated_at_timestamp greater than or equal.
    /// - Parameter filterUpdatedAtTimestampLte: Filter by updated_at_timestamp less than or equal.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(search: String? = nil, sortBy: ChrtGroundProviderRatesSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterCurrencyCodes: BillingCurrencyCodeEnum1? = nil, filterCounterpartyOrgId: String? = nil, filterCounterpartyOffChrtOrgDataId: String? = nil, filterCounterpartyAccountId: String? = nil, filterCounterpartyDriverId: String? = nil, filterCargoTypes: CargoTypeEnum1? = nil, filterVehicleTypes: VehicleTypeEnum? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterUpdatedAtTimestampGte: Date? = nil, filterUpdatedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> ChrtGroundProviderRatesListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/rates/list/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_currency_codes": filterCurrencyCodes.map { .string($0.rawValue) }, 
                "filter_counterparty_org_id": filterCounterpartyOrgId.map { .string($0) }, 
                "filter_counterparty_off_chrt_org_data_id": filterCounterpartyOffChrtOrgDataId.map { .string($0) }, 
                "filter_counterparty_account_id": filterCounterpartyAccountId.map { .string($0) }, 
                "filter_counterparty_driver_id": filterCounterpartyDriverId.map { .string($0) }, 
                "filter_cargo_types": filterCargoTypes.map { .string($0.rawValue) }, 
                "filter_vehicle_types": filterVehicleTypes.map { .string($0.rawValue) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_updated_at_timestamp_gte": filterUpdatedAtTimestampGte.map { .date($0) }, 
                "filter_updated_at_timestamp_lte": filterUpdatedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: ChrtGroundProviderRatesListRes.self
        )
    }

    /// Updates owner-scoped ground-provider rates and advances the server-managed update timestamp. | authz: allowed_org_types=[provider], min_org_role=operator | (ChrtGroundProviderRatesClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(rateId: String, request: Requests.ChrtGroundProviderRatesClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing_new/rates/update/v1/\(rateId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves owner-scoped ground-provider rates. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (ChrtGroundProviderRates1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(rateId: String, requestOptions: RequestOptions? = nil) async throws -> ChrtGroundProviderRates1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/rates/v1/\(rateId)",
            requestOptions: requestOptions,
            responseType: ChrtGroundProviderRates1.self
        )
    }
}