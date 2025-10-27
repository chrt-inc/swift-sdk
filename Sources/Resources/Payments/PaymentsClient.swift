import Foundation

public final class PaymentsClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a Stripe checkout session for a subscription with pricing based on the selected plan.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createCheckoutSessionV1(request: Requests.CreateCheckoutSessionReq, requestOptions: RequestOptions? = nil) async throws -> CreateCheckoutSessionRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/payments/create-checkout-session/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateCheckoutSessionRes.self
        )
    }

    /// Synchronizes subscription data from Stripe to the authentication service for the current user.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func syncStripeToClerkV1(requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .get,
            path: "/payments/sync_stripe_to_clerk/v1",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Creates a Stripe Connect account for the organization to receive payments. Idempotent - returns existing account if already created.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createConnectAccountV1(requestOptions: RequestOptions? = nil) async throws -> CreateConnectAccountRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/payments/create-connect-account/v1",
            requestOptions: requestOptions,
            responseType: CreateConnectAccountRes.self
        )
    }

    /// Creates an onboarding link for a Stripe Connect account. Used to complete or update account setup.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createConnectAccountLinkV1(requestOptions: RequestOptions? = nil) async throws -> CreateConnectAccountLinkRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/payments/create-connect-account-link/v1",
            requestOptions: requestOptions,
            responseType: CreateConnectAccountLinkRes.self
        )
    }

    /// Generates and sends a Stripe invoice for a shipper payment to a courier organization's Connect account. Applies a 10% application fee.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func generateInvoiceV1(request: Requests.GenerateInvoiceReq, requestOptions: RequestOptions? = nil) async throws -> GenerateInvoiceRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/payments/generate-invoice/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: GenerateInvoiceRes.self
        )
    }
}