import Foundation

public final class SessionsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a tracking session with ordered geofences or an organization template and links its device. | auth: api_key | authz: min_org_role=operator | (SessionsCreateV1Req) -> (PydanticObjectId)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.sessions.createSessionV1(
    ///         deviceId: "device_id",
    ///         noAutoTermination: true,
    ///         request: .init(schemaVersion: 1)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createSessionV1(deviceId: String, noAutoTermination: Bool? = nil, request: Requests.SessionsCreateV1Req, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sessions/create_session/v1",
            queryParams: [
                "device_id": .string(deviceId), 
                "no_auto_termination": noAutoTermination.map { .bool($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Returns the session's flight legs in order, with Cirium-sourced status lazily resolved and refreshed on read. Access restricted to the caller's organization or shared organizations. | auth: api_key | authz: min_org_role=operator | () -> (list[FlightLeg1])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.sessions.flightLegsV1(sessionId: "session_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func flightLegsV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> [FlightLeg1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/sessions/flight_legs/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: [FlightLeg1].self
        )
    }

    /// Returns the Cirium positional track for one of the session's flight legs; pass force_refresh=true to bypass the cache. Access restricted to the caller's organization or shared organizations. | auth: api_key | authz: min_org_role=operator | () -> (FlightTrackRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.sessions.flightTrackV1(
    ///         sessionId: "session_id",
    ///         flightLegId: "flight_leg_id",
    ///         forceRefresh: true
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter forceRefresh: Bypass the cache and fetch the latest flight track.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func flightTrackV1(sessionId: String, flightLegId: String, forceRefresh: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> FlightTrackRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/sessions/flight_track/v1",
            queryParams: [
                "session_id": .string(sessionId), 
                "flight_leg_id": .string(flightLegId), 
                "force_refresh": forceRefresh.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: FlightTrackRes.self
        )
    }

    /// Retrieves a single session by its ID. Access restricted to the caller's organization or shared organizations. | auth: api_key | authz: min_org_role=operator | () -> (Session2)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.sessions.getV1(sessionId: "session_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(sessionId: String, requestOptions: RequestOptions? = nil) async throws -> Session2 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/sessions/get/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            requestOptions: requestOptions,
            responseType: Session2.self
        )
    }

    /// Lists sessions with filtering, sorting, and pagination. Use org_scope to restrict to owned, shared, or both (default). | auth: api_key | authz: min_org_role=operator | () -> (SessionListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.sessions.listV1(
    ///         sortBy: .createdAtTimestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1,
    ///         search: "search",
    ///         orgScope: .owned,
    ///         filterTerminated: true,
    ///         filterPublic: true,
    ///         filterDeviceId: "filter_device_id",
    ///         filterOffChrtReferenceId: "filter_off_chrt_reference_id",
    ///         filterFlightNumber: "filter_flight_number",
    ///         filterFlightLoadedStatus: "filter_flight_loaded_status",
    ///         filterHasLastSeen: true,
    ///         filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastSeenAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastSeenAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterTerminationScheduledForTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterTerminationScheduledForTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterTerminatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterTerminatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter search: Full-text search query
    /// - Parameter orgScope: Filter by org ownership: owned, shared, or owned_and_shared
    /// - Parameter filterTerminated: Filter by terminated status
    /// - Parameter filterPublic: Filter by public visibility
    /// - Parameter filterDeviceId: Filter by device ID
    /// - Parameter filterOffChrtReferenceId: Filter by off-CHRT reference ID (exact match)
    /// - Parameter filterFlightNumber: Filter by flight number (exact match)
    /// - Parameter filterFlightLoadedStatus: Filter by flight loaded status (exact match)
    /// - Parameter filterHasLastSeen: Filter by whether both last_seen_at_location and last_seen_at_timestamp are set
    /// - Parameter filterCreatedAtTimestampGte: Filter by created_at_timestamp >= value
    /// - Parameter filterCreatedAtTimestampLte: Filter by created_at_timestamp <= value
    /// - Parameter filterLastSeenAtTimestampGte: Filter by last_seen_at_timestamp >= value
    /// - Parameter filterLastSeenAtTimestampLte: Filter by last_seen_at_timestamp <= value
    /// - Parameter filterTerminationScheduledForTimestampGte: Filter by termination_scheduled_for_timestamp >= value
    /// - Parameter filterTerminationScheduledForTimestampLte: Filter by termination_scheduled_for_timestamp <= value
    /// - Parameter filterTerminatedAtTimestampGte: Filter by terminated_at_timestamp >= value
    /// - Parameter filterTerminatedAtTimestampLte: Filter by terminated_at_timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: SessionSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, orgScope: TrackingOrgScopeEnum? = nil, filterTerminated: Bool? = nil, filterPublic: Bool? = nil, filterDeviceId: String? = nil, filterOffChrtReferenceId: String? = nil, filterFlightNumber: String? = nil, filterFlightLoadedStatus: String? = nil, filterHasLastSeen: Bool? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterLastSeenAtTimestampGte: Date? = nil, filterLastSeenAtTimestampLte: Date? = nil, filterTerminationScheduledForTimestampGte: Date? = nil, filterTerminationScheduledForTimestampLte: Date? = nil, filterTerminatedAtTimestampGte: Date? = nil, filterTerminatedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> SessionListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/sessions/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "org_scope": orgScope.map { .string($0.rawValue) }, 
                "filter_terminated": filterTerminated.map { .bool($0) }, 
                "filter_public": filterPublic.map { .bool($0) }, 
                "filter_device_id": filterDeviceId.map { .string($0) }, 
                "filter_off_chrt_reference_id": filterOffChrtReferenceId.map { .string($0) }, 
                "filter_flight_number": filterFlightNumber.map { .string($0) }, 
                "filter_flight_loaded_status": filterFlightLoadedStatus.map { .string($0) }, 
                "filter_has_last_seen": filterHasLastSeen.map { .bool($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_last_seen_at_timestamp_gte": filterLastSeenAtTimestampGte.map { .date($0) }, 
                "filter_last_seen_at_timestamp_lte": filterLastSeenAtTimestampLte.map { .date($0) }, 
                "filter_termination_scheduled_for_timestamp_gte": filterTerminationScheduledForTimestampGte.map { .date($0) }, 
                "filter_termination_scheduled_for_timestamp_lte": filterTerminationScheduledForTimestampLte.map { .date($0) }, 
                "filter_terminated_at_timestamp_gte": filterTerminatedAtTimestampGte.map { .date($0) }, 
                "filter_terminated_at_timestamp_lte": filterTerminatedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: SessionListRes.self
        )
    }

    /// Replaces the session's followed flights: deletes the existing session-owned FlightLeg documents and creates new ones from the supplied flight details. Each leg's Cirium flightId and status resolve lazily on read. Pass an empty list to clear all flights. | auth: api_key | authz: min_org_role=operator | (SessionSetFlightInfoReq1) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.sessions.setFlightInfoV1(request: .init(
    ///         flightLegs: [
    ///             FlightLegClientCreate1(
    ///                 carrierIata: "carrier_iata",
    ///                 destinationIata: "destination_iata",
    ///                 flightNumber: "flight_number",
    ///                 originIata: "origin_iata",
    ///                 provenance: .manual,
    ///                 scheduledDepartureUtc: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///                 schemaVersion: 1
    ///             )
    ///         ],
    ///         sessionId: "session_id"
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setFlightInfoV1(request: Requests.SessionSetFlightInfoReq1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sessions/set_flight_info/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Terminates a session. Moves device.active_session_id to device.past_session_ids and deactivates the device. | auth: api_key | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.sessions.terminateV1(sessionId: "session_id")
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Returns distinct device_mac_address and off_chrt_reference_id values matching the query via case-insensitive regex, searching sessions. Use org_scope to restrict to owned, shared, or both (default). | auth: api_key | authz: min_org_role=operator | () -> (list[TrackingTypeaheadResult])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.sessions.typeaheadV1(
    ///         query: "query",
    ///         limit: 1,
    ///         orgScope: .owned
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Updates mutable non-geofence session fields. Use dedicated geofence routes for geofence changes. | auth: api_key | authz: min_org_role=operator | (SessionClientUpdate2) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.sessions.updateV1(
    ///         sessionId: "session_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(sessionId: String, request: Requests.SessionClientUpdate2, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sessions/update/v1",
            queryParams: [
                "session_id": .string(sessionId)
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Adds and/or removes org_ids from a session's shared_with_org_ids list. Only the owning org may modify sharing. Removal overrides addition. | auth: api_key | (SessionsUpdateSharedOrgsReq1) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.sessions.updateSharedOrgsV1(request: .init(sessionId: "session_id"))
    /// }
    ///
    /// try await main()
    /// ```
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
}