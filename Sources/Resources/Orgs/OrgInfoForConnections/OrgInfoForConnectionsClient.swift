import Foundation

public final class OrgInfoForConnectionsClient: Sendable {
    public let provider: ProviderClient
    public let shipper: ShipperClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.provider = ProviderClient(config: config)
        self.shipper = ShipperClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}