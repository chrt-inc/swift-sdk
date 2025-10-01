import Foundation

public final class TaskGroupByDriverClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the most recent data point in tracking.task_group_by_driver for the given task_group_id. Data is written by the unified /driver/update endpoint.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeen(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Nullable<TrackingTaskGroupByDriverDataPoint1> {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/task_group_by_driver/last_seen",
            queryParams: [
                "task_group_id": .string(taskGroupId)
            ],
            requestOptions: requestOptions,
            responseType: Nullable<TrackingTaskGroupByDriverDataPoint1>.self
        )
    }
}