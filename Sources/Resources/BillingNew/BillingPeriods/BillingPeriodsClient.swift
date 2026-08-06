import Foundation

public final class BillingPeriodsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Closes an open billing period and creates one approved line item on the matching draft invoice. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (BillingPeriodExpanded1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func closeV1(billingPeriodId: String, requestOptions: RequestOptions? = nil) async throws -> BillingPeriodExpanded1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing_new/billing_periods/close/v1/\(billingPeriodId)",
            requestOptions: requestOptions,
            responseType: BillingPeriodExpanded1.self
        )
    }

    /// Creates an open owner-scoped billing period. | authz: allowed_org_types=[provider], min_org_role=operator | (BillingPeriodClientCreate1) -> (BillingPeriod1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.BillingPeriodClientCreate1, requestOptions: RequestOptions? = nil) async throws -> BillingPeriod1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/billing_periods/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: BillingPeriod1.self
        )
    }

    /// Deletes an open owner-scoped billing period. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(billingPeriodId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing_new/billing_periods/delete/v1/\(billingPeriodId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Gets an owner-scoped billing period with its generated line item and invoice when present. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (BillingPeriodExpanded1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getExpandedV1(billingPeriodId: String, requestOptions: RequestOptions? = nil) async throws -> BillingPeriodExpanded1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/billing_periods/expanded/v1/\(billingPeriodId)",
            requestOptions: requestOptions,
            responseType: BillingPeriodExpanded1.self
        )
    }

    /// Lists owner-scoped billing periods with generated line items and invoices. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (BillingPeriodListRes)
    ///
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order.
    /// - Parameter filterStatuses: Filter by one or more billing-period statuses.
    /// - Parameter filterInvoiceTypes: Filter by one or more invoice types.
    /// - Parameter filterCurrencyCodes: Filter by one or more currency codes.
    /// - Parameter filterCounterpartyOrgId: Filter by an on-CHRT counterparty organization.
    /// - Parameter filterCounterpartyOffChrtOrgDataId: Filter by an off-CHRT counterparty organization.
    /// - Parameter filterCounterpartyDriverId: Filter by a driver counterparty.
    /// - Parameter filterShipperAccountId: Filter by an associated shipper account.
    /// - Parameter filterTaskGroupId: Filter by an attributed TaskGroup.
    /// - Parameter filterPeriodStartAtTimestampGte: Filter by period start greater than or equal.
    /// - Parameter filterPeriodStartAtTimestampLte: Filter by period start less than or equal.
    /// - Parameter filterPeriodEndAtTimestampGte: Filter by period end greater than or equal.
    /// - Parameter filterPeriodEndAtTimestampLte: Filter by period end less than or equal.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: BillingPeriodSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterStatuses: BillingPeriodStatusEnum1? = nil, filterInvoiceTypes: InvoiceTypeEnum1? = nil, filterCurrencyCodes: BillingCurrencyCodeEnum1? = nil, filterCounterpartyOrgId: String? = nil, filterCounterpartyOffChrtOrgDataId: String? = nil, filterCounterpartyDriverId: String? = nil, filterShipperAccountId: String? = nil, filterTaskGroupId: String? = nil, filterPeriodStartAtTimestampGte: Date? = nil, filterPeriodStartAtTimestampLte: Date? = nil, filterPeriodEndAtTimestampGte: Date? = nil, filterPeriodEndAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> BillingPeriodListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/billing_periods/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_statuses": filterStatuses.map { .string($0.rawValue) }, 
                "filter_invoice_types": filterInvoiceTypes.map { .string($0.rawValue) }, 
                "filter_currency_codes": filterCurrencyCodes.map { .string($0.rawValue) }, 
                "filter_counterparty_org_id": filterCounterpartyOrgId.map { .string($0) }, 
                "filter_counterparty_off_chrt_org_data_id": filterCounterpartyOffChrtOrgDataId.map { .string($0) }, 
                "filter_counterparty_driver_id": filterCounterpartyDriverId.map { .string($0) }, 
                "filter_shipper_account_id": filterShipperAccountId.map { .string($0) }, 
                "filter_task_group_id": filterTaskGroupId.map { .string($0) }, 
                "filter_period_start_at_timestamp_gte": filterPeriodStartAtTimestampGte.map { .date($0) }, 
                "filter_period_start_at_timestamp_lte": filterPeriodStartAtTimestampLte.map { .date($0) }, 
                "filter_period_end_at_timestamp_gte": filterPeriodEndAtTimestampGte.map { .date($0) }, 
                "filter_period_end_at_timestamp_lte": filterPeriodEndAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: BillingPeriodListRes.self
        )
    }

    /// Adds visible TaskGroups to an open owner-scoped billing period. | authz: allowed_org_types=[provider], min_org_role=operator | (BillingPeriodTaskGroupsReq) -> (BillingPeriod1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addTaskGroupsV1(billingPeriodId: String, request: BillingPeriodTaskGroupsReq, requestOptions: RequestOptions? = nil) async throws -> BillingPeriod1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/billing_periods/task_groups/add_many/v1/\(billingPeriodId)",
            body: request,
            requestOptions: requestOptions,
            responseType: BillingPeriod1.self
        )
    }

    /// Removes linked TaskGroups from an open owner-scoped billing period. | authz: allowed_org_types=[provider], min_org_role=operator | (BillingPeriodTaskGroupsReq) -> (BillingPeriod1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeTaskGroupsV1(billingPeriodId: String, request: BillingPeriodTaskGroupsReq, requestOptions: RequestOptions? = nil) async throws -> BillingPeriod1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/billing_periods/task_groups/remove_many/v1/\(billingPeriodId)",
            body: request,
            requestOptions: requestOptions,
            responseType: BillingPeriod1.self
        )
    }

    /// Updates an open owner-scoped billing period. | authz: allowed_org_types=[provider], min_org_role=operator | (BillingPeriodClientUpdate1) -> (BillingPeriod1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(billingPeriodId: String, request: Requests.BillingPeriodClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> BillingPeriod1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing_new/billing_periods/update/v1/\(billingPeriodId)",
            body: request,
            requestOptions: requestOptions,
            responseType: BillingPeriod1.self
        )
    }
}