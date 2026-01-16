import Foundation

public final class PaymentsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a Stripe checkout session for a subscription with pricing based on the selected plan. | (CreateCheckoutSessionReq) -> (CreateCheckoutSessionRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createCheckoutSessionV1(request: Requests.CreateCheckoutSessionReq, requestOptions: RequestOptions? = nil) async throws -> CreateCheckoutSessionRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/create-checkout-session/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateCheckoutSessionRes.self
        )
    }

    /// Synchronizes subscription data from Stripe to the authentication service for the current user. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func syncStripeToClerkV1(requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/sync_stripe_to_clerk/v1",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}