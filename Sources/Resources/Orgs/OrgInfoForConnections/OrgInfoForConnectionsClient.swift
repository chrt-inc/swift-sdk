import Foundation

public final class OrgInfoForConnectionsClient: Sendable {
    public let shipper: ShipperClient
    public let provider: ProviderClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.shipper = ShipperClient(config: config)
        self.provider = ProviderClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}