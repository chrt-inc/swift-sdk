import Foundation

public final class OrgsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves basic organization information from the authentication service. | () -> (dict)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getInfoV1(requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/info/v1",
            requestOptions: requestOptions,
            responseType: [String: JSONValue].self
        )
    }

    /// Lists all members of the authenticated organization with their roles and details. | () -> (list[OrgMemberDetails])
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

    /// Retrieves public organization data for the authenticated organization. | () -> (OrgPublicData1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getOrgPublicDataV1(requestOptions: RequestOptions? = nil) async throws -> OrgPublicData1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/org_public_data/v1",
            requestOptions: requestOptions,
            responseType: OrgPublicData1.self
        )
    }

    /// Creates an org_public_data document for the authenticated organization. | (CreateOrgPublicDataReq) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createOrgPublicDataV1(request: Requests.CreateOrgPublicDataReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/org_public_data/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates the handle and/or company_name for the authenticated organization. | (UpdateOrgPublicDataReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateOrgPublicDataV1(request: Requests.UpdateOrgPublicDataReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/org_public_data/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves public organization data for a specific organization by ID. | () -> (OrgPublicData1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getOrgPublicDataByOrgIdV1(orgId: String, requestOptions: RequestOptions? = nil) async throws -> OrgPublicData1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/org_public_data/v1/\(orgId)",
            requestOptions: requestOptions,
            responseType: OrgPublicData1.self
        )
    }

    /// Returns True when the provided handle is available, otherwise False. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getOrgPublicDataHandleAvailabilityV1(handle: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/org_public_data/handle_available/v1/\(handle)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}