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

    /// Lists shipper organizations based on the authenticated organization type. Couriers see connected shippers, forwarders see connected shippers.
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

    /// Lists courier organizations based on the authenticated organization type. Shippers see connected couriers, forwarders see connected couriers.
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

    /// Lists forwarder organizations based on the authenticated organization type. Shippers see connected forwarders, couriers see connected forwarders.
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
}