import Foundation

public final class CargoByDriverClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns up to the specified number of data points for a cargo within a task group, intelligently sampled across the time range. Excludes outliers. | auth: api_key | authz_personas=[coordinator_org_operators, shipper_org_operators, executor_org_operators, driver_for_executor] | () -> (list[CargoByDriverDataPoint1])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.timeseries.cargoByDriver.dataPointsV1(
    ///         cargoId: "cargo_id",
    ///         taskGroupId: "task_group_id",
    ///         limit: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func dataPointsV1(cargoId: String, taskGroupId: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [CargoByDriverDataPoint1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/timeseries/cargo_by_driver/data_points/v1",
            queryParams: [
                "cargo_id": .string(cargoId), 
                "task_group_id": .string(taskGroupId), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [CargoByDriverDataPoint1].self
        )
    }

    /// Returns the most recent driver location data point for cargo within a task group. Data written by the driver update endpoint. | auth: api_key | authz_personas=[coordinator_org_operators, shipper_org_operators, executor_org_operators, driver_for_executor] | () -> (CargoByDriverDataPoint1 | None)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.timeseries.cargoByDriver.lastSeenV1(
    ///         cargoId: "cargo_id",
    ///         taskGroupId: "task_group_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenV1(cargoId: String, taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> CargoByDriverDataPoint1? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/timeseries/cargo_by_driver/last_seen/v1",
            queryParams: [
                "cargo_id": .string(cargoId), 
                "task_group_id": .string(taskGroupId)
            ],
            requestOptions: requestOptions,
            responseType: CargoByDriverDataPoint1?.self
        )
    }

    /// Returns the last-seen location and status for a publicly shared cargo by its public link token. No authentication required; returns 410 once the link has expired. | () -> (CargoByDriverLastSeenPublicRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.timeseries.cargoByDriver.lastSeenPublicV2(publicLinkToken: "public_link_token")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenPublicV2(publicLinkToken: String, requestOptions: RequestOptions? = nil) async throws -> CargoByDriverLastSeenPublicRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/timeseries/cargo_by_driver/last_seen_public/v2/\(publicLinkToken)",
            requestOptions: requestOptions,
            responseType: CargoByDriverLastSeenPublicRes.self
        )
    }
}