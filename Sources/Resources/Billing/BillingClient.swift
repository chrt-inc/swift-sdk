import Foundation

public final class BillingClient: Sendable {
    public let billingLedgerPeriods: BillingLedgerPeriodsClient
    public let billingLedgers: BillingLedgersClient
    public let cargoOnFlightRateSheets: CargoOnFlightRateSheetsClient
    public let chrtGroundProviderRateSheets: ChrtGroundProviderRateSheetsClient
    public let stripe: StripeClient
    public let lineItemGroups: LineItemGroupsClient
    public let onboardCourierRateSheets: OnboardCourierRateSheetsClient
    public let rateSheetMappings: RateSheetMappingsClient
    public let statements: StatementsClient
    public let stripeConnect: StripeConnectClient
    public let lineItems: LineItemsClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.billingLedgerPeriods = BillingLedgerPeriodsClient(config: config)
        self.billingLedgers = BillingLedgersClient(config: config)
        self.cargoOnFlightRateSheets = CargoOnFlightRateSheetsClient(config: config)
        self.chrtGroundProviderRateSheets = ChrtGroundProviderRateSheetsClient(config: config)
        self.stripe = StripeClient(config: config)
        self.lineItemGroups = LineItemGroupsClient(config: config)
        self.onboardCourierRateSheets = OnboardCourierRateSheetsClient(config: config)
        self.rateSheetMappings = RateSheetMappingsClient(config: config)
        self.statements = StatementsClient(config: config)
        self.stripeConnect = StripeConnectClient(config: config)
        self.lineItems = LineItemsClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}