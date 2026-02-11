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

    /// Returns all tracking devices registered to the caller's organization. | authz: min_org_role=operator | () -> (list[Device1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> [Device1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/devices/list/v1",
            requestOptions: requestOptions,
            responseType: [Device1].self
        )
    }
}