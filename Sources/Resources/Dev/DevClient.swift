import Foundation

public final class DevClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Runs a customer service agent that responds with logistics fun facts (real order data not yet available). | (AgentReq) -> (AgentRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postAgentV1(request: Requests.AgentReq, requestOptions: RequestOptions? = nil) async throws -> AgentRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/dev/agent/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: AgentRes.self
        )
    }

    /// (DEPRECATED) Extracts and returns the user ID from the authenticated request's JWT token. | () -> (str)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getUserIdV1(requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/dev/user_id/v1",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Extracts and returns the user ID from the authenticated request's JWT token. | () -> (str)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getUserIdV2(requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/dev/user_id/v2",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Returns the complete decoded JWT token information for development purposes. | () -> (DecodedJWTWithOrgAndUserId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getDecodedJwtV1(requestOptions: RequestOptions? = nil) async throws -> DecodedJwtWithOrgAndUserId {
        return try await httpClient.performRequest(
            method: .get,
            path: "/dev/decoded_jwt/v1",
            requestOptions: requestOptions,
            responseType: DecodedJwtWithOrgAndUserId.self
        )
    }

    /// Retrieves the primary email address for the caller from the authentication service. | () -> (str)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getEmailV1(requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/dev/email/v1",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Development template endpoint that returns the caller's ID for testing. | () -> (str)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getTemplateV1(requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/dev/template/v1",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Development template endpoint that demonstrates transaction handling and request mirroring. | (TemplateReq) -> (TemplateRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createTemplateV1(request: Requests.TemplateReq, requestOptions: RequestOptions? = nil) async throws -> TemplateRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/dev/template/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: TemplateRes.self
        )
    }

    /// Returns the current GitHub PR number and commit hash for the deployment. | () -> (dict[str, str])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getGitInfoV1(requestOptions: RequestOptions? = nil) async throws -> [String: String] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/dev/git_info/v1",
            requestOptions: requestOptions,
            responseType: [String: String].self
        )
    }
}