import Foundation

public final class ConnectionsClient: Sendable {
    public let connectionToCourier: ConnectionToCourierClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.connectionToCourier = ConnectionToCourierClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists all shipper organizations connected to the authenticated courier organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listShippersV1(requestOptions: RequestOptions? = nil) async throws -> [ShipperOrgConnectionInfo1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/connections/shippers/list/v1",
            requestOptions: requestOptions,
            responseType: [ShipperOrgConnectionInfo1].self
        )
    }

    /// Lists all courier organizations connected to the authenticated shipper organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listCouriersV1(requestOptions: RequestOptions? = nil) async throws -> [CourierOrgConnectionInfo1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/connections/couriers/list/v1",
            requestOptions: requestOptions,
            responseType: [CourierOrgConnectionInfo1].self
        )
    }
}