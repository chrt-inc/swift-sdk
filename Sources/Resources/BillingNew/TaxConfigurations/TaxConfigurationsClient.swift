import Foundation

public final class TaxConfigurationsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Archives a tax configuration so future resolution falls back to the next applicable scope. Repeated archival is unchanged. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (TaxConfiguration1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.taxConfigurations.archiveV1(taxConfigurationId: "tax_configuration_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func archiveV1(taxConfigurationId: String, requestOptions: RequestOptions? = nil) async throws -> TaxConfiguration1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/tax_configurations/archive/v1/\(taxConfigurationId)",
            requestOptions: requestOptions,
            responseType: TaxConfiguration1.self
        )
    }

    /// Creates a counterparty tax default or account override. Empty rules mean no tax. | authz: allowed_org_types=[provider], min_org_role=operator | (TaxConfigurationClientCreate1) -> (TaxConfiguration1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.taxConfigurations.createV1(request: .init(
    ///         name: "name",
    ///         schemaVersion: 1
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.TaxConfigurationClientCreate1, requestOptions: RequestOptions? = nil) async throws -> TaxConfiguration1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/tax_configurations/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: TaxConfiguration1.self
        )
    }

    /// Retrieves an active or archived tax configuration owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (TaxConfiguration1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.taxConfigurations.getV1(taxConfigurationId: "tax_configuration_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(taxConfigurationId: String, requestOptions: RequestOptions? = nil) async throws -> TaxConfiguration1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/tax_configurations/get/v1/\(taxConfigurationId)",
            requestOptions: requestOptions,
            responseType: TaxConfiguration1.self
        )
    }

    /// Lists owner-scoped tax configurations with counterparty, account, archive, date, sorting, and pagination filters. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (TaxConfigurationListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.taxConfigurations.listV1(
    ///         sortBy: .name,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1,
    ///         filterCounterpartyOrgId: "filter_counterparty_org_id",
    ///         filterCounterpartyOffChrtOrgDataId: "filter_counterparty_off_chrt_org_data_id",
    ///         filterCounterpartyDriverId: "filter_counterparty_driver_id",
    ///         filterShipperAccountId: "filter_shipper_account_id",
    ///         filterArchived: true,
    ///         filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: TaxConfigurationSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterCounterpartyOrgId: String? = nil, filterCounterpartyOffChrtOrgDataId: String? = nil, filterCounterpartyDriverId: String? = nil, filterShipperAccountId: String? = nil, filterArchived: Bool? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> TaxConfigurationListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/tax_configurations/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_counterparty_org_id": filterCounterpartyOrgId.map { .string($0) }, 
                "filter_counterparty_off_chrt_org_data_id": filterCounterpartyOffChrtOrgDataId.map { .string($0) }, 
                "filter_counterparty_driver_id": filterCounterpartyDriverId.map { .string($0) }, 
                "filter_shipper_account_id": filterShipperAccountId.map { .string($0) }, 
                "filter_archived": filterArchived.map { .bool($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: TaxConfigurationListRes.self
        )
    }

    /// Resolves account taxes or the counterparty default; returns null when neither exists. Empty rules explicitly mean no tax. | authz: allowed_org_types=[provider], min_org_role=operator | (TaxConfigurationResolveReq) -> (TaxConfiguration1 | None)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.taxConfigurations.resolveV1(request: .init())
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func resolveV1(request: Requests.TaxConfigurationResolveReq, requestOptions: RequestOptions? = nil) async throws -> TaxConfiguration1? {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/tax_configurations/resolve/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: TaxConfiguration1?.self
        )
    }

    /// Updates an active tax configuration's name or rules. Empty rules explicitly mean no tax. | authz: allowed_org_types=[provider], min_org_role=operator | (TaxConfigurationClientUpdate1) -> (TaxConfiguration1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.taxConfigurations.updateV1(
    ///         taxConfigurationId: "tax_configuration_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(taxConfigurationId: String, request: Requests.TaxConfigurationClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> TaxConfiguration1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing_new/tax_configurations/update/v1/\(taxConfigurationId)",
            body: request,
            requestOptions: requestOptions,
            responseType: TaxConfiguration1.self
        )
    }
}