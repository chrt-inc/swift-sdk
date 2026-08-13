import Foundation

public final class RateSheetLineItemsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Resolves all matching CHRT-ground provider rate sheets for each unique Order and independently replaces that Order's rate-sheet-derived line items on draft invoices. Orders without matching rate sheets are skipped, expected per-Order failures are returned without stopping later Orders, and invoice approval or finalization is not performed. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[coordinator_org_operators] | (OrderRateSheetLineItemsGenerateManyReq) -> (OrderRateSheetLineItemsGenerateManyRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.orders.rateSheetLineItems.generateManyV1(request: .init(orderIds: [
    ///         "order_ids"
    ///     ]))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func generateManyV1(request: Requests.OrderRateSheetLineItemsGenerateManyReq, requestOptions: RequestOptions? = nil) async throws -> OrderRateSheetLineItemsGenerateManyRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/orders/rate_sheet_line_items/generate_many/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderRateSheetLineItemsGenerateManyRes.self
        )
    }
}