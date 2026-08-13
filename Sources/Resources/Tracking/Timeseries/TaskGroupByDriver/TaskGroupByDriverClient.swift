import Foundation

public final class TaskGroupByDriverClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns sampled driver location data points and the unique drivers for a task group. Excludes outliers. | auth: api_key | authz_personas=[coordinator_org_operators, shipper_org_operators, executor_org_operators, driver_for_executor] | () -> (TaskGroupByDriverDataPointsRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.timeseries.taskGroupByDriver.dataPointsV1(
    ///         taskGroupId: "task_group_id",
    ///         limit: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func dataPointsV1(taskGroupId: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> TaskGroupByDriverDataPointsRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/timeseries/task_group_by_driver/data_points/v1",
            queryParams: [
                "task_group_id": .string(taskGroupId), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: TaskGroupByDriverDataPointsRes.self
        )
    }

    /// Returns sampled driver location data points for a publicly shared task group. Excludes outliers. No authentication required. | () -> (list[TaskGroupByDriverDataPoint1])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.timeseries.taskGroupByDriver.dataPointsPublicV1(
    ///         taskGroupId: "task_group_id",
    ///         limit: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Returns the most recent driver location data point and driver for a task group. | auth: api_key | authz_personas=[coordinator_org_operators, shipper_org_operators, executor_org_operators, driver_for_executor] | () -> (TaskGroupByDriverLastSeenRes | None)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.timeseries.taskGroupByDriver.lastSeenV1(taskGroupId: "task_group_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> TaskGroupByDriverLastSeenRes? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/timeseries/task_group_by_driver/last_seen/v1",
            queryParams: [
                "task_group_id": .string(taskGroupId)
            ],
            requestOptions: requestOptions,
            responseType: TaskGroupByDriverLastSeenRes?.self
        )
    }

    /// Returns the most recent driver location data point for a publicly shared task group. No authentication required. | () -> (TaskGroupByDriverDataPoint1 | None)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.timeseries.taskGroupByDriver.lastSeenPublicV1(taskGroupId: "task_group_id")
    /// }
    ///
    /// try await main()
    /// ```
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
}