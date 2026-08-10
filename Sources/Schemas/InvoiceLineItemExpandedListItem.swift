import Foundation

public struct InvoiceLineItemExpandedListItem: Codable, Hashable, Sendable {
    public let invoice: Invoice1?
    public let invoiceLineItem: InvoiceLineItem1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        invoice: Invoice1? = nil,
        invoiceLineItem: InvoiceLineItem1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.invoice = invoice
        self.invoiceLineItem = invoiceLineItem
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.invoice = try container.decodeIfPresent(Invoice1.self, forKey: .invoice)
        self.invoiceLineItem = try container.decode(InvoiceLineItem1.self, forKey: .invoiceLineItem)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.invoice, forKey: .invoice)
        try container.encode(self.invoiceLineItem, forKey: .invoiceLineItem)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case invoice
        case invoiceLineItem = "invoice_line_item"
    }
}