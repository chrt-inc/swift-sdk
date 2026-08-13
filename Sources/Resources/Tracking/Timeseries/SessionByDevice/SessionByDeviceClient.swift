import Foundation

public final class SessionByDeviceClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns time-bucketed data points and stationary clusters for a session within the given time range. start_timestamp and end_timestamp are required. | auth: api_key | authz: min_org_role=operator | () -> SessionByDeviceHistoryRes1
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.timeseries.sessionByDevice.dataPointsV1(
    ///         sessionId: "session_id",
    ///         startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         endTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         bucketSeconds: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func dataPointsV1(sessionId: String, startTimestamp: Date, endTimestamp: Date, bucketSeconds: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> SessionByDeviceHistoryRes1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/timeseries/session_by_device/data_points/v1",
            queryParams: [
                "session_id": .string(sessionId), 
                "start_timestamp": .date(startTimestamp), 
                "end_timestamp": .date(endTimestamp), 
                "bucket_seconds": bucketSeconds.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: SessionByDeviceHistoryRes1.self
        )
    }

    /// Returns time-bucketed data points and stationary clusters for a public session within the given time range. start_timestamp and end_timestamp are required. No authentication required if session has public visibility enabled. | () -> SessionByDeviceHistoryRes1
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.timeseries.sessionByDevice.dataPointsPublicV1(
    ///         sessionId: "session_id",
    ///         startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         endTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         bucketSeconds: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func dataPointsPublicV1(sessionId: String, startTimestamp: Date, endTimestamp: Date, bucketSeconds: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> SessionByDeviceHistoryRes1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/timeseries/session_by_device/data_points_public/v1",
            queryParams: [
                "session_id": .string(sessionId), 
                "start_timestamp": .date(startTimestamp), 
                "end_timestamp": .date(endTimestamp), 
                "bucket_seconds": bucketSeconds.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: SessionByDeviceHistoryRes1.self
        )
    }

    /// Returns the most recent data point for a session, excluding outliers. Access restricted to the caller's organization. | auth: api_key | authz: min_org_role=operator | () -> (SessionByDeviceDataPoint1 | None)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.timeseries.sessionByDevice.lastSeenV1(sessionId: "session_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> SessionByDeviceDataPoint1? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/timeseries/session_by_device/last_seen/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: SessionByDeviceDataPoint1?.self
        )
    }

    /// Returns the most recent data point for a public session, excluding outliers. No authentication required if session has public visibility enabled. | () -> (SessionByDeviceDataPoint1 | None)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.timeseries.sessionByDevice.lastSeenPublicV1(sessionId: "session_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenPublicV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> SessionByDeviceDataPoint1? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/timeseries/session_by_device/last_seen_public/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: SessionByDeviceDataPoint1?.self
        )
    }

    /// Marks data points as outliers or non-outliers. Uses atomic delete and reinsert strategy for time-series collection updates. | auth: api_key | (SessionByDeviceMarkOutliersRequest1) -> (SessionByDeviceMarkOutliersResponse1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.timeseries.sessionByDevice.outlierV1(request: .init(
    ///         outlier: true,
    ///         trackingSessionByDeviceDataPointIds: [
    ///             "tracking_session_by_device_data_point_ids"
    ///         ]
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func outlierV1(request: Requests.SessionByDeviceMarkOutliersRequest1, requestOptions: RequestOptions? = nil) async throws -> SessionByDeviceMarkOutliersResponse1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/timeseries/session_by_device/outlier/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: SessionByDeviceMarkOutliersResponse1.self
        )
    }
}