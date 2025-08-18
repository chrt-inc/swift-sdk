import Foundation

public final class DevClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get the user id from the jwt: This is in the description
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getUserId(requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/dev/user_id",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Returns the complete decoded JWT token information for development purposes.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getDecodedJwt(requestOptions: RequestOptions? = nil) async throws -> DecodedJwtWithOrgAndUserId {
        return try await httpClient.performRequest(
            method: .get,
            path: "/dev/decoded_jwt",
            requestOptions: requestOptions,
            responseType: DecodedJwtWithOrgAndUserId.self
        )
    }

    /// Retrieves the primary email address for the authenticated user from the authentication service.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getEmail(requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/dev/email",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Development template endpoint that returns the authenticated user's ID for testing.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getTemplate(requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/dev/template",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Development template endpoint that demonstrates transaction handling and request mirroring.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createTemplate(request: TemplateReq, requestOptions: RequestOptions? = nil) async throws -> TemplateRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/dev/template",
            body: request,
            requestOptions: requestOptions,
            responseType: TemplateRes.self
        )
    }

    /// Returns the current GitHub PR number and commit hash for the deployment.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getGitInfo(requestOptions: RequestOptions? = nil) async throws -> [String: String] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/dev/git_info",
            requestOptions: requestOptions,
            responseType: [String: String].self
        )
    }
}