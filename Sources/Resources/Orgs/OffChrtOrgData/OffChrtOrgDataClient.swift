import Foundation

public final class OffChrtOrgDataClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates owner-scoped off-CHRT organization data and, for shippers or providers, its required connection. | authz: allowed_org_types=[provider] | (CreateOffChrtOrgReq) -> (CreateOffChrtOrgRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.CreateOffChrtOrgReq, requestOptions: RequestOptions? = nil) async throws -> CreateOffChrtOrgRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/off_chrt_org_data/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateOffChrtOrgRes.self
        )
    }

    /// Lists off-CHRT organization data owned by the caller with optional organization-type filtering, identity search, sorting, and pagination. | authz: allowed_org_types=[provider] | () -> (OffChrtOrgDataListRes)
    ///
    /// - Parameter search: Search by name, industry, or email
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(search: String? = nil, filterOrgType: OrgTypeEnum? = nil, sortBy: OffChrtOrgDataSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> OffChrtOrgDataListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/off_chrt_org_data/list/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "filter_org_type": filterOrgType.map { .string($0.rawValue) }, 
                "sort_by": sortBy.map { .unknown($0) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: OffChrtOrgDataListRes.self
        )
    }

    /// Gets owner-scoped off-CHRT organization data by ID. | authz: allowed_org_types=[provider] | () -> (OffChrtOrgData1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(offChrtOrgDataId: String, requestOptions: RequestOptions? = nil) async throws -> OffChrtOrgData1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/off_chrt_org_data/v1/\(offChrtOrgDataId)",
            requestOptions: requestOptions,
            responseType: OffChrtOrgData1.self
        )
    }

    /// Updates canonical identity fields for owner-scoped off-CHRT organization data. | authz: allowed_org_types=[provider] | (OffChrtOrgDataClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateByIdV1(offChrtOrgDataId: String, request: Requests.OffChrtOrgDataClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/off_chrt_org_data/v1/\(offChrtOrgDataId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}