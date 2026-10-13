import Foundation

public final class AirlineCargoAccountsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Archives an airline cargo account of the caller's organization so it can no longer be booked under. | authz: min_org_role=admin | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.airlineCargoAccounts.archiveV1(airlineCargoAccountId: "airline_cargo_account_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func archiveV1(airlineCargoAccountId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/airline_cargo_accounts/archive/v1/\(airlineCargoAccountId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Lists the caller's organization's airline cargo accounts (e.g. its Air Canada cargo account), active or archived. | () -> (AirlineCargoAccountListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.airlineCargoAccounts.listV1(
    ///         filterArchived: true,
    ///         sortBy: .createdAtTimestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter filterArchived: List archived accounts instead of active accounts.
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(filterArchived: Bool? = nil, sortBy: AirlineCargoAccountSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> AirlineCargoAccountListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/airline_cargo_accounts/list/v1",
            queryParams: [
                "filter_archived": filterArchived.map { .bool($0) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: AirlineCargoAccountListRes.self
        )
    }

    /// Updates the name of an airline cargo account of the caller's organization. | authz: min_org_role=admin | (AirlineCargoAccountClientUpdate1) -> (AirlineCargoAccount1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.airlineCargoAccounts.updateV1(
    ///         airlineCargoAccountId: "airline_cargo_account_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(airlineCargoAccountId: String, request: Requests.AirlineCargoAccountClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> AirlineCargoAccount1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/airline_cargo_accounts/update/v1/\(airlineCargoAccountId)",
            body: request,
            requestOptions: requestOptions,
            responseType: AirlineCargoAccount1.self
        )
    }
}