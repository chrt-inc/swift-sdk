import Foundation

public final class SessionsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists sessions with filtering, sorting, and pagination. | authz: min_org_role=operator | () -> (SessionListRes)
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (ascending or descending)
    /// - Parameter filterRecording: Filter by recording status
    /// - Parameter filterTerminated: Filter by terminated status
    /// - Parameter filterPublic: Filter by public visibility
    /// - Parameter filterDeviceId: Filter by device ID
    /// - Parameter filterOffChrtOrderId: Filter by off-CHRT order ID (exact match)
    /// - Parameter filterFlightNumber: Filter by flight number (exact match)
    /// - Parameter filterSessionCreatedAtTimestampGte: Filter by session_created_at_timestamp >= value
    /// - Parameter filterSessionCreatedAtTimestampLte: Filter by session_created_at_timestamp <= value
    /// - Parameter filterRecordingInitiatedAtTimestampGte: Filter by recording_initiated_at_timestamp >= value
    /// - Parameter filterRecordingInitiatedAtTimestampLte: Filter by recording_initiated_at_timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: SessionSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterRecording: Bool? = nil, filterTerminated: Bool? = nil, filterPublic: Bool? = nil, filterDeviceId: String? = nil, filterOffChrtOrderId: String? = nil, filterFlightNumber: String? = nil, filterSessionCreatedAtTimestampGte: Date? = nil, filterSessionCreatedAtTimestampLte: Date? = nil, filterRecordingInitiatedAtTimestampGte: Date? = nil, filterRecordingInitiatedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> SessionListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/sessions/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_recording": filterRecording.map { .bool($0) }, 
                "filter_terminated": filterTerminated.map { .bool($0) }, 
                "filter_public": filterPublic.map { .bool($0) }, 
                "filter_device_id": filterDeviceId.map { .string($0) }, 
                "filter_off_chrt_order_id": filterOffChrtOrderId.map { .string($0) }, 
                "filter_flight_number": filterFlightNumber.map { .string($0) }, 
                "filter_session_created_at_timestamp_gte": filterSessionCreatedAtTimestampGte.map { .date($0) }, 
                "filter_session_created_at_timestamp_lte": filterSessionCreatedAtTimestampLte.map { .date($0) }, 
                "filter_recording_initiated_at_timestamp_gte": filterRecordingInitiatedAtTimestampGte.map { .date($0) }, 
                "filter_recording_initiated_at_timestamp_lte": filterRecordingInitiatedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: SessionListRes.self
        )
    }

    /// Retrieves a single session by its ID. Access restricted to the caller's organization. | authz: min_org_role=operator | () -> (Session1)
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

    /// Returns distinct off_chrt_order_id values matching the query via case-insensitive regex, searching across both sessions and devices. | authz: min_org_role=operator | () -> (list[str])
    ///
    /// - Parameter query: Typeahead search query
    /// - Parameter limit: Max results
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typeaheadOffChrtOrderIdV1(query: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [String] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/sessions/typeahead/off_chrt_order_id/v1",
            queryParams: [
                "query": .string(query), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [String].self
        )
    }

    /// Full-text search across session comments, device_mac_address, flight_number, and off_chrt_order_id using Atlas Search. | authz: min_org_role=operator | () -> (SessionSearchRes)
    ///
    /// - Parameter query: Full-text search query
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func searchV1(query: String, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> SessionSearchRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/sessions/search/v1",
            queryParams: [
                "query": .string(query), 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: SessionSearchRes.self
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

    /// Updates a session's mutable fields (comments, public, off_chrt_order_id, flight_number, fa_flight_ids). | (SessionUpdateRequest1) -> (bool)
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