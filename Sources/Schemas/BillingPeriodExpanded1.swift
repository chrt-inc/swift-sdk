import Foundation

public struct BillingPeriodExpanded1: Codable, Hashable, Sendable {
    public let billingPeriod: BillingPeriod1
    public let invoice: Invoice1?
    public let invoiceLineItem: InvoiceLineItem1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        billingPeriod: BillingPeriod1,
        invoice: Invoice1? = nil,
        invoiceLineItem: InvoiceLineItem1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.billingPeriod = billingPeriod
        self.invoice = invoice
        self.invoiceLineItem = invoiceLineItem
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.billingPeriod = try container.decode(BillingPeriod1.self, forKey: .billingPeriod)
        self.invoice = try container.decodeIfPresent(Invoice1.self, forKey: .invoice)
        self.invoiceLineItem = try container.decodeIfPresent(InvoiceLineItem1.self, forKey: .invoiceLineItem)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.billingPeriod, forKey: .billingPeriod)
        try container.encodeIfPresent(self.invoice, forKey: .invoice)
        try container.encodeIfPresent(self.invoiceLineItem, forKey: .invoiceLineItem)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case billingPeriod = "billing_period"
        case invoice
        case invoiceLineItem = "invoice_line_item"
    }
}