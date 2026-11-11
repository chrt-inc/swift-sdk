import Foundation

public final class GroupsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates an authz group in the caller's organization; a group's roles pass to every member. | authz: cedar=createGroup | (GroupClientCreate1) -> (Group1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.groups.createV1(request: .init(
    ///         name: "name",
    ///         schemaVersion: 1
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.GroupClientCreate1, requestOptions: RequestOptions? = nil) async throws -> Group1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/authz/groups/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Group1.self
        )
    }

    /// Retrieves one authz group. | authz: cedar=readGroup | () -> (Group1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.groups.getV1(groupId: "group_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(groupId: String, requestOptions: RequestOptions? = nil) async throws -> Group1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/authz/groups/get/v1/\(groupId)",
            requestOptions: requestOptions,
            responseType: Group1.self
        )
    }

    /// Lists the authz groups in the caller's organization. | authz: cedar=listGroups | () -> (GroupListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.groups.listV1(
    ///         page: 1,
    ///         pageSize: 1,
    ///         sortBy: .name,
    ///         sortOrder: .asc
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(page: Int? = nil, pageSize: Int? = nil, sortBy: GroupSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, requestOptions: RequestOptions? = nil) async throws -> GroupListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/authz/groups/list/v1",
            queryParams: [
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: GroupListRes.self
        )
    }

    /// Updates an authz group's name, description, CHRT-managed roles, or custom roles. | authz: cedar=updateGroup | (GroupClientUpdate1) -> (Group1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.groups.updateV1(
    ///         groupId: "group_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(groupId: String, request: Requests.GroupClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Group1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/authz/groups/update/v1/\(groupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Group1.self
        )
    }
}