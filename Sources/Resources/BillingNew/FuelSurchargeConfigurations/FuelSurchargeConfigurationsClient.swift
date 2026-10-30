import Foundation

public final class FuelSurchargeConfigurationsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Archives a fuel surcharge configuration so pricing falls back to the counterparty default, or reports fuel unpriced. Repeated archival is unchanged. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (FuelSurchargeConfiguration1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.fuelSurchargeConfigurations.archiveV1(fuelSurchargeConfigurationId: "fuel_surcharge_configuration_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func archiveV1(fuelSurchargeConfigurationId: String, requestOptions: RequestOptions? = nil) async throws -> FuelSurchargeConfiguration1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/fuel_surcharge_configurations/archive/v1/\(fuelSurchargeConfigurationId)",
            requestOptions: requestOptions,
            responseType: FuelSurchargeConfiguration1.self
        )
    }

    /// Creates a counterparty fuel surcharge default or store (account) override with dated percentages. | authz: allowed_org_types=[provider], min_org_role=operator | (FuelSurchargeConfigurationClientCreate1) -> (FuelSurchargeConfiguration1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.fuelSurchargeConfigurations.createV1(request: .init(
    ///         invoiceType: .accountsReceivable,
    ///         name: "name",
    ///         rates: [
    ///             FuelSurchargeConfigurationRate1(
    ///                 effectiveFromDate: "effective_from_date",
    ///                 surchargePercentage: 1.1
    ///             )
    ///         ],
    ///         schemaVersion: 1
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.FuelSurchargeConfigurationClientCreate1, requestOptions: RequestOptions? = nil) async throws -> FuelSurchargeConfiguration1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/fuel_surcharge_configurations/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: FuelSurchargeConfiguration1.self
        )
    }

    /// Retrieves an active or archived fuel surcharge configuration owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (FuelSurchargeConfiguration1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.fuelSurchargeConfigurations.getV1(fuelSurchargeConfigurationId: "fuel_surcharge_configuration_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(fuelSurchargeConfigurationId: String, requestOptions: RequestOptions? = nil) async throws -> FuelSurchargeConfiguration1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/fuel_surcharge_configurations/get/v1/\(fuelSurchargeConfigurationId)",
            requestOptions: requestOptions,
            responseType: FuelSurchargeConfiguration1.self
        )
    }

    /// Lists owner-scoped fuel surcharge configurations with direction, counterparty, account and archive filters, sorting and pagination. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (FuelSurchargeConfigurationListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.fuelSurchargeConfigurations.listV1(
    ///         filterInvoiceType: .accountsReceivable,
    ///         filterCounterpartyOrgId: "filter_counterparty_org_id",
    ///         filterCounterpartyOffChrtOrgDataId: "filter_counterparty_off_chrt_org_data_id",
    ///         filterCounterpartyDriverId: "filter_counterparty_driver_id",
    ///         filterShipperAccountId: "filter_shipper_account_id",
    ///         filterArchived: true,
    ///         sortBy: .name,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(filterInvoiceType: InvoiceTypeEnum1? = nil, filterCounterpartyOrgId: String? = nil, filterCounterpartyOffChrtOrgDataId: String? = nil, filterCounterpartyDriverId: String? = nil, filterShipperAccountId: String? = nil, filterArchived: Bool? = nil, sortBy: FuelSurchargeConfigurationSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> FuelSurchargeConfigurationListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/fuel_surcharge_configurations/list/v1",
            queryParams: [
                "filter_invoice_type": filterInvoiceType.map { .string($0.rawValue) }, 
                "filter_counterparty_org_id": filterCounterpartyOrgId.map { .string($0) }, 
                "filter_counterparty_off_chrt_org_data_id": filterCounterpartyOffChrtOrgDataId.map { .string($0) }, 
                "filter_counterparty_driver_id": filterCounterpartyDriverId.map { .string($0) }, 
                "filter_shipper_account_id": filterShipperAccountId.map { .string($0) }, 
                "filter_archived": filterArchived.map { .bool($0) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: FuelSurchargeConfigurationListRes.self
        )
    }

    /// Updates an active fuel surcharge configuration's name or rates; given rates replace the stored ones in full. | authz: allowed_org_types=[provider], min_org_role=operator | (FuelSurchargeConfigurationClientUpdate1) -> (FuelSurchargeConfiguration1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.fuelSurchargeConfigurations.updateV1(
    ///         fuelSurchargeConfigurationId: "fuel_surcharge_configuration_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(fuelSurchargeConfigurationId: String, request: Requests.FuelSurchargeConfigurationClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> FuelSurchargeConfiguration1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing_new/fuel_surcharge_configurations/update/v1/\(fuelSurchargeConfigurationId)",
            body: request,
            requestOptions: requestOptions,
            responseType: FuelSurchargeConfiguration1.self
        )
    }
}