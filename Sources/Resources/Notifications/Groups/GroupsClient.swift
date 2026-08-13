import Foundation

public final class GroupsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds a notification event to a channel for a group. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.notifications.groups.addEventV1(
    ///         groupId: "group_id",
    ///         channel: "email",
    ///         event: "shipping.order.staged"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addEventV1(groupId: String, channel: String, event: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/notifications/groups/add_event/v1/\(groupId)/\(channel)/\(event)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Adds a user to a notification group. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.notifications.groups.addUserV1(
    ///         groupId: "group_id",
    ///         userId: "user_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter userId: Must be a string starting with `user_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addUserV1(groupId: String, userId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/notifications/groups/add_user/v1/\(groupId)/\(userId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Creates a new notification group for the organization. | authz: min_org_role=administrator | (NotificationGroupClientCreate1) -> (PydanticObjectId)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.notifications.groups.createV1(request: .init(
    ///         groupName: "group_name",
    ///         schemaVersion: 1
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.NotificationGroupClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/notifications/groups/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Deletes a notification group. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.notifications.groups.deleteV1(groupId: "group_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(groupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/notifications/groups/delete/v1/\(groupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves full notification group details including user membership. | authz: min_org_role=operator | () -> (NotificationGroup1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.notifications.groups.getForAdministratorV1(groupId: "group_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getForAdministratorV1(groupId: String, requestOptions: RequestOptions? = nil) async throws -> NotificationGroup1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/notifications/groups/get_for_administrator/v1/\(groupId)",
            requestOptions: requestOptions,
            responseType: NotificationGroup1.self
        )
    }

    /// Retrieves limited notification group details for a group the caller is a member of. | () -> (NotificationGroupLimitedForDriver1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.notifications.groups.getForMemberV1(groupId: "group_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getForMemberV1(groupId: String, requestOptions: RequestOptions? = nil) async throws -> NotificationGroupLimitedForDriver1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/notifications/groups/get_for_member/v1/\(groupId)",
            requestOptions: requestOptions,
            responseType: NotificationGroupLimitedForDriver1.self
        )
    }

    /// Lists all notification groups for the caller's organization. | authz: min_org_role=operator | () -> (NotificationGroupListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.notifications.groups.listByOrgV1(
    ///         page: 1,
    ///         pageSize: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByOrgV1(page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> NotificationGroupListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/notifications/groups/list_by_org/v1",
            queryParams: [
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: NotificationGroupListRes.self
        )
    }

    /// Lists notification groups the caller is a member of. | () -> (NotificationGroupUserListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.notifications.groups.listByUserV1(
    ///         page: 1,
    ///         pageSize: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByUserV1(page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> NotificationGroupUserListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/notifications/groups/list_by_user/v1",
            queryParams: [
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: NotificationGroupUserListRes.self
        )
    }

    /// Removes a notification event from a channel for a group. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.notifications.groups.removeEventV1(
    ///         groupId: "group_id",
    ///         channel: "email",
    ///         event: "shipping.order.staged"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeEventV1(groupId: String, channel: String, event: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/notifications/groups/remove_event/v1/\(groupId)/\(channel)/\(event)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Removes a user from a notification group. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.notifications.groups.removeUserV1(
    ///         groupId: "group_id",
    ///         userId: "user_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter userId: Must be a string starting with `user_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeUserV1(groupId: String, userId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/notifications/groups/remove_user/v1/\(groupId)/\(userId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates the name of a notification group. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.notifications.groups.updateNameV1(
    ///         groupId: "group_id",
    ///         groupName: "group_name"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateNameV1(groupId: String, groupName: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/notifications/groups/update_name/v1/\(groupId)",
            queryParams: [
                "group_name": .string(groupName)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Opts the caller back into notifications for a group they were opted out of. | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.notifications.groups.userOptInV1(groupId: "group_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func userOptInV1(groupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/notifications/groups/user_opt_in/v1/\(groupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Opts the caller out of notifications for a group. | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.notifications.groups.userOptOutV1(groupId: "group_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func userOptOutV1(groupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/notifications/groups/user_opt_out/v1/\(groupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}