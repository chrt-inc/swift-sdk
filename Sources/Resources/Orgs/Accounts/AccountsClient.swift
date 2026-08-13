import Foundation

public final class AccountsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a coordinator-private account with a name unique to its associated shipper. Optional location may be set at creation. | authz: allowed_org_types=[provider], min_org_role=operator | (AccountClientCreate1) -> (PydanticObjectId)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.accounts.createV1(request: .init(
    ///         name: "name",
    ///         schemaVersion: 1
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Lists coordinator-created shipper accounts with association filters, name search, sorting, and pagination. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (AccountListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.accounts.listV1(
    ///         search: "search",
    ///         filterAccountId: "filter_account_id",
    ///         filterOrgId: "filter_org_id",
    ///         filterOffChrtOrgDataId: "filter_off_chrt_org_data_id",
    ///         sortBy: .name,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter search: Full-text account name search query
    /// - Parameter filterAccountId: Filter by account ID
    /// - Parameter filterOrgId: Filter by associated on-CHRT shipper organization
    /// - Parameter filterOffChrtOrgDataId: Filter by associated off-CHRT shipper organization data
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(search: String? = nil, filterAccountId: String? = nil, filterOrgId: String? = nil, filterOffChrtOrgDataId: String? = nil, sortBy: AccountSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> AccountListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/accounts/list/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "filter_account_id": filterAccountId.map { .string($0) }, 
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

    /// Returns distinct coordinator-created shipper account names matching the query, with matching account IDs. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[AccountTypeaheadResult])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.accounts.typeaheadV1(
    ///         query: "query",
    ///         limit: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter query: Typeahead search query
    /// - Parameter limit: Max results per field
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typeaheadV1(query: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [AccountTypeaheadResult] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/accounts/typeahead/v1",
            queryParams: [
                "query": .string(query), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [AccountTypeaheadResult].self
        )
    }

    /// Updates a coordinator-created shipper account name and optional location while preserving per-shipper name uniqueness. | authz: allowed_org_types=[provider], min_org_role=operator | (AccountClientUpdate1) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.accounts.updateV1(
    ///         accountId: "account_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
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
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.accounts.getV1(accountId: "account_id")
    /// }
    ///
    /// try await main()
    /// ```
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