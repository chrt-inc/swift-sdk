import Foundation

public final class AnalyticsClient: Sendable {
    public let shipping: ShippingClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.shipping = ShippingClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}