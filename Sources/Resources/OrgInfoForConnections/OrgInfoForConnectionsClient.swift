import Foundation

public final class OrgInfoForConnectionsClient: Sendable {
    public let shipper: OrgInfoForConnectionsShipperClient
    public let courier: OrgInfoForConnectionsCourierClient
    public let forwarder: ForwarderClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.shipper = OrgInfoForConnectionsShipperClient(config: config)
        self.courier = OrgInfoForConnectionsCourierClient(config: config)
        self.forwarder = ForwarderClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}