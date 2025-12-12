import Foundation

public final class CargoByDriverClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the most recent driver location data point for cargo within a task group. Access granted to courier or shipper organization. Data written by the driver update endpoint. | () -> (CargoByDriverDataPoint1 | None)
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

    /// Returns up to the specified number of data points for a cargo within a task group, intelligently sampled across the time range. Excludes outliers. | () -> (list[CargoByDriverDataPoint1])
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

    /// Returns the most recent driver location data point for a cargo within a public task group. No authentication required if cargo has public visibility enabled via sharing settings. | () -> (CargoByDriverDataPoint1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenPublicV1(cargoId: String, taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> CargoByDriverDataPoint1? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/timeseries/cargo_by_driver/last_seen_public/v1",
            queryParams: [
                "cargo_id": .string(cargoId), 
                "task_group_id": .string(taskGroupId)
            ],
            requestOptions: requestOptions,
            responseType: CargoByDriverDataPoint1?.self
        )
    }

    /// Returns up to the specified number of data points for a cargo within a public task group, intelligently sampled across the time range. Excludes outliers. No authentication required if cargo has public visibility enabled via sharing settings. | () -> (list[CargoByDriverDataPoint1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func dataPointsPublicV1(cargoId: String, taskGroupId: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [CargoByDriverDataPoint1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/timeseries/cargo_by_driver/data_points_public/v1",
            queryParams: [
                "cargo_id": .string(cargoId), 
                "task_group_id": .string(taskGroupId), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [CargoByDriverDataPoint1].self
        )
    }
}