import Foundation

public final class OrgProfilesClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieve the courier organization profile for the authenticated organization using the org_id from the JWT token.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(requestOptions: RequestOptions? = nil) async throws -> CourierOrgProfile3 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/org_profiles",
            requestOptions: requestOptions,
            responseType: CourierOrgProfile3.self
        )
    }

    /// Create a new courier organization profile. This endpoint will fail if a profile already exists for the organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.CourierOrgProfileClientCreate3, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/org_profiles/create",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Update an existing courier organization profile. Can update one or more fields. Profile must exist before updating.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(request: Requests.CourierOrgProfileClientUpdate3, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/org_profiles/update",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieve a courier organization profile using the organization's handle. This endpoint is used for public profile viewing.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByHandle(handle: String, requestOptions: RequestOptions? = nil) async throws -> CourierOrgProfile3 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/org_profiles/\(handle)",
            requestOptions: requestOptions,
            responseType: CourierOrgProfile3.self
        )
    }

    /// Returns the image URL from Clerk or a placeholder if not found.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getAvatar(handle: String, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/org_profiles/avatar/\(handle)",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}