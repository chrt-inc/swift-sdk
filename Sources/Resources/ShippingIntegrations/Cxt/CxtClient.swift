import Foundation

public final class CxtClient: Sendable {
    public let creds: CxtCredsClient
    public let orders: CxtOrdersClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.creds = CxtCredsClient(config: config)
        self.orders = CxtOrdersClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}