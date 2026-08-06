import Foundation

public final class BillingNewClient: Sendable {
    public let billingPeriods: BillingPeriodsClient
    public let chrtGroundProviderRates: ChrtGroundProviderRatesClient
    public let invoiceLineItems: InvoiceLineItemsClient
    public let invoices: InvoicesClient
    public let orders: OrdersClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.billingPeriods = BillingPeriodsClient(config: config)
        self.chrtGroundProviderRates = ChrtGroundProviderRatesClient(config: config)
        self.invoiceLineItems = InvoiceLineItemsClient(config: config)
        self.invoices = InvoicesClient(config: config)
        self.orders = OrdersClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}