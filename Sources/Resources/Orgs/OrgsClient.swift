import Foundation

public final class OrgsClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves basic organization information from the authentication service.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getInfo(requestOptions: RequestOptions? = nil) async throws -> JSONValue {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/info",
            requestOptions: requestOptions,
            responseType: JSONValue.self
        )
    }

    /// Lists all members of the authenticated organization with their roles and details.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listMembers(requestOptions: RequestOptions? = nil) async throws -> [OrgMemberDetails] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/members/list",
            requestOptions: requestOptions,
            responseType: [OrgMemberDetails].self
        )
    }

    /// Retrieves public organization data for the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getPublicData(requestOptions: RequestOptions? = nil) async throws -> OrgPublicData2 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/public_data",
            requestOptions: requestOptions,
            responseType: OrgPublicData2.self
        )
    }

    /// Retrieves public organization data for a specific organization by ID.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getPublicDataByOrgId(orgId: String, requestOptions: RequestOptions? = nil) async throws -> OrgPublicData2 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/public_data/\(orgId)",
            requestOptions: requestOptions,
            responseType: OrgPublicData2.self
        )
    }

    /// Retrieves the organization handle for the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getHandle(requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/handle",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Checks if an organization handle is available for use.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getHandleAvailability(handle: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/handle/availability/\(handle)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Creates public organization data with handle and company name for the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createPublicData(request: CreateOrgPublicDataReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/public_data/create",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates the organization handle or company name for the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updatePublicData(request: UpdateOrgPublicDataReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/public_data/update",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}