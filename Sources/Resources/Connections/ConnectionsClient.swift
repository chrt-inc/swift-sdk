import Foundation

public final class ConnectionsClient: Sendable {
    public let connectionToCourier: ConnectionToCourierClient
    public let connectionToShipper: ConnectionToShipperClient
    public let connectionToForwarder: ConnectionToForwarderClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.connectionToCourier = ConnectionToCourierClient(config: config)
        self.connectionToShipper = ConnectionToShipperClient(config: config)
        self.connectionToForwarder = ConnectionToForwarderClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists shipper organizations based on the caller's organization type. Couriers see connected shippers, forwarders see connected shippers. | () -> (list[ShipperConnectionRes])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listShippersV1(requestOptions: RequestOptions? = nil) async throws -> [ShipperConnectionRes] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/connections/shippers/list/v1",
            requestOptions: requestOptions,
            responseType: [ShipperConnectionRes].self
        )
    }

    /// Lists courier organizations based on the caller's organization type. Shippers see connected couriers, forwarders see connected couriers. | () -> (list[CourierConnectionRes])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listCouriersV1(requestOptions: RequestOptions? = nil) async throws -> [CourierConnectionRes] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/connections/couriers/list/v1",
            requestOptions: requestOptions,
            responseType: [CourierConnectionRes].self
        )
    }

    /// Lists forwarder organizations based on the caller's organization type. Shippers see connected forwarders, couriers see connected forwarders. | () -> (list[ForwarderConnectionRes])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForwardersV1(requestOptions: RequestOptions? = nil) async throws -> [ForwarderConnectionRes] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/connections/forwarders/list/v1",
            requestOptions: requestOptions,
            responseType: [ForwarderConnectionRes].self
        )
    }

    /// Gets connection between caller's org and org with specified handle. | () -> (ShipperCourierConnection1 | ShipperForwarderConnection1 | ForwarderCourierConnection1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByHandleV1(handle: String, requestOptions: RequestOptions? = nil) async throws -> ConnectionsGetByHandleV1Response? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/connections/by_handle/\(handle)/v1",
            requestOptions: requestOptions,
            responseType: ConnectionsGetByHandleV1Response?.self
        )
    }
}