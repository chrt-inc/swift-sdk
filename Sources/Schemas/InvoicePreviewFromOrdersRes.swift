import Foundation

public struct InvoicePreviewFromOrdersRes: Codable, Hashable, Sendable {
    public let alreadyInvoicedLineItemIds: [String]?
    public let calculation: InvoiceTaxCalculation1
    public let finalizedLineItemIds: [String]?
    public let invoice: InvoiceClientCreate1
    public let invoiceLineItems: [InvoiceLineItem1]?
    public let ordersWithoutSelectedCharges: [String]?
    public let taxConfigurationsByLineItemId: [String: TaxConfiguration1?]?
    public let taxLineItemIds: [String]?
    public let unmatchedLineItemIds: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        alreadyInvoicedLineItemIds: [String]? = nil,
        calculation: InvoiceTaxCalculation1,
        finalizedLineItemIds: [String]? = nil,
        invoice: InvoiceClientCreate1,
        invoiceLineItems: [InvoiceLineItem1]? = nil,
        ordersWithoutSelectedCharges: [String]? = nil,
        taxConfigurationsByLineItemId: [String: TaxConfiguration1?]? = nil,
        taxLineItemIds: [String]? = nil,
        unmatchedLineItemIds: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.alreadyInvoicedLineItemIds = alreadyInvoicedLineItemIds
        self.calculation = calculation
        self.finalizedLineItemIds = finalizedLineItemIds
        self.invoice = invoice
        self.invoiceLineItems = invoiceLineItems
        self.ordersWithoutSelectedCharges = ordersWithoutSelectedCharges
        self.taxConfigurationsByLineItemId = taxConfigurationsByLineItemId
        self.taxLineItemIds = taxLineItemIds
        self.unmatchedLineItemIds = unmatchedLineItemIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.alreadyInvoicedLineItemIds = try container.decodeIfPresent([String].self, forKey: .alreadyInvoicedLineItemIds)
        self.calculation = try container.decode(InvoiceTaxCalculation1.self, forKey: .calculation)
        self.finalizedLineItemIds = try container.decodeIfPresent([String].self, forKey: .finalizedLineItemIds)
        self.invoice = try container.decode(InvoiceClientCreate1.self, forKey: .invoice)
        self.invoiceLineItems = try container.decodeIfPresent([InvoiceLineItem1].self, forKey: .invoiceLineItems)
        self.ordersWithoutSelectedCharges = try container.decodeIfPresent([String].self, forKey: .ordersWithoutSelectedCharges)
        self.taxConfigurationsByLineItemId = try container.decodeIfPresent([String: TaxConfiguration1?].self, forKey: .taxConfigurationsByLineItemId)
        self.taxLineItemIds = try container.decodeIfPresent([String].self, forKey: .taxLineItemIds)
        self.unmatchedLineItemIds = try container.decodeIfPresent([String].self, forKey: .unmatchedLineItemIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.alreadyInvoicedLineItemIds, forKey: .alreadyInvoicedLineItemIds)
        try container.encode(self.calculation, forKey: .calculation)
        try container.encodeIfPresent(self.finalizedLineItemIds, forKey: .finalizedLineItemIds)
        try container.encode(self.invoice, forKey: .invoice)
        try container.encodeIfPresent(self.invoiceLineItems, forKey: .invoiceLineItems)
        try container.encodeIfPresent(self.ordersWithoutSelectedCharges, forKey: .ordersWithoutSelectedCharges)
        try container.encodeIfPresent(self.taxConfigurationsByLineItemId, forKey: .taxConfigurationsByLineItemId)
        try container.encodeIfPresent(self.taxLineItemIds, forKey: .taxLineItemIds)
        try container.encodeIfPresent(self.unmatchedLineItemIds, forKey: .unmatchedLineItemIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case alreadyInvoicedLineItemIds = "already_invoiced_line_item_ids"
        case calculation
        case finalizedLineItemIds = "finalized_line_item_ids"
        case invoice
        case invoiceLineItems = "invoice_line_items"
        case ordersWithoutSelectedCharges = "orders_without_selected_charges"
        case taxConfigurationsByLineItemId = "tax_configurations_by_line_item_id"
        case taxLineItemIds = "tax_line_item_ids"
        case unmatchedLineItemIds = "unmatched_line_item_ids"
    }
}