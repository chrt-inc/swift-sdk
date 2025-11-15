import Foundation

public final class OrgProfilesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves the courier or forwarder organization profile for the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(requestOptions: RequestOptions? = nil) async throws -> OrgProfileRes1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/connections/org_profiles/v1",
            requestOptions: requestOptions,
            responseType: OrgProfileRes1.self
        )
    }

    /// Creates a new courier organization profile. Fails if a profile already exists for the organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createCourierV1(request: Requests.CourierOrgProfileClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/connections/org_profiles/courier/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Creates a new forwarder organization profile. Fails if a profile already exists for the organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createForwarderV1(request: Requests.ForwarderOrgProfileClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/connections/org_profiles/forwarder/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates an existing courier organization profile. Can update one or more fields.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateCourierV1(request: Requests.CourierOrgProfileClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/connections/org_profiles/courier/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates an existing forwarder organization profile. Can update one or more fields.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateForwarderV1(request: Requests.ForwarderOrgProfileClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/connections/org_profiles/forwarder/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves a courier or forwarder organization profile using the organization's handle for public profile viewing.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByHandleV1(handle: String, requestOptions: RequestOptions? = nil) async throws -> OrgProfileRes1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/connections/org_profiles/v1/\(handle)",
            requestOptions: requestOptions,
            responseType: OrgProfileRes1.self
        )
    }

    /// Returns the organization avatar image URL from Clerk or a placeholder if not found.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getAvatarV1(handle: String, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/connections/org_profiles/avatar/v1/\(handle)",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}