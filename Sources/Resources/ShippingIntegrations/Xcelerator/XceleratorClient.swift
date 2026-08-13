import Foundation

public final class XceleratorClient: Sendable {
    public let creds: CredsClient
    public let orders: XceleratorOrdersClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.creds = CredsClient(config: config)
        self.orders = XceleratorOrdersClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}