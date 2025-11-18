import Foundation

public final class TaskGroupByDriverClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the most recent driver location data point for a task group. Access granted to courier or shipper organization. Data written by the driver update endpoint. | () -> (TrackingTaskGroupByDriverDataPoint1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> TrackingTaskGroupByDriverDataPoint1? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/task_group_by_driver/last_seen/v1",
            queryParams: [
                "task_group_id": .string(taskGroupId)
            ],
            requestOptions: requestOptions,
            responseType: TrackingTaskGroupByDriverDataPoint1?.self
        )
    }
}