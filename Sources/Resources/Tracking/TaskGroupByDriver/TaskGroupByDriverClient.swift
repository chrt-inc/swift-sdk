import Foundation

public final class TaskGroupByDriverClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the most recent data point in tracking.task_group_by_driver for the given task_group_id.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeen(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Nullable<TrackingTaskGroupByDriverDataPoint1>? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/task_group_by_driver/last_seen",
            queryParams: [
                "task_group_id": .string(taskGroupId)
            ],
            requestOptions: requestOptions,
            responseType: Nullable<TrackingTaskGroupByDriverDataPoint1>?.self
        )
    }

    /// Writes a data point to tracking.task_group_by_driver when the task group is in progress.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(request: Requests.TaskGroupByDriverUpdateReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/task_group_by_driver/update",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}