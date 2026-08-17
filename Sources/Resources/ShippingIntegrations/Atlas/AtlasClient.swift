import Foundation

public final class AtlasClient: Sendable {
    public let creds: CredsClient
    public let orders: AtlasOrdersClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.creds = CredsClient(config: config)
        self.orders = AtlasOrdersClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}