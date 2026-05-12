import Foundation

public final class StripeClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a Stripe checkout session for a subscription against the Stripe product+price chosen by the frontend. Stripe rejects unknown/archived/mode-mismatched price IDs. Returns 409 `use_create_customer_portal_session` if the org already has an active subscription in Stripe (source of truth -- bypasses any JWT staleness). FE should route those users to POST /billing/create-customer-portal-session/v1 to manage. authz: allowed_org_types=[provider] (shippers cannot subscribe -- they are never gated, paying would be a no-op), min_org_role=administrator (committing the company to recurring charges is a finance decision, not an operator one). | (CreateCheckoutSessionReq) -> (CreateCheckoutSessionRes)
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

    /// Creates a Stripe customer-portal session so the org's admin can self-serve update card / view invoices / cancel subscription. authz: allowed_org_types=[provider], min_org_role=administrator (same gate as create-checkout-session — cancelling/updating-card has the same financial weight as subscribing). Returns 404 `use_create_checkout_session` if the org has no Stripe customer. POST /billing/create-checkout-session/v1 first. | (no body) -> (CreateCustomerPortalSessionRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createCustomerPortalSessionV1(requestOptions: RequestOptions? = nil) async throws -> CreateCustomerPortalSessionRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/create-customer-portal-session/v1",
            requestOptions: requestOptions,
            responseType: CreateCustomerPortalSessionRes.self
        )
    }
}