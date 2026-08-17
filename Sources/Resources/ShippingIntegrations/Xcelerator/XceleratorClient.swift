import Foundation

public final class XceleratorClient: Sendable {
    public let creds: XceleratorCredsClient
    public let orders: XceleratorOrdersClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.creds = XceleratorCredsClient(config: config)
        self.orders = XceleratorOrdersClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}