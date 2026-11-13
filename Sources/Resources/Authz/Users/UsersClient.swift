import Foundation

public final class UsersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves a user's access in the caller's organization: their roles, custom roles, and groups. | authz: cedar=readUser | () -> (User1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.users.getV1(userId: "user_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter userId: Must be a string starting with `user_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(userId: String, requestOptions: RequestOptions? = nil) async throws -> User1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/authz/users/get/v1/\(userId)",
            requestOptions: requestOptions,
            responseType: User1.self
        )
    }

    /// Adds a user to a group in the caller's organization, preserving their other access assignments. | authz: cedar=updateUserAccess | () -> (User1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.users.addGroupV1(
    ///         userId: "user_id",
    ///         groupId: "group_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter userId: Must be a string starting with `user_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addGroupV1(userId: String, groupId: String, requestOptions: RequestOptions? = nil) async throws -> User1 {
        return try await httpClient.performRequest(
            method: .put,
            path: "/authz/users/groups/v1/\(userId)/\(groupId)",
            requestOptions: requestOptions,
            responseType: User1.self
        )
    }

    /// Removes a user from a group in the caller's organization, preserving their other access assignments. | authz: cedar=updateUserAccess | () -> (User1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.users.removeGroupV1(
    ///         userId: "user_id",
    ///         groupId: "group_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter userId: Must be a string starting with `user_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeGroupV1(userId: String, groupId: String, requestOptions: RequestOptions? = nil) async throws -> User1 {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/authz/users/groups/v1/\(userId)/\(groupId)",
            requestOptions: requestOptions,
            responseType: User1.self
        )
    }

    /// Lists provisioned authz users by group and roles assigned directly or through groups. Filters combine with AND. | authz: cedar=listUsers | () -> (UserListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.users.listV1(
    ///         page: 1,
    ///         pageSize: 1,
    ///         sortBy: .displayName,
    ///         sortOrder: .asc,
    ///         filterGroupId: "filter_group_id",
    ///         filterChrtManagedRole: .superUser,
    ///         filterCustomRoleId: "filter_custom_role_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter filterGroupId: Filter by group membership
    /// - Parameter filterChrtManagedRole: Filter by exact CHRT-managed role, directly or through groups
    /// - Parameter filterCustomRoleId: Filter by custom role, directly or through groups
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(page: Int? = nil, pageSize: Int? = nil, sortBy: UserSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, filterGroupId: String? = nil, filterChrtManagedRole: ChrtManagedRoleEnum1? = nil, filterCustomRoleId: String? = nil, requestOptions: RequestOptions? = nil) async throws -> UserListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/authz/users/list/v1",
            queryParams: [
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "sort_by": sortBy.map { .unknown($0) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "filter_group_id": filterGroupId.map { .string($0) }, 
                "filter_chrt_managed_role": filterChrtManagedRole.map { .string($0.rawValue) }, 
                "filter_custom_role_id": filterCustomRoleId.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: UserListRes.self
        )
    }

    /// Lists catalog permission grants and their role/group sources, excluding resource-specific decisions and WorkOS administration rights. | authz: cedar=readUser | () -> (AuthzUserPermissionsRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.users.getPermissionsV1(userId: "user_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter userId: Must be a string starting with `user_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getPermissionsV1(userId: String, requestOptions: RequestOptions? = nil) async throws -> AuthzUserPermissionsRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/authz/users/permissions/v1/\(userId)",
            requestOptions: requestOptions,
            responseType: AuthzUserPermissionsRes.self
        )
    }

    /// Changes a user's CHRT-managed roles, custom roles, or groups in the caller's organization. | authz: cedar=updateUserAccess | (UserClientUpdate1) -> (User1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.users.updateAccessV1(
    ///         userId: "user_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter userId: Must be a string starting with `user_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateAccessV1(userId: String, request: Requests.UserClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> User1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/authz/users/update_access/v1/\(userId)",
            body: request,
            requestOptions: requestOptions,
            responseType: User1.self
        )
    }
}