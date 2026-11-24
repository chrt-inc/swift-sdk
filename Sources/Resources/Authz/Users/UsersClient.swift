import Foundation

public final class UsersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Gives a user one CHRT-managed role in the caller's organization, preserving their other access assignments. | authz: cedar=updateUserAccess | () -> (User1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.users.addChrtManagedRoleV1(
    ///         userId: "user_id",
    ///         chrtManagedRole: "viewer"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter userId: Must be a string starting with `user_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addChrtManagedRoleV1(userId: String, chrtManagedRole: String, requestOptions: RequestOptions? = nil) async throws -> User1 {
        return try await httpClient.performRequest(
            method: .put,
            path: "/authz/users/chrt_managed_roles/v1/\(userId)/\(chrtManagedRole)",
            requestOptions: requestOptions,
            responseType: User1.self
        )
    }

    /// Takes one CHRT-managed role away from a user in the caller's organization, preserving their other access assignments. | authz: cedar=updateUserAccess | () -> (User1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.users.removeChrtManagedRoleV1(
    ///         userId: "user_id",
    ///         chrtManagedRole: "viewer"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter userId: Must be a string starting with `user_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeChrtManagedRoleV1(userId: String, chrtManagedRole: String, requestOptions: RequestOptions? = nil) async throws -> User1 {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/authz/users/chrt_managed_roles/v1/\(userId)/\(chrtManagedRole)",
            requestOptions: requestOptions,
            responseType: User1.self
        )
    }

    /// Gives a user one of the organization's custom roles, preserving their other access assignments. | authz: cedar=updateUserAccess | () -> (User1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.users.addCustomRoleV1(
    ///         userId: "user_id",
    ///         customRoleId: "custom_role_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter userId: Must be a string starting with `user_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addCustomRoleV1(userId: String, customRoleId: String, requestOptions: RequestOptions? = nil) async throws -> User1 {
        return try await httpClient.performRequest(
            method: .put,
            path: "/authz/users/custom_roles/v1/\(userId)/\(customRoleId)",
            requestOptions: requestOptions,
            responseType: User1.self
        )
    }

    /// Takes one custom role away from a user in the caller's organization, preserving their other access assignments. | authz: cedar=updateUserAccess | () -> (User1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.users.removeCustomRoleV1(
    ///         userId: "user_id",
    ///         customRoleId: "custom_role_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter userId: Must be a string starting with `user_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeCustomRoleV1(userId: String, customRoleId: String, requestOptions: RequestOptions? = nil) async throws -> User1 {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/authz/users/custom_roles/v1/\(userId)/\(customRoleId)",
            requestOptions: requestOptions,
            responseType: User1.self
        )
    }

    /// Lists the caller's own catalog permission grants and the org-level authz actions they may take, such as listing users or creating groups. | () -> (AuthzUserSelfRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.users.getSelfV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getSelfV1(requestOptions: RequestOptions? = nil) async throws -> AuthzUserSelfRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/authz/users/get/self/v1",
            requestOptions: requestOptions,
            responseType: AuthzUserSelfRes.self
        )
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

    /// Lists provisioned authz users with their group and custom role names, filtered by user, group, and roles held directly or through groups. Filters combine with AND. | authz: cedar=listUsers | () -> (UserListRes)
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
    ///         filterUserIds: [
    ///             "filter_user_ids"
    ///         ],
    ///         filterGroupId: "filter_group_id",
    ///         filterChrtManagedRole: .viewer,
    ///         filterCustomRoleId: "filter_custom_role_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter filterUserIds: Filter by WorkOS user ID(s), e.g. from the users typeahead
    /// - Parameter filterGroupId: Filter by group membership
    /// - Parameter filterChrtManagedRole: Filter by exact CHRT-managed role, directly or through groups
    /// - Parameter filterCustomRoleId: Filter by custom role, directly or through groups
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(page: Int? = nil, pageSize: Int? = nil, sortBy: UserSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, filterUserIds: [String]? = nil, filterGroupId: String? = nil, filterChrtManagedRole: ChrtManagedRoleEnum1? = nil, filterCustomRoleId: String? = nil, requestOptions: RequestOptions? = nil) async throws -> UserListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/authz/users/list/v1",
            queryParams: [
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "sort_by": sortBy.map { .unknown($0) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "filter_user_ids": filterUserIds.map { .stringArray($0) }, 
                "filter_group_id": filterGroupId.map { .string($0) }, 
                "filter_chrt_managed_role": filterChrtManagedRole.map { .string($0.rawValue) }, 
                "filter_custom_role_id": filterCustomRoleId.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: UserListRes.self
        )
    }

    /// Lists catalog permission grants and their role/group sources, and flags assigned ids that no longer resolve, excluding resource-specific decisions and WorkOS administration rights. | authz: cedar=readUser | () -> (AuthzUserPermissionsRes)
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

    /// Returns matching display_name, email_address values and their WorkOS user IDs among the organization's provisioned authz users. | authz: cedar=listUsers | () -> (list[UserTypeaheadResult])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.users.typeaheadV1(
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
    public func typeaheadV1(query: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [UserTypeaheadResult] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/authz/users/typeahead/v1",
            queryParams: [
                "query": .string(query), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [UserTypeaheadResult].self
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