import Foundation

public final class OrgsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves basic organization information from the authentication service.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getInfoV1(requestOptions: RequestOptions? = nil) async throws -> JSONValue {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/info/v1",
            requestOptions: requestOptions,
            responseType: JSONValue.self
        )
    }

    /// Lists all members of the authenticated organization with their roles and details.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listMembersV1(requestOptions: RequestOptions? = nil) async throws -> [OrgMemberDetails] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/members/list/v1",
            requestOptions: requestOptions,
            responseType: [OrgMemberDetails].self
        )
    }

    /// Retrieves public organization data for the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getPublicDataV1(requestOptions: RequestOptions? = nil) async throws -> OrgPublicData2 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/public_data/v1",
            requestOptions: requestOptions,
            responseType: OrgPublicData2.self
        )
    }

    /// Retrieves public organization data for a specific organization by ID.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getPublicDataByOrgIdV1(orgId: String, requestOptions: RequestOptions? = nil) async throws -> OrgPublicData2 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/public_data/v1/\(orgId)",
            requestOptions: requestOptions,
            responseType: OrgPublicData2.self
        )
    }

    /// Retrieves the organization handle for the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getHandleV1(requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/handle/v1",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Checks if an organization handle is available for use.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getHandleAvailabilityV1(handle: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/handle/availability/v1/\(handle)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Creates public organization data with handle and company name for the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createPublicDataV1(request: Requests.CreateOrgPublicDataReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/public_data/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates the organization handle or company name for the authenticated organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updatePublicDataV1(request: Requests.UpdateOrgPublicDataReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/public_data/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}