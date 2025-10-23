import Foundation

public final class DevicesClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Registers a tracking device to the authenticated user's organization. If device is already registered to a different organization, registration is blocked.
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

    /// Updates a device's type and/or comments. Can update one or both fields, or delete them by setting delete flags.
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

    /// Deletes a device by ID or MAC address. Device must be unlinked from any session or cargo before deletion.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(deviceId: Nullable<String>? = nil, deviceMacAddress: Nullable<String>? = nil, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/tracking/devices/delete/v1",
            queryParams: [
                "device_id": deviceId?.wrappedValue.map { .string($0) }, 
                "device_mac_address": deviceMacAddress?.wrappedValue.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves a single device by its MAC address or ID. Access restricted to the device's organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(deviceMacAddress: Nullable<String>? = nil, deviceId: Nullable<String>? = nil, requestOptions: RequestOptions? = nil) async throws -> Device1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/devices/v1",
            queryParams: [
                "device_mac_address": deviceMacAddress?.wrappedValue.map { .string($0) }, 
                "device_id": deviceId?.wrappedValue.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: Device1.self
        )
    }

    /// Returns all tracking devices registered to the authenticated user's organization.
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

    /// Links a device to cargo with bidirectional references. Device must not already be linked to a session or different cargo.
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

    /// Unlinks a device from its linked cargo, removing the bidirectional reference. Returns false if device is not linked to any cargo.
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
}