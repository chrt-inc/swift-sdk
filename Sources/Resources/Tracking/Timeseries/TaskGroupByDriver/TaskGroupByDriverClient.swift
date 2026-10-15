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

    /// Returns the last-seen location and status for a publicly shared task group by its public link token. No authentication required; returns 410 once the link has expired. | () -> (TaskGroupByDriverLastSeenPublicRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.timeseries.taskGroupByDriver.lastSeenPublicV2(publicLinkToken: "public_link_token")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenPublicV2(publicLinkToken: String, requestOptions: RequestOptions? = nil) async throws -> TaskGroupByDriverLastSeenPublicRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/timeseries/task_group_by_driver/last_seen_public/v2/\(publicLinkToken)",
            requestOptions: requestOptions,
            responseType: TaskGroupByDriverLastSeenPublicRes.self
        )
    }
}