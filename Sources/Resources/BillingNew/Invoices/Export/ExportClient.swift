import Foundation

public final class ExportClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists up to 1,000 shipment-level export rows for one approved accounts-receivable invoice owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (InvoiceExportListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.invoices.export.listV1(
    ///         invoiceId: "invoice_id",
    ///         page: 1,
    ///         pageSize: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(invoiceId: String, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> InvoiceExportListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/invoices/export/list/v1/\(invoiceId)",
            queryParams: [
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: InvoiceExportListRes.self
        )
    }
}