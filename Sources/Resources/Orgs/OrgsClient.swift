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

    /// Lists all members of the caller's organization with their roles and details. | () -> (list[OrgMemberDetails])
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

    /// Retrieves private organization data for the caller's organization. | authz: min_org_role=operator | () -> (OrgPrivateData1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getOrgPrivateDataV1(requestOptions: RequestOptions? = nil) async throws -> OrgPrivateData1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/org_private_data/v1",
            requestOptions: requestOptions,
            responseType: OrgPrivateData1.self
        )
    }

    /// Retrieves public organization data for the caller's organization. | () -> (OrgPublicData1)
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

    /// Creates org_public_data and org_private_data documents for the caller's organization using org_type from JWT. | (CreateOrgPublicDataReq) -> (CreateOrgPublicDataRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createOrgPublicDataV1(request: Requests.CreateOrgPublicDataReq, requestOptions: RequestOptions? = nil) async throws -> CreateOrgPublicDataRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/org_public_data/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateOrgPublicDataRes.self
        )
    }

    /// Updates the handle and/or company_name for the caller's organization. | (UpdateOrgPublicDataReq) -> (bool)
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
            path: "/orgs/org_public_data/handle_availability/v1/\(handle)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets the org_type in Clerk's JWT public metadata. Returns True if already set and matching, sets it if not present, or raises exception if conflicting. | (SetOrgTypeReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setOrgTypeV1(request: Requests.SetOrgTypeReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/set_org_type/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves the Stripe Connect account ID for the caller's organization. Returns 404 if not set. | () -> (str)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getStripeConnectAccountIdV1(requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/stripe_connect_account_id/v1",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}