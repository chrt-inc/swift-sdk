import Foundation

public final class OrgProfilesClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves the courier organization profile for the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(requestOptions: RequestOptions? = nil) async throws -> CourierOrgProfile3 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/org_profiles/v1",
            requestOptions: requestOptions,
            responseType: CourierOrgProfile3.self
        )
    }

    /// Creates a new courier organization profile. Fails if a profile already exists for the organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.CourierOrgProfileClientCreate3, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/org_profiles/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates an existing courier organization profile. Can update one or more fields.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.CourierOrgProfileClientUpdate3, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/org_profiles/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves a courier organization profile using the organization's handle for public profile viewing.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByHandleV1(handle: String, requestOptions: RequestOptions? = nil) async throws -> CourierOrgProfile3 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/org_profiles/v1/\(handle)",
            requestOptions: requestOptions,
            responseType: CourierOrgProfile3.self
        )
    }

    /// Returns the organization avatar image URL from Clerk or a placeholder if not found.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getAvatarV1(handle: String, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/org_profiles/avatar/v1/\(handle)",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}