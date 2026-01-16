import Foundation

public final class BillingClient: Sendable {
    public let lineItemGroups: LineItemGroupsClient
    public let rateSheets: RateSheetsClient
    public let statements: StatementsClient
    public let stripeConnect: StripeConnectClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.lineItemGroups = LineItemGroupsClient(config: config)
        self.rateSheets = RateSheetsClient(config: config)
        self.statements = StatementsClient(config: config)
        self.stripeConnect = StripeConnectClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}