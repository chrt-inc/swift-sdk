import Foundation

public final class ExportClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists up to 1,000 accounts-receivable and accounts-payable line items for the selected Orders, with shipment context. | authz: allowed_org_types=[provider], min_org_role=operator | (InvoiceLineItemExportListReq) -> (InvoiceLineItemExportListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.invoiceLineItems.export.listV1(
    ///         page: 1,
    ///         pageSize: 1,
    ///         request: .init(orderIds: [
    ///             "order_ids"
    ///         ])
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(page: Int? = nil, pageSize: Int? = nil, request: Requests.InvoiceLineItemExportListReq, requestOptions: RequestOptions? = nil) async throws -> InvoiceLineItemExportListRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/invoice_line_items/export/list/v1",
            queryParams: [
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: InvoiceLineItemExportListRes.self
        )
    }
}