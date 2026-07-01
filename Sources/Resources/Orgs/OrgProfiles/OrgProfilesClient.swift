import Foundation

public final class OrgProfilesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the organization avatar image URL from WorkOS or a placeholder if not found. | () -> (str)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getAvatarV1(handle: String, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/org_profiles/avatar/v1/\(handle)",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Creates a new provider organization profile. Fails if a profile already exists for the organization. | (ProviderOrgProfileClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createProviderV1(request: Requests.ProviderOrgProfileClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/org_profiles/provider/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates an existing provider organization profile. | (ProviderOrgProfileClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateProviderV1(request: Requests.ProviderOrgProfileClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/org_profiles/provider/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves the provider organization profile for the caller's organization. | () -> (ProviderOrgProfile1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(requestOptions: RequestOptions? = nil) async throws -> ProviderOrgProfile1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/org_profiles/v1",
            requestOptions: requestOptions,
            responseType: ProviderOrgProfile1.self
        )
    }

    /// Retrieves a provider organization profile by handle for public profile viewing. | () -> (ProviderOrgProfile1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByHandleV1(handle: String, requestOptions: RequestOptions? = nil) async throws -> ProviderOrgProfile1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/org_profiles/v1/\(handle)",
            requestOptions: requestOptions,
            responseType: ProviderOrgProfile1.self
        )
    }
}