import Foundation

public final class BillingClient: Sendable {
    public let stripe: StripeClient
    public let stripeConnect: StripeConnectClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.stripe = StripeClient(config: config)
        self.stripeConnect = StripeConnectClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}