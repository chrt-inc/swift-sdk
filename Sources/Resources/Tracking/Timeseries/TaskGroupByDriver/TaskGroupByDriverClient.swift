import Foundation

public final class TaskGroupByDriverClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the most recent driver location data point for a task group. | authz_personas=[forwarder_org_operators, shipper_org_operators, courier_org_operators, courier_driver] | () -> (TaskGroupByDriverDataPoint1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> TaskGroupByDriverDataPoint1? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/timeseries/task_group_by_driver/last_seen/v1",
            queryParams: [
                "task_group_id": .string(taskGroupId)
            ],
            requestOptions: requestOptions,
            responseType: TaskGroupByDriverDataPoint1?.self
        )
    }

    /// Returns sampled driver location data points for a task group. Excludes outliers. | authz_personas=[forwarder_org_operators, shipper_org_operators, courier_org_operators, courier_driver] | () -> (list[TaskGroupByDriverDataPoint1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func dataPointsV1(taskGroupId: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [TaskGroupByDriverDataPoint1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/timeseries/task_group_by_driver/data_points/v1",
            queryParams: [
                "task_group_id": .string(taskGroupId), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [TaskGroupByDriverDataPoint1].self
        )
    }

    /// Returns the most recent driver location data point for a publicly shared task group. No authentication required. | () -> (TaskGroupByDriverDataPoint1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenPublicV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> TaskGroupByDriverDataPoint1? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/timeseries/task_group_by_driver/last_seen_public/v1",
            queryParams: [
                "task_group_id": .string(taskGroupId)
            ],
            requestOptions: requestOptions,
            responseType: TaskGroupByDriverDataPoint1?.self
        )
    }

    /// Returns sampled driver location data points for a publicly shared task group. Excludes outliers. No authentication required. | () -> (list[TaskGroupByDriverDataPoint1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func dataPointsPublicV1(taskGroupId: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [TaskGroupByDriverDataPoint1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/timeseries/task_group_by_driver/data_points_public/v1",
            queryParams: [
                "task_group_id": .string(taskGroupId), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [TaskGroupByDriverDataPoint1].self
        )
    }
}