import Foundation

public final class SessionByDeviceClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// List all sessions for the current organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(requestOptions: RequestOptions? = nil) async throws -> [Session1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/session_by_device/list",
            requestOptions: requestOptions,
            responseType: [Session1].self
        )
    }

    /// Get a single session document by session_id.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Session1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/session_by_device/get",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Session1.self
        )
    }

    /// Return the most recent datapoint for a session.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeen(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Nullable<TrackingSessionByDeviceDataPoint1>? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/session_by_device/last_seen",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Nullable<TrackingSessionByDeviceDataPoint1>?.self
        )
    }

    /// Return a specified number of data points for a session, intelligently sampled across the time range.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func dataPoints(sessionId: String, limit: Nullable<Int>? = nil, requestOptions: RequestOptions? = nil) async throws -> [TrackingSessionByDeviceDataPoint1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/session_by_device/data_points",
            queryParams: [
                "session_id": .string(sessionId), 
                "limit": limit?.wrappedValue.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [TrackingSessionByDeviceDataPoint1].self
        )
    }

    /// Create a session for a device and link the device to it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createSession(request: Requests.SessionByDeviceCreateSessionRequest1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device/create_session",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Update a session's comments and/or public visibility status.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(request: Requests.SessionByDeviceUpdateRequest1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device/update",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Start a session (set recording=true).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func start(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device/start",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Pause a session (set recording=false).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func pauseRecording(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device/pause_recording",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Resume a session (set recording=true).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func resumeRecording(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device/resume_recording",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// End a session (set recording=false).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func terminate(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device/terminate",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Mark data points as outliers or non-outliers. Uses atomic delete + insert strategy for time-series collection updates.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func outlier(request: Requests.SessionByDeviceMarkOutliersRequest1, requestOptions: RequestOptions? = nil) async throws -> SessionByDeviceMarkOutliersResponse1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device/outlier",
            body: request,
            requestOptions: requestOptions,
            responseType: SessionByDeviceMarkOutliersResponse1.self
        )
    }

    /// Delete a terminated session and all associated timeseries data.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func delete(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> SessionByDeviceDeleteResponse1 {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/tracking/session_by_device/delete",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: SessionByDeviceDeleteResponse1.self
        )
    }

    /// Return the most recent datapoint for a session. Session must be have public=True.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenPublic(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Nullable<TrackingSessionByDeviceDataPoint1>? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/session_by_device/last_seen_public",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Nullable<TrackingSessionByDeviceDataPoint1>?.self
        )
    }

    /// Return a specified number of data points for a public session, intelligently sampled across the time range. Session must have public=True.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func dataPointsPublic(sessionId: String, limit: Nullable<Int>? = nil, requestOptions: RequestOptions? = nil) async throws -> [TrackingSessionByDeviceDataPoint1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/session_by_device/data_points/public",
            queryParams: [
                "session_id": .string(sessionId), 
                "limit": limit?.wrappedValue.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [TrackingSessionByDeviceDataPoint1].self
        )
    }
}