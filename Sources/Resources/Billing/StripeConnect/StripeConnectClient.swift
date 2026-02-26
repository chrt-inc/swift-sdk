import Foundation

public final class StripeConnectClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a Stripe Connect account for the organization to receive payments. Idempotent - returns existing account if already created. | () -> (CreateStripeConnectAccountRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createAccountV1(requestOptions: RequestOptions? = nil) async throws -> CreateStripeConnectAccountRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/stripe_connect/create_account/v1",
            requestOptions: requestOptions,
            responseType: CreateStripeConnectAccountRes.self
        )
    }

    /// Creates an onboarding link for a Stripe Connect account. Used to complete or update account setup. | () -> (StripeConnectAccountOnboardingLinkRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func onboardingLinkV1(requestOptions: RequestOptions? = nil) async throws -> StripeConnectAccountOnboardingLinkRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/stripe_connect/account_onboarding_link/v1",
            requestOptions: requestOptions,
            responseType: StripeConnectAccountOnboardingLinkRes.self
        )
    }
}