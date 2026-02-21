import Foundation

public final class DevicesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Registers a tracking device to the caller's organization. If the device is already registered to a different organization, returns 409 Conflict. | (DeviceClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func registerToOrgV1(request: Requests.DeviceClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/devices/register_to_org/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates a device's type, comments, and/or off_chrt_reference_id. Use __set_to_None flags to explicitly clear Optional fields. | (DeviceClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(deviceId: String, request: Requests.DeviceClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/devices/update/v1",
            queryParams: [
                "device_id": .string(deviceId)
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Archives a device by setting archived=True. Device must not have an active session — terminate it first. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func archiveV1(deviceId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/devices/archive/v1",
            queryParams: [
                "device_id": .string(deviceId)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Adds and/or removes org_ids from a device's shared_with_org_ids list. Removal overrides addition. | (DevicesUpdateSharedOrgsReq1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateSharedOrgsV1(request: Requests.DevicesUpdateSharedOrgsReq1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/devices/update_shared_orgs/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves a single device by its ID with expanded sessions and cargos. Access restricted to the caller's organization or shared organizations. | authz: min_org_role=operator | () -> (DeviceExpandedRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(deviceId: String, requestOptions: RequestOptions? = nil) async throws -> DeviceExpandedRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/devices/get/v1",
            queryParams: [
                "device_id": .string(deviceId)
            ],
            requestOptions: requestOptions,
            responseType: DeviceExpandedRes.self
        )
    }

    /// Lists devices with filtering, sorting, and pagination. Use org_scope to restrict to owned, shared, or both (default). | authz: min_org_role=operator | () -> (DeviceListRes)
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (ascending or descending)
    /// - Parameter orgScope: Filter by org ownership: owned, shared, or owned_and_shared
    /// - Parameter filterOffChrtReferenceId: Filter by off-CHRT reference ID (exact match)
    /// - Parameter filterType: Filter by device type
    /// - Parameter filterActiveCargoId: Filter by active cargo ID
    /// - Parameter filterActiveSessionId: Filter by active session ID
    /// - Parameter filterRegisteredAtTimestampGte: Filter by registered_at_timestamp >= value
    /// - Parameter filterRegisteredAtTimestampLte: Filter by registered_at_timestamp <= value
    /// - Parameter filterLastSeenAtTimestampGte: Filter by last_seen_at_timestamp >= value
    /// - Parameter filterLastSeenAtTimestampLte: Filter by last_seen_at_timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: DeviceSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, orgScope: TrackingOrgScopeEnum? = nil, filterOffChrtReferenceId: String? = nil, filterType: TrackingDeviceTypeEnum1? = nil, filterActiveCargoId: String? = nil, filterActiveSessionId: String? = nil, filterRegisteredAtTimestampGte: Date? = nil, filterRegisteredAtTimestampLte: Date? = nil, filterLastSeenAtTimestampGte: Date? = nil, filterLastSeenAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> DeviceListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/devices/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "org_scope": orgScope.map { .string($0.rawValue) }, 
                "filter_off_chrt_reference_id": filterOffChrtReferenceId.map { .string($0) }, 
                "filter_type": filterType.map { .string($0.rawValue) }, 
                "filter_active_cargo_id": filterActiveCargoId.map { .string($0) }, 
                "filter_active_session_id": filterActiveSessionId.map { .string($0) }, 
                "filter_registered_at_timestamp_gte": filterRegisteredAtTimestampGte.map { .date($0) }, 
                "filter_registered_at_timestamp_lte": filterRegisteredAtTimestampLte.map { .date($0) }, 
                "filter_last_seen_at_timestamp_gte": filterLastSeenAtTimestampGte.map { .date($0) }, 
                "filter_last_seen_at_timestamp_lte": filterLastSeenAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: DeviceListRes.self
        )
    }

    /// Returns distinct device_mac_address and off_chrt_reference_id values matching the query via case-insensitive regex, searching devices. Use org_scope to restrict to owned, shared, or both (default). | authz: min_org_role=operator | () -> (list[TrackingTypeaheadResult])
    ///
    /// - Parameter query: Typeahead search query
    /// - Parameter limit: Max results per field
    /// - Parameter orgScope: Filter by org ownership: owned, shared, or owned_and_shared
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typeaheadV1(query: String, limit: Int? = nil, orgScope: TrackingOrgScopeEnum? = nil, requestOptions: RequestOptions? = nil) async throws -> [TrackingTypeaheadResult] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/devices/typeahead/v1",
            queryParams: [
                "query": .string(query), 
                "limit": limit.map { .int($0) }, 
                "org_scope": orgScope.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: [TrackingTypeaheadResult].self
        )
    }

    /// Search across device device_mac_address, comments, and off_chrt_reference_id. Handles both partial (typing) and full query submission. Use org_scope to restrict to owned, shared, or both (default). | authz: min_org_role=operator | () -> (DeviceSearchRes)
    ///
    /// - Parameter query: Search query
    /// - Parameter orgScope: Filter by org ownership: owned, shared, or owned_and_shared
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func searchV1(query: String, page: Int? = nil, pageSize: Int? = nil, orgScope: TrackingOrgScopeEnum? = nil, requestOptions: RequestOptions? = nil) async throws -> DeviceSearchRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/devices/search/v1",
            queryParams: [
                "query": .string(query), 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "org_scope": orgScope.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: DeviceSearchRes.self
        )
    }
}