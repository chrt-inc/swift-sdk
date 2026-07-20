import Foundation

public final class AccountsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a coordinator-private account for a connected on- or off-CHRT shipper. | authz: allowed_org_types=[provider], min_org_role=operator | (AccountClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.AccountClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/accounts/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Lists coordinator-created shipper accounts with association filters, sorting, and pagination. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (AccountListRes)
    ///
    /// - Parameter filterOrgId: Filter by associated on-CHRT shipper organization
    /// - Parameter filterOffChrtOrgDataId: Filter by associated off-CHRT shipper organization data
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(filterOrgId: String? = nil, filterOffChrtOrgDataId: String? = nil, sortBy: AccountSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> AccountListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/accounts/list/v1",
            queryParams: [
                "filter_org_id": filterOrgId.map { .string($0) }, 
                "filter_off_chrt_org_data_id": filterOffChrtOrgDataId.map { .string($0) }, 
                "sort_by": sortBy.map { .unknown($0) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: AccountListRes.self
        )
    }

    /// Updates the name of a coordinator-created shipper account. | authz: allowed_org_types=[provider], min_org_role=operator | (AccountClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(accountId: String, request: Requests.AccountClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/accounts/update/v1/\(accountId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves a coordinator-created shipper account. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (Account1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(accountId: String, requestOptions: RequestOptions? = nil) async throws -> Account1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/accounts/v1/\(accountId)",
            requestOptions: requestOptions,
            responseType: Account1.self
        )
    }
}