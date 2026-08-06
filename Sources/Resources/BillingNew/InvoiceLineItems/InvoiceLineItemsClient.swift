import Foundation

public final class InvoiceLineItemsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates account-split ad-hoc line items and attaches them to matching draft invoices. | authz: allowed_org_types=[provider], min_org_role=operator | (AdHocInvoiceLineItemsReq) -> (list[InvoiceLineItem1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createAdHocV1(request: AdHocInvoiceLineItemsReq, requestOptions: RequestOptions? = nil) async throws -> [InvoiceLineItem1] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/invoice_line_items/ad_hoc/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: [InvoiceLineItem1].self
        )
    }

    /// Previews account-split ad-hoc line items without persisting them. | authz: allowed_org_types=[provider], min_org_role=operator | (AdHocInvoiceLineItemsReq) -> (list[InvoiceLineItemServerCreate1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func previewAdHocV1(request: AdHocInvoiceLineItemsReq, requestOptions: RequestOptions? = nil) async throws -> [InvoiceLineItemServerCreate1] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/invoice_line_items/ad_hoc/preview/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: [InvoiceLineItemServerCreate1].self
        )
    }

    /// Atomically approves draft line items owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | (InvoiceLineItemsApproveManyReq) -> (list[InvoiceLineItem1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func approveManyV1(request: Requests.InvoiceLineItemsApproveManyReq, requestOptions: RequestOptions? = nil) async throws -> [InvoiceLineItem1] {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing_new/invoice_line_items/approve_many/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: [InvoiceLineItem1].self
        )
    }

    /// Lists owner-scoped line items and attributed billing periods for an order with counterparties and accounts expanded. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (InvoiceLineItemsByOrderExpandedRes)
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

    /// Creates account-scoped airline payables from AWB costs; receivables remain rate-sheet-driven. | authz: allowed_org_types=[provider], min_org_role=operator | (CreateInvoiceLineItemsFromAwbCostsReq) -> (CreateInvoiceLineItemsFromAwbCostsRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createFromAwbCostsV1(request: Requests.CreateInvoiceLineItemsFromAwbCostsReq, requestOptions: RequestOptions? = nil) async throws -> CreateInvoiceLineItemsFromAwbCostsRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/invoice_line_items/create_from_awb_costs/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateInvoiceLineItemsFromAwbCostsRes.self
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

    /// Creates rate-sheet-derived line items and attaches them to matching draft invoices. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[task_group_coordinator_operators] | (InvoiceLineItemsFromChrtGroundProviderRateSheetsReq) -> (list[InvoiceLineItem1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createFromRateSheetsV1(request: InvoiceLineItemsFromChrtGroundProviderRateSheetsReq, requestOptions: RequestOptions? = nil) async throws -> [InvoiceLineItem1] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/invoice_line_items/from_rate_sheets/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: [InvoiceLineItem1].self
        )
    }

    /// Previews accounts-payable, accounts-receivable, and tax line items from selected active rate sheets. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[task_group_coordinator_operators] | (InvoiceLineItemsFromChrtGroundProviderRateSheetsReq) -> (list[TaskGroupInvoiceLineItemsFromChrtGroundProviderRateSheetsPreview1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func previewFromRateSheetsV1(request: InvoiceLineItemsFromChrtGroundProviderRateSheetsReq, requestOptions: RequestOptions? = nil) async throws -> [TaskGroupInvoiceLineItemsFromChrtGroundProviderRateSheetsPreview1] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/invoice_line_items/from_rate_sheets/preview/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: [TaskGroupInvoiceLineItemsFromChrtGroundProviderRateSheetsPreview1].self
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
    /// - Parameter filterCounterpartyDriverId: Filter by a driver counterparty.
    /// - Parameter filterShipperAccountId: Filter by an associated shipper account.
    /// - Parameter filterInvoiceId: Filter by an attached invoice.
    /// - Parameter filterIsInvoiced: Filter by whether a line item is attached to an invoice.
    /// - Parameter filterOrderId: Filter by an attributed order.
    /// - Parameter filterTaskGroupId: Filter by an attributed task group.
    /// - Parameter filterCreatedAtTimestampGte: Filter by created_at_timestamp greater than or equal.
    /// - Parameter filterCreatedAtTimestampLte: Filter by created_at_timestamp less than or equal.
    /// - Parameter filterLastEditedAtTimestampGte: Filter by last_edited_at_timestamp greater than or equal.
    /// - Parameter filterLastEditedAtTimestampLte: Filter by last_edited_at_timestamp less than or equal.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: InvoiceLineItemSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterInvoiceTypes: InvoiceTypeEnum1? = nil, filterCurrencyCodes: BillingCurrencyCodeEnum1? = nil, filterLineItemTypes: InvoiceLineItemTypeEnum1? = nil, filterUnits: InvoiceLineItemUnitEnum1? = nil, filterCounterpartyOrgId: String? = nil, filterCounterpartyOffChrtOrgDataId: String? = nil, filterCounterpartyDriverId: String? = nil, filterShipperAccountId: String? = nil, filterInvoiceId: String? = nil, filterIsInvoiced: Bool? = nil, filterOrderId: String? = nil, filterTaskGroupId: String? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterLastEditedAtTimestampGte: Date? = nil, filterLastEditedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> InvoiceLineItemListRes {
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
                "filter_counterparty_driver_id": filterCounterpartyDriverId.map { .string($0) }, 
                "filter_shipper_account_id": filterShipperAccountId.map { .string($0) }, 
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

    /// Recalculates existing tax line items from current non-tax items in the same billing scope. | authz: allowed_org_types=[provider], min_org_role=operator | (RecalculateOrderTaxInvoiceLineItemsReq) -> (list[InvoiceLineItem1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func recalculateTaxesV1(request: Requests.RecalculateOrderTaxInvoiceLineItemsReq, requestOptions: RequestOptions? = nil) async throws -> [InvoiceLineItem1] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/invoice_line_items/recalculate_taxes/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: [InvoiceLineItem1].self
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