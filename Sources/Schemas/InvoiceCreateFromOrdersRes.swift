import Foundation

public struct InvoiceCreateFromOrdersRes: Codable, Hashable, Sendable {
    public let addedInvoiceLineItemIds: [String]?
    public let alreadyInvoicedLineItemIds: [String]?
    public let finalizedLineItemIds: [String]?
    /// Created draft, or null when no charges qualify.
    public let invoice: Invoice1?
    public let ordersWithoutAddedCharges: [String]?
    /// Charges for another counterparty, invoice type, or currency, regardless of status.
    public let unmatchedLineItemIds: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        addedInvoiceLineItemIds: [String]? = nil,
        alreadyInvoicedLineItemIds: [String]? = nil,
        finalizedLineItemIds: [String]? = nil,
        invoice: Invoice1? = nil,
        ordersWithoutAddedCharges: [String]? = nil,
        unmatchedLineItemIds: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.addedInvoiceLineItemIds = addedInvoiceLineItemIds
        self.alreadyInvoicedLineItemIds = alreadyInvoicedLineItemIds
        self.finalizedLineItemIds = finalizedLineItemIds
        self.invoice = invoice
        self.ordersWithoutAddedCharges = ordersWithoutAddedCharges
        self.unmatchedLineItemIds = unmatchedLineItemIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.addedInvoiceLineItemIds = try container.decodeIfPresent([String].self, forKey: .addedInvoiceLineItemIds)
        self.alreadyInvoicedLineItemIds = try container.decodeIfPresent([String].self, forKey: .alreadyInvoicedLineItemIds)
        self.finalizedLineItemIds = try container.decodeIfPresent([String].self, forKey: .finalizedLineItemIds)
        self.invoice = try container.decodeIfPresent(Invoice1.self, forKey: .invoice)
        self.ordersWithoutAddedCharges = try container.decodeIfPresent([String].self, forKey: .ordersWithoutAddedCharges)
        self.unmatchedLineItemIds = try container.decodeIfPresent([String].self, forKey: .unmatchedLineItemIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.addedInvoiceLineItemIds, forKey: .addedInvoiceLineItemIds)
        try container.encodeIfPresent(self.alreadyInvoicedLineItemIds, forKey: .alreadyInvoicedLineItemIds)
        try container.encodeIfPresent(self.finalizedLineItemIds, forKey: .finalizedLineItemIds)
        try container.encodeIfPresent(self.invoice, forKey: .invoice)
        try container.encodeIfPresent(self.ordersWithoutAddedCharges, forKey: .ordersWithoutAddedCharges)
        try container.encodeIfPresent(self.unmatchedLineItemIds, forKey: .unmatchedLineItemIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case addedInvoiceLineItemIds = "added_invoice_line_item_ids"
        case alreadyInvoicedLineItemIds = "already_invoiced_line_item_ids"
        case finalizedLineItemIds = "finalized_line_item_ids"
        case invoice
        case ordersWithoutAddedCharges = "orders_without_added_charges"
        case unmatchedLineItemIds = "unmatched_line_item_ids"
    }
}