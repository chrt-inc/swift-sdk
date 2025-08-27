import Foundation

public final class PaymentsClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Create a checkout session for a subscription
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createCheckoutSession(request: Requests.CreateCheckoutSessionReq2, requestOptions: RequestOptions? = nil) async throws -> CreateCheckoutSessionRes2 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/payments/create-checkout-session",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateCheckoutSessionRes2.self
        )
    }

    /// Synchronizes subscription data from Stripe to the authentication service for the current user.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func syncStripeToClerk(requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .get,
            path: "/payments/sync_stripe_to_clerk",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Create a Stripe Connect account for the organization to receive payments
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createConnectAccount(requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/payments/create-connect-account",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Create an onboarding link for a Stripe Connect account
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createConnectAccountLink(requestOptions: RequestOptions? = nil) async throws -> CreateConnectAccountLinkRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/payments/create-connect-account-link",
            requestOptions: requestOptions,
            responseType: CreateConnectAccountLinkRes.self
        )
    }

    /// Generates an invoice for a direct charge payment.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func generateInvoice(request: Requests.GenerateInvoiceReq, requestOptions: RequestOptions? = nil) async throws -> GenerateInvoiceRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/payments/generate-invoice",
            body: request,
            requestOptions: requestOptions,
            responseType: GenerateInvoiceRes.self
        )
    }
}