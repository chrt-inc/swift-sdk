import Foundation

public final class InvoiceLineItemsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Applies a caller-owned CHRT-ground rate sheet to a TaskGroup and atomically creates line items on a draft invoice. | authz: allowed_org_types=[provider], min_org_role=operator | (ApplyChrtGroundProviderRatesReq) -> (ApplyChrtGroundProviderRatesRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func applyChrtGroundProviderRatesV1(request: Requests.ApplyChrtGroundProviderRatesReq, requestOptions: RequestOptions? = nil) async throws -> ApplyChrtGroundProviderRatesRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/invoice_line_items/apply_chrt_ground_provider_rates/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: ApplyChrtGroundProviderRatesRes.self
        )
    }

    /// Lists owner-scoped line items for an order with counterparties and accounts expanded. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (InvoiceLineItemsByOrderExpandedRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByOrderV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> InvoiceLineItemsByOrderExpandedRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/invoice_line_items/by_order/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: InvoiceLineItemsByOrderExpandedRes.self
        )
    }

    /// Creates optionally order-attributed line items from an amount and attaches them to a draft invoice. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[coordinator_org_operators, order_executor_org_operators, task_group_coordinator_operators, executor_org_operators] when order-attributed | (CreateInvoiceLineItemsFromAmountReq) -> (CreateInvoiceLineItemsFromAmountRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createFromAmountV1(request: Requests.CreateInvoiceLineItemsFromAmountReq, requestOptions: RequestOptions? = nil) async throws -> CreateInvoiceLineItemsFromAmountRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/invoice_line_items/create_from_amount/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateInvoiceLineItemsFromAmountRes.self
        )
    }

    /// Creates optionally order-attributed line items by transforming submitted line items and attaches them to a draft invoice. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[coordinator_org_operators, order_executor_org_operators, task_group_coordinator_operators, executor_org_operators] when order-attributed | (CreateInvoiceLineItemsFromLineItemsReq) -> (CreateInvoiceLineItemsFromLineItemsRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createFromLineItemsV1(request: Requests.CreateInvoiceLineItemsFromLineItemsReq, requestOptions: RequestOptions? = nil) async throws -> CreateInvoiceLineItemsFromLineItemsRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/invoice_line_items/create_from_line_items/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateInvoiceLineItemsFromLineItemsRes.self
        )
    }

    /// Deletes owner-scoped line items and rebuilds every affected draft invoice. | authz: allowed_org_types=[provider], min_org_role=operator | (InvoiceLineItemsDeleteManyReq) -> (InvoiceLineItemsDeleteManyRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteManyV1(request: Requests.InvoiceLineItemsDeleteManyReq, requestOptions: RequestOptions? = nil) async throws -> InvoiceLineItemsDeleteManyRes {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing_new/invoice_line_items/delete_many/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoiceLineItemsDeleteManyRes.self
        )
    }

    /// Lists owner-scoped invoice line items with filtering, sorting, and pagination. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (InvoiceLineItemListRes)
    ///
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order.
    /// - Parameter filterInvoiceTypes: Filter by one or more invoice types.
    /// - Parameter filterCurrencyCodes: Filter by one or more currency codes.
    /// - Parameter filterLineItemTypes: Filter by one or more line item types.
    /// - Parameter filterUnits: Filter by one or more units.
    /// - Parameter filterCounterpartyOrgId: Filter by an on-CHRT counterparty organization.
    /// - Parameter filterCounterpartyOffChrtOrgDataId: Filter by off-CHRT counterparty organization data.
    /// - Parameter filterCounterpartyAccountId: Filter by an associated counterparty account.
    /// - Parameter filterInvoiceId: Filter by an attached invoice.
    /// - Parameter filterIsInvoiced: Filter by whether a line item is attached to an invoice.
    /// - Parameter filterOrderId: Filter by an attributed order.
    /// - Parameter filterTaskGroupId: Filter by an attributed task group.
    /// - Parameter filterCreatedAtTimestampGte: Filter by created_at_timestamp greater than or equal.
    /// - Parameter filterCreatedAtTimestampLte: Filter by created_at_timestamp less than or equal.
    /// - Parameter filterLastEditedAtTimestampGte: Filter by last_edited_at_timestamp greater than or equal.
    /// - Parameter filterLastEditedAtTimestampLte: Filter by last_edited_at_timestamp less than or equal.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: InvoiceLineItemSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterInvoiceTypes: InvoiceTypeEnum1? = nil, filterCurrencyCodes: BillingCurrencyCodeEnum1? = nil, filterLineItemTypes: InvoiceLineItemTypeEnum1? = nil, filterUnits: InvoiceLineItemUnitEnum1? = nil, filterCounterpartyOrgId: String? = nil, filterCounterpartyOffChrtOrgDataId: String? = nil, filterCounterpartyAccountId: String? = nil, filterInvoiceId: String? = nil, filterIsInvoiced: Bool? = nil, filterOrderId: String? = nil, filterTaskGroupId: String? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterLastEditedAtTimestampGte: Date? = nil, filterLastEditedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> InvoiceLineItemListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/invoice_line_items/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_invoice_types": filterInvoiceTypes.map { .string($0.rawValue) }, 
                "filter_currency_codes": filterCurrencyCodes.map { .string($0.rawValue) }, 
                "filter_line_item_types": filterLineItemTypes.map { .string($0.rawValue) }, 
                "filter_units": filterUnits.map { .string($0.rawValue) }, 
                "filter_counterparty_org_id": filterCounterpartyOrgId.map { .string($0) }, 
                "filter_counterparty_off_chrt_org_data_id": filterCounterpartyOffChrtOrgDataId.map { .string($0) }, 
                "filter_counterparty_account_id": filterCounterpartyAccountId.map { .string($0) }, 
                "filter_invoice_id": filterInvoiceId.map { .string($0) }, 
                "filter_is_invoiced": filterIsInvoiced.map { .bool($0) }, 
                "filter_order_id": filterOrderId.map { .string($0) }, 
                "filter_task_group_id": filterTaskGroupId.map { .string($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_gte": filterLastEditedAtTimestampGte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_lte": filterLastEditedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: InvoiceLineItemListRes.self
        )
    }

    /// Updates an owner-scoped line item and rebuilds its draft invoice when attached. | authz: allowed_org_types=[provider], min_org_role=operator | (InvoiceLineItemClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(invoiceLineItemId: String, request: Requests.InvoiceLineItemClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing_new/invoice_line_items/update/v1/\(invoiceLineItemId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}