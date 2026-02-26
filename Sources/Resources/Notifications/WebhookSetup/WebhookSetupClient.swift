import Foundation

public final class WebhookSetupClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a Svix consumer application for the organization. Each org needs one app, then endpoints can be added and configured via the app portal. Idempotent - returns True if already created. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createAppV1(requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/notifications/webhook_setup/create_app/v1",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Returns a 1-day magic link URL to access the Svix App Portal. The link contains a one-time token - request a fresh link for each portal session. Admins/owners get full access, operators get read-only. | authz: min_org_role=operator | () -> (WebhookAppPortalAccessRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func appPortalAccessV1(requestOptions: RequestOptions? = nil) async throws -> WebhookAppPortalAccessRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/notifications/webhook_setup/app_portal_access/v1",
            requestOptions: requestOptions,
            responseType: WebhookAppPortalAccessRes.self
        )
    }

    /// Enables webhook notifications for the organization. Idempotent. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func turnOnV1(requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/notifications/webhook_setup/turn_on/v1",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Disables webhook notifications for the organization. Idempotent. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func turnOffV1(requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/notifications/webhook_setup/turn_off/v1",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}