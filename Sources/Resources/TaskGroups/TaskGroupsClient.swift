import Foundation

public final class TaskGroupsClient: Sendable {
    public let expanded: TaskGroupsExpandedClient
    public let expandedList: TaskGroupsExpandedListClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.expanded = TaskGroupsExpandedClient(config: config)
        self.expandedList = TaskGroupsExpandedListClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Updates task group driver assignments by adding or removing drivers.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.UpdateTaskGroupReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Starts a task group by changing its status to in-progress and updating the order status. Only authorized personas (task_group_driver or task_group_courier_org_administrator) can start a task group.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func startV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/oort/task_groups/start/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Toggles the pause status of an in-progress task group.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func togglePauseV1(id: String, request: Requests.SetTaskGroupPauseReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/oort/task_groups/toggle_pause/v1/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}