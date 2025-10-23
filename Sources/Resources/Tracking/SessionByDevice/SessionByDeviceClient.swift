import Foundation

public final class SessionByDeviceClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns all tracking sessions for the authenticated user's organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> [Session1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/session_by_device/list/v1",
            requestOptions: requestOptions,
            responseType: [Session1].self
        )
    }

    /// Retrieves a single session by its ID. Access restricted to the session's organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Session1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/session_by_device/get/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Session1.self
        )
    }

    /// Returns the most recent data point for a session, excluding outliers. Access restricted to the session's organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Nullable<TrackingSessionByDeviceDataPoint1>? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/session_by_device/last_seen/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Nullable<TrackingSessionByDeviceDataPoint1>?.self
        )
    }

    /// Returns up to the specified number of data points for a session, intelligently sampled across the time range. Excludes outliers.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func dataPointsV1(sessionId: String, limit: Nullable<Int>? = nil, requestOptions: RequestOptions? = nil) async throws -> [TrackingSessionByDeviceDataPoint1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/session_by_device/data_points/v1",
            queryParams: [
                "session_id": .string(sessionId), 
                "limit": limit?.wrappedValue.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [TrackingSessionByDeviceDataPoint1].self
        )
    }

    /// Creates a new tracking session for a device and links the device to it. The device must be registered to the caller's organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createSessionV1(request: Requests.SessionByDeviceCreateSessionRequest1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device/create_session/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates a session's comments and/or public visibility status. Can update one or both fields.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.SessionByDeviceUpdateRequest1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Starts location recording for a session by setting recording status to true. Sets the recording initiated timestamp on first start.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func startV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device/start/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Pauses location recording for a session by setting recording status to false. Device remains linked to the session.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func pauseRecordingV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device/pause_recording/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Resumes location recording for a session by setting recording status to true.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func resumeRecordingV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device/resume_recording/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Terminates a session by setting recording to false and marking it as terminated. Unlinks the device from the session.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func terminateV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device/terminate/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Marks data points as outliers or non-outliers. Uses atomic delete and reinsert strategy for time-series collection updates.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func outlierV1(request: Requests.SessionByDeviceMarkOutliersRequest1, requestOptions: RequestOptions? = nil) async throws -> SessionByDeviceMarkOutliersResponse1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device/outlier/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: SessionByDeviceMarkOutliersResponse1.self
        )
    }

    /// Deletes a terminated session and all its associated timeseries data points. Only sessions marked as terminated can be deleted.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> SessionByDeviceDeleteResponse1 {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/tracking/session_by_device/delete/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: SessionByDeviceDeleteResponse1.self
        )
    }

    /// Returns the most recent data point for a public session, excluding outliers. No authentication required if session has public visibility enabled.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenPublicV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Nullable<TrackingSessionByDeviceDataPoint1>? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/session_by_device/last_seen_public/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Nullable<TrackingSessionByDeviceDataPoint1>?.self
        )
    }

    /// Returns up to the specified number of data points for a public session, intelligently sampled across the time range. Excludes outliers. No authentication required if session has public visibility enabled.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func dataPointsPublicV1(sessionId: String, limit: Nullable<Int>? = nil, requestOptions: RequestOptions? = nil) async throws -> [TrackingSessionByDeviceDataPoint1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/session_by_device/data_points_public/v1",
            queryParams: [
                "session_id": .string(sessionId), 
                "limit": limit?.wrappedValue.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [TrackingSessionByDeviceDataPoint1].self
        )
    }
}