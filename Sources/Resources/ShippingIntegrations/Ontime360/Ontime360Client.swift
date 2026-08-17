import Foundation

public final class Ontime360Client: Sendable {
    public let creds: Ontime360CredsClient
    public let orders: Ontime360OrdersClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.creds = Ontime360CredsClient(config: config)
        self.orders = Ontime360OrdersClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}