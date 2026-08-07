import Foundation

public final class AgentClient: Sendable {
    public let orderInformation: OrderInformationClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.orderInformation = OrderInformationClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}