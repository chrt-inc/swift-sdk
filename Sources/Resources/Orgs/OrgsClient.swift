import Foundation

public final class OrgsClient: Sendable {
    public let connections: ConnectionsClient
    public let offChrtShipperOrg: OffChrtShipperOrgClient
    public let privateData: PrivateDataClient
    public let orgProfiles: OrgProfilesClient
    public let publicData: PublicDataClient
    public let orgInfoForConnections: OrgInfoForConnectionsClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.connections = ConnectionsClient(config: config)
        self.offChrtShipperOrg = OffChrtShipperOrgClient(config: config)
        self.privateData = PrivateDataClient(config: config)
        self.orgProfiles = OrgProfilesClient(config: config)
        self.publicData = PublicDataClient(config: config)
        self.orgInfoForConnections = OrgInfoForConnectionsClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves basic organization information from the authentication service. | () -> (OrgInfoResponse)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getInfoV1(requestOptions: RequestOptions? = nil) async throws -> OrgInfoResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/info/v1",
            requestOptions: requestOptions,
            responseType: OrgInfoResponse.self
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