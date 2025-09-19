import Foundation

public final class SessionByDeviceClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
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

    /// Return data points for a session with intelligent stop/movement detection. Detects stops (location barely changes for >5 minutes) and shows up to 5 markers. For movement, samples data points lightly.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func dataPointsFancy(sessionId: String, limit: Nullable<Int>? = nil, requestOptions: RequestOptions? = nil) async throws -> [TrackingSessionByDeviceDataPoint1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/session_by_device/data_points_fancy",
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

    /// Overwrite or delete the comments for a session.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateComments(request: Requests.SessionByDeviceUpdateCommentsRequest1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device/update_comments",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Start a session (set recording=true).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func startSession(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device/start_session",
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
    public func pauseSession(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device/pause_session",
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
    public func resumeSession(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device/resume_session",
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
    public func endSession(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/session_by_device/end_session",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}