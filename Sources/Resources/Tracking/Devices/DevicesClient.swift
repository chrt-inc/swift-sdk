import Foundation

public final class DevicesClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Register a device to the caller's org.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func registerToOrg(deviceMacAddress: String, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/devices/register_to_org",
            queryParams: [
                "device_mac_address": .string(deviceMacAddress)
            ],
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Get a device by device_mac_address.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(deviceMacAddress: String, requestOptions: RequestOptions? = nil) async throws -> Device1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/devices",
            queryParams: [
                "device_mac_address": .string(deviceMacAddress)
            ],
            requestOptions: requestOptions,
            responseType: Device1.self
        )
    }

    /// List all devices registered to the caller's org.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(requestOptions: RequestOptions? = nil) async throws -> [Device1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/devices/list",
            requestOptions: requestOptions,
            responseType: [Device1].self
        )
    }

    /// Link a device to a cargo (bidirectional references).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func linkToCargo(deviceMacAddress: String, cargoId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/devices/link_to_cargo",
            queryParams: [
                "device_mac_address": .string(deviceMacAddress), 
                "cargo_id": .string(cargoId)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Unlink a device from its cargo if linked.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func unlinkFromCargo(deviceMacAddress: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/devices/unlink_from_cargo",
            queryParams: [
                "device_mac_address": .string(deviceMacAddress)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}