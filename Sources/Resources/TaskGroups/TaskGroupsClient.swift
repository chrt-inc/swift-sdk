import Foundation

public final class TaskGroupsClient: Sendable {
    public let expanded: ExpandedClient
    public let expandedList: ExpandedListClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.expanded = ExpandedClient(config: config)
        self.expandedList = ExpandedListClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Updates task group driver assignments by adding or removing drivers.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.UpdateTaskGroupReq, requestOptions: RequestOptions? = nil) async throws -> UpdateTaskGroupRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdateTaskGroupRes.self
        )
    }

    /// Starts a task group by changing its status to in-progress and updating the order status.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func startV1(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/oort/task_groups/start/v1/\(id)",
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