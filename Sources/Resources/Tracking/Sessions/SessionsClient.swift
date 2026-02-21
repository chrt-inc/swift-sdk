import Foundation

public final class SessionsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists sessions with filtering, sorting, and pagination. Use org_scope to restrict to owned, shared, or both (default). | authz: min_org_role=operator | () -> (SessionListRes)
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (ascending or descending)
    /// - Parameter orgScope: Filter by org ownership: owned, shared, or owned_and_shared
    /// - Parameter filterTerminated: Filter by terminated status
    /// - Parameter filterPublic: Filter by public visibility
    /// - Parameter filterDeviceId: Filter by device ID
    /// - Parameter filterOffChrtReferenceId: Filter by off-CHRT reference ID (exact match)
    /// - Parameter filterFlightNumber: Filter by flight number (exact match)
    /// - Parameter filterFaFlightId: Filter by FlightAware flight ID (exact match)
    /// - Parameter filterFlightLoadedStatus: Filter by flight loaded status (exact match)
    /// - Parameter filterCreatedAtTimestampGte: Filter by created_at_timestamp >= value
    /// - Parameter filterCreatedAtTimestampLte: Filter by created_at_timestamp <= value
    /// - Parameter filterTerminationScheduledForTimestampGte: Filter by termination_scheduled_for_timestamp >= value
    /// - Parameter filterTerminationScheduledForTimestampLte: Filter by termination_scheduled_for_timestamp <= value
    /// - Parameter filterTerminatedAtTimestampGte: Filter by terminated_at_timestamp >= value
    /// - Parameter filterTerminatedAtTimestampLte: Filter by terminated_at_timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: SessionSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, orgScope: TrackingOrgScopeEnum? = nil, filterTerminated: Bool? = nil, filterPublic: Bool? = nil, filterDeviceId: String? = nil, filterOffChrtReferenceId: String? = nil, filterFlightNumber: String? = nil, filterFaFlightId: String? = nil, filterFlightLoadedStatus: String? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterTerminationScheduledForTimestampGte: Date? = nil, filterTerminationScheduledForTimestampLte: Date? = nil, filterTerminatedAtTimestampGte: Date? = nil, filterTerminatedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> SessionListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/sessions/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "org_scope": orgScope.map { .string($0.rawValue) }, 
                "filter_terminated": filterTerminated.map { .bool($0) }, 
                "filter_public": filterPublic.map { .bool($0) }, 
                "filter_device_id": filterDeviceId.map { .string($0) }, 
                "filter_off_chrt_reference_id": filterOffChrtReferenceId.map { .string($0) }, 
                "filter_flight_number": filterFlightNumber.map { .string($0) }, 
                "filter_fa_flight_id": filterFaFlightId.map { .string($0) }, 
                "filter_flight_loaded_status": filterFlightLoadedStatus.map { .string($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_termination_scheduled_for_timestamp_gte": filterTerminationScheduledForTimestampGte.map { .date($0) }, 
                "filter_termination_scheduled_for_timestamp_lte": filterTerminationScheduledForTimestampLte.map { .date($0) }, 
                "filter_terminated_at_timestamp_gte": filterTerminatedAtTimestampGte.map { .date($0) }, 
                "filter_terminated_at_timestamp_lte": filterTerminatedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: SessionListRes.self
        )
    }

    /// Retrieves a single session by its ID. Access restricted to the caller's organization or shared organizations. | authz: min_org_role=operator | () -> (Session1)
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

    /// Returns distinct device_mac_address and off_chrt_reference_id values matching the query via case-insensitive regex, searching sessions. Use org_scope to restrict to owned, shared, or both (default). | authz: min_org_role=operator | () -> (list[TrackingTypeaheadResult])
    ///
    /// - Parameter query: Typeahead search query
    /// - Parameter limit: Max results per field
    /// - Parameter orgScope: Filter by org ownership: owned, shared, or owned_and_shared
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typeaheadV1(query: String, limit: Int? = nil, orgScope: TrackingOrgScopeEnum? = nil, requestOptions: RequestOptions? = nil) async throws -> [TrackingTypeaheadResult] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/sessions/typeahead/v1",
            queryParams: [
                "query": .string(query), 
                "limit": limit.map { .int($0) }, 
                "org_scope": orgScope.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: [TrackingTypeaheadResult].self
        )
    }

    /// Search across session comments, device_mac_address, flight_numbers, and off_chrt_reference_id. Handles both partial and full matches. Use org_scope to restrict to owned, shared, or both (default). | authz: min_org_role=operator | () -> (SessionSearchRes)
    ///
    /// - Parameter query: Search query
    /// - Parameter orgScope: Filter by org ownership: owned, shared, or owned_and_shared
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func searchV1(query: String, page: Int? = nil, pageSize: Int? = nil, orgScope: TrackingOrgScopeEnum? = nil, requestOptions: RequestOptions? = nil) async throws -> SessionSearchRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/sessions/search/v1",
            queryParams: [
                "query": .string(query), 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "org_scope": orgScope.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: SessionSearchRes.self
        )
    }

    /// Creates a new tracking session for a device. The device must already be registered to the caller's org and must not have an active session. Recording starts immediately and auto-termination is scheduled for ~3 days out at 8 PM PT. | (SessionClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createSessionV1(deviceId: String, terminationScheduledForTimestamp: Date? = nil, request: Requests.SessionClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sessions/create_session/v1",
            queryParams: [
                "device_id": .string(deviceId), 
                "termination_scheduled_for_timestamp": terminationScheduledForTimestamp.map { .date($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates a session's metadata and/or termination_scheduled_for_timestamp. | (SessionClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(sessionId: String, terminationScheduledForTimestamp: Date? = nil, request: Requests.SessionClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sessions/update/v1",
            queryParams: [
                "session_id": .string(sessionId), 
                "termination_scheduled_for_timestamp": terminationScheduledForTimestamp.map { .date($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Adds and/or removes org_ids from a session's shared_with_org_ids list. Only the owning org may modify sharing. Removal overrides addition. | (SessionsUpdateSharedOrgsReq1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateSharedOrgsV1(request: Requests.SessionsUpdateSharedOrgsReq1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sessions/update_shared_orgs/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Terminates a session. Moves device.active_session_id to device.past_session_ids. | () -> (bool)
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

    /// Adds a flight number and FA flight IDs to an existing session. Creates or reuses a FlightAware alert. | authz: min_org_role=operator | (SessionAddFlightReq1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addFlightV1(request: Requests.SessionAddFlightReq1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sessions/add_flight/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Removes a flight number and FA flight IDs from a session. Runs the shared-aware FlightAware unsubscribe cycle before removing. | authz: min_org_role=operator | (SessionRemoveFlightReq1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeFlightV1(request: Requests.SessionRemoveFlightReq1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sessions/remove_flight/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Fetches current OOOI timestamps from FlightAware for each fa_flight_id on the session and updates flight_status_by_fa_flight_id. Use when the webhook may have left state out of sync. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func syncFlightStatusV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sessions/sync_flight_status/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}