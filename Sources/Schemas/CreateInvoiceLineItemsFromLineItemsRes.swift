import Foundation

public struct CreateInvoiceLineItemsFromLineItemsRes: Codable, Hashable, Sendable {
    public let createdInvoiceLineItemCount: Int
    public let invoiceId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        createdInvoiceLineItemCount: Int,
        invoiceId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.createdInvoiceLineItemCount = createdInvoiceLineItemCount
        self.invoiceId = invoiceId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.createdInvoiceLineItemCount = try container.decode(Int.self, forKey: .createdInvoiceLineItemCount)
        self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.createdInvoiceLineItemCount, forKey: .createdInvoiceLineItemCount)
        try container.encode(self.invoiceId, forKey: .invoiceId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case createdInvoiceLineItemCount = "created_invoice_line_item_count"
        case invoiceId = "invoice_id"
    }
}