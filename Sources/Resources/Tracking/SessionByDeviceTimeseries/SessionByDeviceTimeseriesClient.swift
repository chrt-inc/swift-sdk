import Foundation

public final class SessionByDeviceTimeseriesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the most recent data point for a session, excluding outliers. Access restricted to the caller's organization. | authz: min_org_role=operator | () -> (SessionByDeviceDataPoint1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> SessionByDeviceDataPoint1? {
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
    public func dataPointsV1(sessionId: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [SessionByDeviceDataPoint1] {
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
    public func outlierV1(request: Requests.SessionByDeviceMarkOutliersRequest1, requestOptions: RequestOptions? = nil) async throws -> SessionByDeviceMarkOutliersResponse1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device_timeseries/outlier/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: SessionByDeviceMarkOutliersResponse1.self
        )
    }

    /// Returns the most recent data point for a public session, excluding outliers. No authentication required if session has public visibility enabled. | () -> (SessionByDeviceDataPoint1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenPublicV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> SessionByDeviceDataPoint1? {
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
    public func dataPointsPublicV1(sessionId: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [SessionByDeviceDataPoint1] {
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
}