import Foundation

public final class EcourierClient: Sendable {
    public let creds: EcourierCredsClient
    public let orders: EcourierOrdersClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.creds = EcourierCredsClient(config: config)
        self.orders = EcourierOrdersClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}