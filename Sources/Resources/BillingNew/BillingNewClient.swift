import Foundation

public final class BillingNewClient: Sendable {
    public let billingPeriods: BillingPeriodsClient
    public let chrtGroundProviderRates: ChrtGroundProviderRatesClient
    public let fuelSurchargeConfigurations: FuelSurchargeConfigurationsClient
    public let invoiceLineItems: InvoiceLineItemsClient
    public let invoices: InvoicesClient
    public let orders: OrdersClient
    public let pricingZones: PricingZonesClient
    public let quotes: QuotesClient
    public let rateSheetDefaults: RateSheetDefaultsClient
    public let rateSheets: RateSheetsClient
    public let taxConfigurations: TaxConfigurationsClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.billingPeriods = BillingPeriodsClient(config: config)
        self.chrtGroundProviderRates = ChrtGroundProviderRatesClient(config: config)
        self.fuelSurchargeConfigurations = FuelSurchargeConfigurationsClient(config: config)
        self.invoiceLineItems = InvoiceLineItemsClient(config: config)
        self.invoices = InvoicesClient(config: config)
        self.orders = OrdersClient(config: config)
        self.pricingZones = PricingZonesClient(config: config)
        self.quotes = QuotesClient(config: config)
        self.rateSheetDefaults = RateSheetDefaultsClient(config: config)
        self.rateSheets = RateSheetsClient(config: config)
        self.taxConfigurations = TaxConfigurationsClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}