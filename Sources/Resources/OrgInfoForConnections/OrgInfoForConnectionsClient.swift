import Foundation

public final class OrgInfoForConnectionsClient: Sendable {
    public let shipper: ShipperClient
    public let courier: CourierClient
    public let forwarder: ForwarderClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.shipper = ShipperClient(config: config)
        self.courier = CourierClient(config: config)
        self.forwarder = ForwarderClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}