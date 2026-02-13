import Foundation

public final class DevicesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Registers a tracking device to the caller's organization. If device is already registered to a different organization, registration is blocked. | (DevicesRegisterToOrgReq1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func registerToOrgV1(request: Requests.DevicesRegisterToOrgReq1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/devices/register_to_org/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates a device's type, comments, and/or off_chrt_order_id. Can update one or more fields, or delete them by setting delete flags. | (DevicesUpdateRequest1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.DevicesUpdateRequest1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/devices/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes a device by ID or MAC address. Device must be unlinked from any session or cargo before deletion. Deregisters from Shiprec (transfers to deactivate account) before removing from database. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(deviceId: String? = nil, deviceMacAddress: String? = nil, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/tracking/devices/delete/v1",
            queryParams: [
                "device_id": deviceId.map { .string($0) }, 
                "device_mac_address": deviceMacAddress.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Links a device to cargo with bidirectional references. Device must not already be linked to a session or different cargo. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func linkToCargoV1(deviceMacAddress: String, cargoId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/devices/link_to_cargo/v1",
            queryParams: [
                "device_mac_address": .string(deviceMacAddress), 
                "cargo_id": .string(cargoId)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Unlinks a device from its linked cargo, removing the bidirectional reference. Returns false if device is not linked to any cargo. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func unlinkFromCargoV1(deviceMacAddress: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/devices/unlink_from_cargo/v1",
            queryParams: [
                "device_mac_address": .string(deviceMacAddress)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves a single device by its MAC address or ID. Access restricted to the caller's organization. | authz: min_org_role=operator | () -> (Device1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(deviceMacAddress: String? = nil, deviceId: String? = nil, requestOptions: RequestOptions? = nil) async throws -> Device1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/devices/v1",
            queryParams: [
                "device_mac_address": deviceMacAddress.map { .string($0) }, 
                "device_id": deviceId.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: Device1.self
        )
    }

    /// Lists devices with filtering, sorting, and pagination. | authz: min_org_role=operator | () -> (DeviceListRes)
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (ascending or descending)
    /// - Parameter filterOffChrtOrderId: Filter by off-CHRT order ID (exact match)
    /// - Parameter filterDeviceMacAddress: Filter by device MAC address (exact match)
    /// - Parameter filterType: Filter by device type
    /// - Parameter filterCargoId: Filter by linked cargo ID
    /// - Parameter filterSessionId: Filter by linked session ID
    /// - Parameter filterRegisteredAtTimestampGte: Filter by registered_at_timestamp >= value
    /// - Parameter filterRegisteredAtTimestampLte: Filter by registered_at_timestamp <= value
    /// - Parameter filterLastSeenAtTimestampGte: Filter by last_seen_at_timestamp >= value
    /// - Parameter filterLastSeenAtTimestampLte: Filter by last_seen_at_timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: DeviceSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterOffChrtOrderId: String? = nil, filterDeviceMacAddress: String? = nil, filterType: TrackingDeviceTypeEnum1? = nil, filterCargoId: String? = nil, filterSessionId: String? = nil, filterRegisteredAtTimestampGte: Date? = nil, filterRegisteredAtTimestampLte: Date? = nil, filterLastSeenAtTimestampGte: Date? = nil, filterLastSeenAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> DeviceListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/devices/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_off_chrt_order_id": filterOffChrtOrderId.map { .string($0) }, 
                "filter_device_mac_address": filterDeviceMacAddress.map { .string($0) }, 
                "filter_type": filterType.map { .string($0.rawValue) }, 
                "filter_cargo_id": filterCargoId.map { .string($0) }, 
                "filter_session_id": filterSessionId.map { .string($0) }, 
                "filter_registered_at_timestamp_gte": filterRegisteredAtTimestampGte.map { .date($0) }, 
                "filter_registered_at_timestamp_lte": filterRegisteredAtTimestampLte.map { .date($0) }, 
                "filter_last_seen_at_timestamp_gte": filterLastSeenAtTimestampGte.map { .date($0) }, 
                "filter_last_seen_at_timestamp_lte": filterLastSeenAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: DeviceListRes.self
        )
    }

    /// Returns distinct off_chrt_order_id values matching the query via case-insensitive regex, searching devices. | authz: min_org_role=operator | () -> (list[str])
    ///
    /// - Parameter query: Typeahead search query
    /// - Parameter limit: Max results
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typeaheadOffChrtOrderIdV1(query: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [String] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/devices/typeahead/off_chrt_order_id/v1",
            queryParams: [
                "query": .string(query), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [String].self
        )
    }

    /// Full-text search across device device_mac_address, comments, and off_chrt_order_id using Atlas Search. | authz: min_org_role=operator | () -> (DeviceSearchRes)
    ///
    /// - Parameter query: Full-text search query
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func searchV1(query: String, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> DeviceSearchRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/devices/search/v1",
            queryParams: [
                "query": .string(query), 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: DeviceSearchRes.self
        )
    }
}