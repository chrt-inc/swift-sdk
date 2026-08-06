import Foundation

public struct CreateInvoiceLineItemsFromAwbCostsRes: Codable, Hashable, Sendable {
    public let createdAwbs: [CreateInvoiceLineItemsFromAwbCostsCreatedAwb1]?
    public let createdInvoiceLineItemCount: Int
    public let invoices: [CreateInvoiceLineItemsFromAwbCostsInvoiceRes1]?
    public let rejectedAwbs: [CreateInvoiceLineItemsFromAwbCostsRejectedAwb1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        createdAwbs: [CreateInvoiceLineItemsFromAwbCostsCreatedAwb1]? = nil,
        createdInvoiceLineItemCount: Int,
        invoices: [CreateInvoiceLineItemsFromAwbCostsInvoiceRes1]? = nil,
        rejectedAwbs: [CreateInvoiceLineItemsFromAwbCostsRejectedAwb1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.createdAwbs = createdAwbs
        self.createdInvoiceLineItemCount = createdInvoiceLineItemCount
        self.invoices = invoices
        self.rejectedAwbs = rejectedAwbs
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.createdAwbs = try container.decodeIfPresent([CreateInvoiceLineItemsFromAwbCostsCreatedAwb1].self, forKey: .createdAwbs)
        self.createdInvoiceLineItemCount = try container.decode(Int.self, forKey: .createdInvoiceLineItemCount)
        self.invoices = try container.decodeIfPresent([CreateInvoiceLineItemsFromAwbCostsInvoiceRes1].self, forKey: .invoices)
        self.rejectedAwbs = try container.decodeIfPresent([CreateInvoiceLineItemsFromAwbCostsRejectedAwb1].self, forKey: .rejectedAwbs)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.createdAwbs, forKey: .createdAwbs)
        try container.encode(self.createdInvoiceLineItemCount, forKey: .createdInvoiceLineItemCount)
        try container.encodeIfPresent(self.invoices, forKey: .invoices)
        try container.encodeIfPresent(self.rejectedAwbs, forKey: .rejectedAwbs)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAwbs = "created_awbs"
        case createdInvoiceLineItemCount = "created_invoice_line_item_count"
        case invoices
        case rejectedAwbs = "rejected_awbs"
    }
}