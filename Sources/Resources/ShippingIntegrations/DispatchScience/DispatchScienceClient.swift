import Foundation

public final class DispatchScienceClient: Sendable {
    public let creds: DispatchScienceCredsClient
    public let orders: DispatchScienceOrdersClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.creds = DispatchScienceCredsClient(config: config)
        self.orders = DispatchScienceOrdersClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}