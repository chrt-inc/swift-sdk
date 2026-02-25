import Foundation

public final class BillingClient: Sendable {
    public let statements: StatementsClient
    public let stripe: StripeClient
    public let lineItemGroups: LineItemGroupsClient
    public let rateSheets: RateSheetsClient
    public let stripeConnect: StripeConnectClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.statements = StatementsClient(config: config)
        self.stripe = StripeClient(config: config)
        self.lineItemGroups = LineItemGroupsClient(config: config)
        self.rateSheets = RateSheetsClient(config: config)
        self.stripeConnect = StripeConnectClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}