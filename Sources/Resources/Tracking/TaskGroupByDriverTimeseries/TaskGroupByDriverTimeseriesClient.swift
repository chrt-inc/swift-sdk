import Foundation

public final class TaskGroupByDriverTimeseriesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the most recent driver location data point for a task group. Access granted to courier or shipper organization. Data written by the driver update endpoint. | () -> (TaskGroupByDriverDataPoint1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> TaskGroupByDriverDataPoint1? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/task_group_by_driver_timeseries/last_seen/v1",
            queryParams: [
                "task_group_id": .string(taskGroupId)
            ],
            requestOptions: requestOptions,
            responseType: TaskGroupByDriverDataPoint1?.self
        )
    }

    /// Returns up to the specified number of data points for a task group, intelligently sampled across the time range. Excludes outliers. | () -> (list[TaskGroupByDriverDataPoint1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func dataPointsV1(taskGroupId: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [TaskGroupByDriverDataPoint1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/task_group_by_driver_timeseries/data_points/v1",
            queryParams: [
                "task_group_id": .string(taskGroupId), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [TaskGroupByDriverDataPoint1].self
        )
    }

    /// Returns the most recent driver location data point for a public task group. No authentication required if task group has public visibility enabled via sharing settings. | () -> (TaskGroupByDriverDataPoint1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenPublicV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> TaskGroupByDriverDataPoint1? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/task_group_by_driver_timeseries/last_seen_public/v1",
            queryParams: [
                "task_group_id": .string(taskGroupId)
            ],
            requestOptions: requestOptions,
            responseType: TaskGroupByDriverDataPoint1?.self
        )
    }

    /// Returns up to the specified number of data points for a public task group, intelligently sampled across the time range. Excludes outliers. No authentication required if task group has public visibility enabled via sharing settings. | () -> (list[TaskGroupByDriverDataPoint1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func dataPointsPublicV1(taskGroupId: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [TaskGroupByDriverDataPoint1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/task_group_by_driver_timeseries/data_points_public/v1",
            queryParams: [
                "task_group_id": .string(taskGroupId), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [TaskGroupByDriverDataPoint1].self
        )
    }
}