import Foundation

public final class ShippingIntegrationsClient: Sendable {
    public let connections: ShippingIntegrationsConnectionsClient
    public let orders: ShippingIntegrationsOrdersClient
    public let xcelerator: XceleratorClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.connections = ShippingIntegrationsConnectionsClient(config: config)
        self.orders = ShippingIntegrationsOrdersClient(config: config)
        self.xcelerator = XceleratorClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}