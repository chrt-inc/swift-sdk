import Foundation

public final class ShippingIntegrationsClient: Sendable {
    public let connections: ShippingIntegrationsConnectionsClient
    public let integrationExecutors: IntegrationExecutorsClient
    public let orders: ShippingIntegrationsOrdersClient
    public let atlas: AtlasClient
    public let cxt: CxtClient
    public let dispatchScience: DispatchScienceClient
    public let ecourier: EcourierClient
    public let ontime360: Ontime360Client
    public let xcelerator: XceleratorClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.connections = ShippingIntegrationsConnectionsClient(config: config)
        self.integrationExecutors = IntegrationExecutorsClient(config: config)
        self.orders = ShippingIntegrationsOrdersClient(config: config)
        self.atlas = AtlasClient(config: config)
        self.cxt = CxtClient(config: config)
        self.dispatchScience = DispatchScienceClient(config: config)
        self.ecourier = EcourierClient(config: config)
        self.ontime360 = Ontime360Client(config: config)
        self.xcelerator = XceleratorClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}