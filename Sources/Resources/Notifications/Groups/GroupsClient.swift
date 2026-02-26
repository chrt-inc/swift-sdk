import Foundation

public final class GroupsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists all notification groups for the caller's organization. | authz: min_org_role=operator | () -> (list[NotificationGroup1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByOrgV1(requestOptions: RequestOptions? = nil) async throws -> [NotificationGroup1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/notifications/groups/list_by_org/v1",
            requestOptions: requestOptions,
            responseType: [NotificationGroup1].self
        )
    }

    /// Retrieves full notification group details including user membership. | authz: min_org_role=operator | () -> (NotificationGroup1)
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

    /// Lists notification groups the caller is a member of. | () -> (list[NotificationGroupLimitedForDriver1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByUserV1(requestOptions: RequestOptions? = nil) async throws -> [NotificationGroupLimitedForDriver1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/notifications/groups/list_by_user/v1",
            requestOptions: requestOptions,
            responseType: [NotificationGroupLimitedForDriver1].self
        )
    }

    /// Retrieves limited notification group details for a group the caller is a member of. | () -> (NotificationGroupLimitedForDriver1)
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

    /// Creates a new notification group for the organization. | authz: min_org_role=administrator | (NotificationGroupClientCreate1) -> (PydanticObjectId)
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

    /// Updates the name of a notification group. | authz: min_org_role=administrator | () -> (bool)
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

    /// Adds a notification event to a channel for a group. | authz: min_org_role=administrator | () -> (bool)
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

    /// Removes a notification event from a channel for a group. | authz: min_org_role=administrator | () -> (bool)
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

    /// Adds a user to a notification group. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addUserV1(groupId: String, userId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/notifications/groups/add_user/v1/\(groupId)/\(userId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Removes a user from a notification group. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeUserV1(groupId: String, userId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/notifications/groups/remove_user/v1/\(groupId)/\(userId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes a notification group. | authz: min_org_role=administrator | () -> (bool)
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

    /// Opts the caller back into notifications for a group they were opted out of. | () -> (bool)
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