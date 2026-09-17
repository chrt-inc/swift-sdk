import Foundation

public struct InvoicePreviewRes: Codable, Hashable, Sendable {
    public let calculation: InvoiceTaxCalculation1
    public let invoice: InvoiceClientCreate1
    public let invoiceLineItems: [InvoiceLineItem1]?
    public let taxConfigurationsByLineItemId: [String: TaxConfiguration1?]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        calculation: InvoiceTaxCalculation1,
        invoice: InvoiceClientCreate1,
        invoiceLineItems: [InvoiceLineItem1]? = nil,
        taxConfigurationsByLineItemId: [String: TaxConfiguration1?]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.calculation = calculation
        self.invoice = invoice
        self.invoiceLineItems = invoiceLineItems
        self.taxConfigurationsByLineItemId = taxConfigurationsByLineItemId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.calculation = try container.decode(InvoiceTaxCalculation1.self, forKey: .calculation)
        self.invoice = try container.decode(InvoiceClientCreate1.self, forKey: .invoice)
        self.invoiceLineItems = try container.decodeIfPresent([InvoiceLineItem1].self, forKey: .invoiceLineItems)
        self.taxConfigurationsByLineItemId = try container.decodeIfPresent([String: TaxConfiguration1?].self, forKey: .taxConfigurationsByLineItemId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.calculation, forKey: .calculation)
        try container.encode(self.invoice, forKey: .invoice)
        try container.encodeIfPresent(self.invoiceLineItems, forKey: .invoiceLineItems)
        try container.encodeIfPresent(self.taxConfigurationsByLineItemId, forKey: .taxConfigurationsByLineItemId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case calculation
        case invoice
        case invoiceLineItems = "invoice_line_items"
        case taxConfigurationsByLineItemId = "tax_configurations_by_line_item_id"
    }
}