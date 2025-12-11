import Foundation

public final class CargoByDeviceClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the last seen data point for cargo within a task group. Access granted to courier or shipper organization. | () -> (CargoByDeviceDataPoint1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenV1(cargoId: String, taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> CargoByDeviceDataPoint1? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/cargo_by_device_timeseries/last_seen/v1",
            queryParams: [
                "cargo_id": .string(cargoId), 
                "task_group_id": .string(taskGroupId)
            ],
            requestOptions: requestOptions,
            responseType: CargoByDeviceDataPoint1?.self
        )
    }

    /// Returns up to the specified number of data points for a cargo within a task group, intelligently sampled across the time range. Excludes outliers. | () -> (list[CargoByDeviceDataPoint1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func dataPointsV1(cargoId: String, taskGroupId: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [CargoByDeviceDataPoint1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/cargo_by_device_timeseries/data_points/v1",
            queryParams: [
                "cargo_id": .string(cargoId), 
                "task_group_id": .string(taskGroupId), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [CargoByDeviceDataPoint1].self
        )
    }

    /// Marks data points as outliers or non-outliers. Uses atomic delete and reinsert strategy for time-series collection updates. | authz: allowed_org_types=[shipper, forwarder], min_org_role=operator | (CargoByDeviceMarkOutliersRequest1) -> (CargoByDeviceMarkOutliersResponse1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func outlierV1(request: Requests.CargoByDeviceMarkOutliersRequest1, requestOptions: RequestOptions? = nil) async throws -> CargoByDeviceMarkOutliersResponse1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/cargo_by_device_timeseries/outlier/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoByDeviceMarkOutliersResponse1.self
        )
    }

    /// Returns the most recent device location data point for a cargo within a public task group. No authentication required if cargo has public visibility enabled via sharing settings. | () -> (CargoByDeviceDataPoint1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenPublicV1(cargoId: String, taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> CargoByDeviceDataPoint1? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/cargo_by_device_timeseries/last_seen_public/v1",
            queryParams: [
                "cargo_id": .string(cargoId), 
                "task_group_id": .string(taskGroupId)
            ],
            requestOptions: requestOptions,
            responseType: CargoByDeviceDataPoint1?.self
        )
    }

    /// Returns up to the specified number of data points for a cargo within a public task group, intelligently sampled across the time range. Excludes outliers. No authentication required if cargo has public visibility enabled via sharing settings. | () -> (list[CargoByDeviceDataPoint1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func dataPointsPublicV1(cargoId: String, taskGroupId: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [CargoByDeviceDataPoint1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/cargo_by_device_timeseries/data_points_public/v1",
            queryParams: [
                "cargo_id": .string(cargoId), 
                "task_group_id": .string(taskGroupId), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [CargoByDeviceDataPoint1].self
        )
    }
}