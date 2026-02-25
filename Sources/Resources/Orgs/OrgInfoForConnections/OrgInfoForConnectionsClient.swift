import Foundation

public final class OrgInfoForConnectionsClient: Sendable {
    public let courier: CourierClient
    public let forwarder: ForwarderClient
    public let shipper: ShipperClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.courier = CourierClient(config: config)
        self.forwarder = ForwarderClient(config: config)
        self.shipper = ShipperClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}