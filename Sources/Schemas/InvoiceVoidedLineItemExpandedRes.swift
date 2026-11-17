import Foundation

public struct InvoiceVoidedLineItemExpandedRes: Codable, Hashable, Sendable {
    public let order: OrderLimitedForProvider1?
    public let voidedInvoiceLineItem: InvoiceVoidedLineItem1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        order: OrderLimitedForProvider1? = nil,
        voidedInvoiceLineItem: InvoiceVoidedLineItem1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.order = order
        self.voidedInvoiceLineItem = voidedInvoiceLineItem
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.order = try container.decodeIfPresent(OrderLimitedForProvider1.self, forKey: .order)
        self.voidedInvoiceLineItem = try container.decode(InvoiceVoidedLineItem1.self, forKey: .voidedInvoiceLineItem)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.order, forKey: .order)
        try container.encode(self.voidedInvoiceLineItem, forKey: .voidedInvoiceLineItem)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case order
        case voidedInvoiceLineItem = "voided_invoice_line_item"
    }
}