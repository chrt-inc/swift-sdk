import Foundation

public final class QuotesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Accepts a draft quote, supersedes the customer's previously accepted quote on the order and re-prices the order. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[coordinator_org_operators] | () -> (OrderBillingQuote1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.quotes.acceptV1(quoteId: "quote_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func acceptV1(quoteId: String, requestOptions: RequestOptions? = nil) async throws -> OrderBillingQuote1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/quotes/accept/v1/\(quoteId)",
            requestOptions: requestOptions,
            responseType: OrderBillingQuote1.self
        )
    }

    /// Creates a draft non-binding or fixed-price quote for an order's customer. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[coordinator_org_operators] | (OrderBillingQuoteClientCreate1) -> (OrderBillingQuote1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.quotes.createV1(request: .init(
    ///         currencyCode: .usd,
    ///         orderId: "order_id",
    ///         quoteType: .nonBinding,
    ///         schemaVersion: 1
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.OrderBillingQuoteClientCreate1, requestOptions: RequestOptions? = nil) async throws -> OrderBillingQuote1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/quotes/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderBillingQuote1.self
        )
    }

    /// Hard-deletes a draft quote the operator no longer wants; other quotes are kept as history. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[coordinator_org_operators] | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.quotes.deleteV1(quoteId: "quote_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(quoteId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing_new/quotes/delete/v1/\(quoteId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves a quote owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (OrderBillingQuote1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.quotes.getV1(quoteId: "quote_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(quoteId: String, requestOptions: RequestOptions? = nil) async throws -> OrderBillingQuote1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/quotes/get/v1/\(quoteId)",
            requestOptions: requestOptions,
            responseType: OrderBillingQuote1.self
        )
    }

    /// Lists the caller organization's quotes on an order, newest first. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[OrderBillingQuote1])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.quotes.listV1(orderId: "order_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> [OrderBillingQuote1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/quotes/list/v1",
            queryParams: [
                "order_id": .string(orderId)
            ],
            requestOptions: requestOptions,
            responseType: [OrderBillingQuote1].self
        )
    }

    /// Updates a draft quote's type, currency, store account or lines; lines sent replace the old ones. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[coordinator_org_operators] | (OrderBillingQuoteClientUpdate1) -> (OrderBillingQuote1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.quotes.updateV1(
    ///         quoteId: "quote_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(quoteId: String, request: Requests.OrderBillingQuoteClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> OrderBillingQuote1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing_new/quotes/update/v1/\(quoteId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderBillingQuote1.self
        )
    }

    /// Withdraws an accepted quote with no replacement and re-prices the order, so a fixed-price customer goes back to rate sheets. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[coordinator_org_operators] | () -> (OrderBillingQuote1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.quotes.withdrawV1(quoteId: "quote_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func withdrawV1(quoteId: String, requestOptions: RequestOptions? = nil) async throws -> OrderBillingQuote1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/quotes/withdraw/v1/\(quoteId)",
            requestOptions: requestOptions,
            responseType: OrderBillingQuote1.self
        )
    }
}