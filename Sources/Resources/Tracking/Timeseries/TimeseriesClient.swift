import Foundation

public final class TimeseriesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the last seen data point for cargo within a task group. Access granted to courier or shipper organization. | () -> (CargoByDeviceDataPoint1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cargoByDeviceLastSeenV1(cargoId: String, taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> CargoByDeviceDataPoint1? {
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
    public func cargoByDeviceDataPointsV1(cargoId: String, taskGroupId: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [CargoByDeviceDataPoint1] {
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
    public func cargoByDeviceOutlierV1(request: Requests.CargoByDeviceMarkOutliersRequest1, requestOptions: RequestOptions? = nil) async throws -> CargoByDeviceMarkOutliersResponse1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/cargo_by_device_timeseries/outlier/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoByDeviceMarkOutliersResponse1.self
        )
    }

    /// Returns the most recent driver location data point for cargo within a task group. Access granted to courier or shipper organization. Data written by the driver update endpoint. | () -> (CargoByDriverDataPoint1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cargoByDriverLastSeenV1(cargoId: String, taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> CargoByDriverDataPoint1? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/cargo_by_driver_timeseries/last_seen/v1",
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
    public func cargoByDriverDataPointsV1(cargoId: String, taskGroupId: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [CargoByDriverDataPoint1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/cargo_by_driver_timeseries/data_points/v1",
            queryParams: [
                "cargo_id": .string(cargoId), 
                "task_group_id": .string(taskGroupId), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [CargoByDriverDataPoint1].self
        )
    }

    /// Returns the most recent data point for a session, excluding outliers. Access restricted to the caller's organization. | authz: min_org_role=operator | () -> (SessionByDeviceDataPoint1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func sessionByDeviceLastSeenV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> SessionByDeviceDataPoint1? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/session_by_device_timeseries/last_seen/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: SessionByDeviceDataPoint1?.self
        )
    }

    /// Returns up to the specified number of data points for a session, intelligently sampled across the time range. Excludes outliers. | () -> (list[SessionByDeviceDataPoint1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func sessionByDeviceDataPointsV1(sessionId: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [SessionByDeviceDataPoint1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/session_by_device_timeseries/data_points/v1",
            queryParams: [
                "session_id": .string(sessionId), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [SessionByDeviceDataPoint1].self
        )
    }

    /// Marks data points as outliers or non-outliers. Uses atomic delete and reinsert strategy for time-series collection updates. | (SessionByDeviceMarkOutliersRequest1) -> (SessionByDeviceMarkOutliersResponse1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func sessionByDeviceOutlierV1(request: Requests.SessionByDeviceMarkOutliersRequest1, requestOptions: RequestOptions? = nil) async throws -> SessionByDeviceMarkOutliersResponse1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device_timeseries/outlier/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: SessionByDeviceMarkOutliersResponse1.self
        )
    }

    /// Returns the most recent driver location data point for a task group. Access granted to courier or shipper organization. Data written by the driver update endpoint. | () -> (TaskGroupByDriverDataPoint1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func taskGroupByDriverLastSeenV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> TaskGroupByDriverDataPoint1? {
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
    public func taskGroupByDriverDataPointsV1(taskGroupId: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [TaskGroupByDriverDataPoint1] {
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

    /// Returns the most recent device location data point for a cargo within a public task group. No authentication required if cargo has public visibility enabled via sharing settings. | () -> (CargoByDeviceDataPoint1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cargoByDeviceLastSeenPublicV1(cargoId: String, taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> CargoByDeviceDataPoint1? {
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
    public func cargoByDeviceDataPointsPublicV1(cargoId: String, taskGroupId: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [CargoByDeviceDataPoint1] {
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

    /// Returns the most recent data point for a public session, excluding outliers. No authentication required if session has public visibility enabled. | () -> (SessionByDeviceDataPoint1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func sessionByDeviceLastSeenPublicV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> SessionByDeviceDataPoint1? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/session_by_device_timeseries/last_seen_public/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: SessionByDeviceDataPoint1?.self
        )
    }

    /// Returns up to the specified number of data points for a public session, intelligently sampled across the time range. Excludes outliers. No authentication required if session has public visibility enabled. | () -> (list[SessionByDeviceDataPoint1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func sessionByDeviceDataPointsPublicV1(sessionId: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [SessionByDeviceDataPoint1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/session_by_device_timeseries/data_points_public/v1",
            queryParams: [
                "session_id": .string(sessionId), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [SessionByDeviceDataPoint1].self
        )
    }

    /// Returns the most recent driver location data point for a public task group. No authentication required if task group has public visibility enabled via sharing settings. | () -> (TaskGroupByDriverDataPoint1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func taskGroupByDriverLastSeenPublicV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> TaskGroupByDriverDataPoint1? {
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
    public func taskGroupByDriverDataPointsPublicV1(taskGroupId: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [TaskGroupByDriverDataPoint1] {
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

    /// Returns the most recent driver location data point for a cargo within a public task group. No authentication required if cargo has public visibility enabled via sharing settings. | () -> (CargoByDriverDataPoint1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cargoByDriverLastSeenPublicV1(cargoId: String, taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> CargoByDriverDataPoint1? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/cargo_by_driver_timeseries/last_seen_public/v1",
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
    public func cargoByDriverDataPointsPublicV1(cargoId: String, taskGroupId: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [CargoByDriverDataPoint1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/cargo_by_driver_timeseries/data_points_public/v1",
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