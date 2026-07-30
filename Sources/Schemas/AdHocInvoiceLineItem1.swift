import Foundation

public struct AdHocInvoiceLineItem1: Codable, Hashable, Sendable {
    public let invoiceLineItem: InvoiceLineItemClientCreate1
    public let splitEvenlyAcrossAccountIds: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        invoiceLineItem: InvoiceLineItemClientCreate1,
        splitEvenlyAcrossAccountIds: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.invoiceLineItem = invoiceLineItem
        self.splitEvenlyAcrossAccountIds = splitEvenlyAcrossAccountIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.invoiceLineItem = try container.decode(InvoiceLineItemClientCreate1.self, forKey: .invoiceLineItem)
        self.splitEvenlyAcrossAccountIds = try container.decodeIfPresent([String].self, forKey: .splitEvenlyAcrossAccountIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.invoiceLineItem, forKey: .invoiceLineItem)
        try container.encodeIfPresent(self.splitEvenlyAcrossAccountIds, forKey: .splitEvenlyAcrossAccountIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case invoiceLineItem = "invoice_line_item"
        case splitEvenlyAcrossAccountIds = "split_evenly_across_account_ids"
    }
}