import Foundation

public final class CourieClient: Sendable {
    public let creds: CourieCredsClient
    public let orders: CourieOrdersClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.creds = CourieCredsClient(config: config)
        self.orders = CourieOrdersClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}