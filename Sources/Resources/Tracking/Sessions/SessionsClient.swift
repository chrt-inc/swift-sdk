import Foundation

public final class SessionsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns all tracking sessions for the caller's organization. | () -> (list[Session1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> [Session1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/sessions/list/v1",
            requestOptions: requestOptions,
            responseType: [Session1].self
        )
    }

    /// Retrieves a single session by its ID. Access restricted to the caller's organization. | () -> (Session1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Session1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/sessions/get/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Session1.self
        )
    }

    /// Creates a new tracking session for a device and links the device to it. The device must be registered to the caller's organization. | (SessionCreateSessionRequest1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createSessionV1(request: Requests.SessionCreateSessionRequest1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sessions/create_session/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates a session's comments and/or public visibility status. Can update one or both fields. | (SessionUpdateRequest1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.SessionUpdateRequest1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sessions/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Starts location recording for a session by setting recording status to true. Sets the recording initiated timestamp on first start. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func startV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sessions/start/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Pauses location recording for a session by setting recording status to false. Device remains linked to the session. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func pauseRecordingV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sessions/pause_recording/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Resumes location recording for a session by setting recording status to true. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func resumeRecordingV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sessions/resume_recording/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Terminates a session by setting recording to false and marking it as terminated. Unlinks the device from the session. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func terminateV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sessions/terminate/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes a terminated session and all its associated timeseries data points. Only sessions marked as terminated can be deleted. | () -> (SessionDeleteResponse1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> SessionDeleteResponse1 {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/tracking/sessions/delete/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: SessionDeleteResponse1.self
        )
    }
}