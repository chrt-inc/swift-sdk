import Foundation

public final class AlvysClient: Sendable {
    public let creds: CredsClient
    public let orders: AlvysOrdersClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.creds = CredsClient(config: config)
        self.orders = AlvysOrdersClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}