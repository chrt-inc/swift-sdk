import Foundation

public struct InvoiceLineItemsDeleteManyRes: Codable, Hashable, Sendable {
    public let deletedInvoiceLineItemIds: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        deletedInvoiceLineItemIds: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.deletedInvoiceLineItemIds = deletedInvoiceLineItemIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.deletedInvoiceLineItemIds = try container.decode([String].self, forKey: .deletedInvoiceLineItemIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.deletedInvoiceLineItemIds, forKey: .deletedInvoiceLineItemIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case deletedInvoiceLineItemIds = "deleted_invoice_line_item_ids"
    }
}