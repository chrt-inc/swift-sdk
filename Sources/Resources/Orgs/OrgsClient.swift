import Foundation

public final class OrgsClient: Sendable {
    public let complianceDocuments: ComplianceDocumentsClient
    public let connections: ConnectionsClient
    public let directoryEntries: DirectoryEntriesClient
    public let offChrtOrgData: OffChrtOrgDataClient
    public let offChrtVendor: OffChrtVendorClient
    public let privateData: PrivateDataClient
    public let publicData: PublicDataClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.complianceDocuments = ComplianceDocumentsClient(config: config)
        self.connections = ConnectionsClient(config: config)
        self.directoryEntries = DirectoryEntriesClient(config: config)
        self.offChrtOrgData = OffChrtOrgDataClient(config: config)
        self.offChrtVendor = OffChrtVendorClient(config: config)
        self.privateData = PrivateDataClient(config: config)
        self.publicData = PublicDataClient(config: config)
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

    /// Lists all members of the caller's organization with their roles and details. Supports search by name, filtering by role, sorting, and pagination. | () -> (OrgMemberListRes)
    ///
    /// - Parameter filterRole: Filter by organization role(s)
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter search: Search by first or last name
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listMembersV1(filterRole: OrgRoleEnum? = nil, sortBy: OrgMemberSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, requestOptions: RequestOptions? = nil) async throws -> OrgMemberListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/members/list/v1",
            queryParams: [
                "filter_role": filterRole.map { .string($0.rawValue) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: OrgMemberListRes.self
        )
    }

    /// Single onboarding entry point. Sets `org_type` in WorkOS JWT metadata (immutable once set) and idempotently creates `org_private_data` + `org_public_data` for the caller's organization. Required `name` and optional `description` and `handle` populate the public doc on first call; later updates go through PATCH /orgs/org_public_data/v1. Returns True on success (including idempotent retries), 400 on org_type conflict or handle collision. | (SetupOrgReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setupOrgV1(request: Requests.SetupOrgReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/setup_org/v1",
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