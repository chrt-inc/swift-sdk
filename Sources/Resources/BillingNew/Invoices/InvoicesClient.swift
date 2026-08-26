import Foundation

public final class InvoicesClient: Sendable {
    public let export: ExportClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.export = ExportClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Approves a draft invoice owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (Invoice1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.invoices.approveV1(invoiceId: "invoice_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func approveV1(invoiceId: String, requestOptions: RequestOptions? = nil) async throws -> Invoice1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing_new/invoices/approve/v1/\(invoiceId)",
            requestOptions: requestOptions,
            responseType: Invoice1.self
        )
    }

    /// Returns the matching draft invoice period, or creates one with an optional rolling-month default. | authz: allowed_org_types=[provider], min_org_role=operator | (InvoiceClientCreate1) -> (PydanticObjectId)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.invoices.createV1(request: .init(
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
    public func createV1(request: Requests.InvoiceClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/invoices/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Hard-deletes a draft invoice and detaches its line items. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.invoices.deleteV1(invoiceId: "invoice_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(invoiceId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing_new/invoices/delete/v1/\(invoiceId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves an owner-scoped invoice with line-item orders, counterparties, and accounts expanded. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (InvoiceExpandedRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.invoices.getExpandedV1(invoiceId: "invoice_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getExpandedV1(invoiceId: String, requestOptions: RequestOptions? = nil) async throws -> InvoiceExpandedRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/invoices/expanded/v1/\(invoiceId)",
            requestOptions: requestOptions,
            responseType: InvoiceExpandedRes.self
        )
    }

    /// Attaches one line item to a draft invoice, moving it from another draft invoice when needed, and synchronizes both invoices. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (Invoice1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.invoices.addLineItemV1(
    ///         invoiceId: "invoice_id",
    ///         invoiceLineItemId: "invoice_line_item_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addLineItemV1(invoiceId: String, invoiceLineItemId: String, requestOptions: RequestOptions? = nil) async throws -> Invoice1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/invoices/line_item/add/v1/\(invoiceId)/\(invoiceLineItemId)",
            requestOptions: requestOptions,
            responseType: Invoice1.self
        )
    }

    /// Detaches one line item from a draft invoice and synchronizes the invoice total and accounts. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (Invoice1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.invoices.removeLineItemV1(
    ///         invoiceId: "invoice_id",
    ///         invoiceLineItemId: "invoice_line_item_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeLineItemV1(invoiceId: String, invoiceLineItemId: String, requestOptions: RequestOptions? = nil) async throws -> Invoice1 {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing_new/invoices/line_item/remove/v1/\(invoiceId)/\(invoiceLineItemId)",
            requestOptions: requestOptions,
            responseType: Invoice1.self
        )
    }

    /// Attaches existing line items to a draft invoice, moving them from any other draft invoices, and synchronizes all affected invoice totals and accounts. | authz: allowed_org_types=[provider], min_org_role=operator | (InvoiceLineItemsAddReq) -> (Invoice1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.invoices.addLineItemsV1(
    ///         invoiceId: "invoice_id",
    ///         request: .init(invoiceLineItemIds: [
    ///             "invoice_line_item_ids"
    ///         ])
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addLineItemsV1(invoiceId: String, request: Requests.InvoiceLineItemsAddReq, requestOptions: RequestOptions? = nil) async throws -> Invoice1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/invoices/line_items/add/v1/\(invoiceId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Invoice1.self
        )
    }

    /// Detaches existing line items from a draft invoice and synchronizes derived invoice fields. | authz: allowed_org_types=[provider], min_org_role=operator | (InvoiceLineItemsRemoveReq) -> (Invoice1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.invoices.removeLineItemsV1(
    ///         invoiceId: "invoice_id",
    ///         request: .init(invoiceLineItemIds: [
    ///             "invoice_line_item_ids"
    ///         ])
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeLineItemsV1(invoiceId: String, request: Requests.InvoiceLineItemsRemoveReq, requestOptions: RequestOptions? = nil) async throws -> Invoice1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/invoices/line_items/remove/v1/\(invoiceId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Invoice1.self
        )
    }

    /// Lists owner-scoped invoices with related orders, counterparties, and accounts expanded. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (InvoiceListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.invoices.listV1(
    ///         search: "search",
    ///         sortBy: .createdAtTimestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1,
    ///         filterStatuses: [
    ///             .draft
    ///         ],
    ///         filterInvoiceTypes: [
    ///             .accountsReceivable
    ///         ],
    ///         filterCurrencyCodes: [
    ///             .usd
    ///         ],
    ///         filterCounterpartyOrgId: "filter_counterparty_org_id",
    ///         filterCounterpartyOffChrtOrgDataId: "filter_counterparty_off_chrt_org_data_id",
    ///         filterCounterpartyDriverId: "filter_counterparty_driver_id",
    ///         filterCounterpartyAccountId: "filter_counterparty_account_id",
    ///         filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter search: Search invoice names and descriptions.
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order.
    /// - Parameter filterStatuses: Filter by one or more invoice statuses.
    /// - Parameter filterInvoiceTypes: Filter by one or more invoice types.
    /// - Parameter filterCurrencyCodes: Filter by one or more currency codes.
    /// - Parameter filterCounterpartyOrgId: Filter by an on-CHRT counterparty organization.
    /// - Parameter filterCounterpartyOffChrtOrgDataId: Filter by off-CHRT counterparty organization data.
    /// - Parameter filterCounterpartyDriverId: Filter by a driver counterparty.
    /// - Parameter filterCounterpartyAccountId: Filter by an associated counterparty account.
    /// - Parameter filterCreatedAtTimestampGte: Filter by created_at_timestamp greater than or equal.
    /// - Parameter filterCreatedAtTimestampLte: Filter by created_at_timestamp less than or equal.
    /// - Parameter filterLastEditedAtTimestampGte: Filter by last_edited_at_timestamp greater than or equal.
    /// - Parameter filterLastEditedAtTimestampLte: Filter by last_edited_at_timestamp less than or equal.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(search: String? = nil, sortBy: InvoiceSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterStatuses: [InvoiceStatusEnum1]? = nil, filterInvoiceTypes: [InvoiceTypeEnum1]? = nil, filterCurrencyCodes: [BillingCurrencyCodeEnum1]? = nil, filterCounterpartyOrgId: String? = nil, filterCounterpartyOffChrtOrgDataId: String? = nil, filterCounterpartyDriverId: String? = nil, filterCounterpartyAccountId: String? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterLastEditedAtTimestampGte: Date? = nil, filterLastEditedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> InvoiceListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/invoices/list/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_statuses": filterStatuses.map { .unknown($0) }, 
                "filter_invoice_types": filterInvoiceTypes.map { .unknown($0) }, 
                "filter_currency_codes": filterCurrencyCodes.map { .unknown($0) }, 
                "filter_counterparty_org_id": filterCounterpartyOrgId.map { .string($0) }, 
                "filter_counterparty_off_chrt_org_data_id": filterCounterpartyOffChrtOrgDataId.map { .string($0) }, 
                "filter_counterparty_driver_id": filterCounterpartyDriverId.map { .string($0) }, 
                "filter_counterparty_account_id": filterCounterpartyAccountId.map { .string($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_gte": filterLastEditedAtTimestampGte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_lte": filterLastEditedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: InvoiceListRes.self
        )
    }

    /// Updates the name or description of a draft invoice owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | (InvoiceClientUpdate1) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.invoices.updateV1(
    ///         invoiceId: "invoice_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(invoiceId: String, request: Requests.InvoiceClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing_new/invoices/update/v1/\(invoiceId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates the period of a draft invoice without changing its attached line items. | authz: allowed_org_types=[provider], min_org_role=operator | (InvoicePeriodUpdateReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.invoices.updatePeriodV1(
    ///         invoiceId: "invoice_id",
    ///         request: .init(
    ///             periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///             periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updatePeriodV1(invoiceId: String, request: Requests.InvoicePeriodUpdateReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing_new/invoices/update_period/v1/\(invoiceId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves an invoice owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (Invoice1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.invoices.getV1(invoiceId: "invoice_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(invoiceId: String, requestOptions: RequestOptions? = nil) async throws -> Invoice1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/invoices/v1/\(invoiceId)",
            requestOptions: requestOptions,
            responseType: Invoice1.self
        )
    }

    /// Voids a draft or approved invoice owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | (InvoiceVoidReq) -> (Invoice1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.invoices.voidV1(
    ///         invoiceId: "invoice_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func voidV1(invoiceId: String, request: Requests.InvoiceVoidReq, requestOptions: RequestOptions? = nil) async throws -> Invoice1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing_new/invoices/void/v1/\(invoiceId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Invoice1.self
        )
    }
}