import Foundation

public final class BillingNewClient: Sendable {
    public let invoiceLineItems: InvoiceLineItemsClient
    public let invoices: InvoicesClient
    public let rates: RatesClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.invoiceLineItems = InvoiceLineItemsClient(config: config)
        self.invoices = InvoicesClient(config: config)
        self.rates = RatesClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}