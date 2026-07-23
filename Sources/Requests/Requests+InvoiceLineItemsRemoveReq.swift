import Foundation

extension Requests {
    public struct InvoiceLineItemsRemoveReq: Codable, Hashable, Sendable {
        public let invoiceLineItemIds: [String]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            invoiceLineItemIds: [String],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.invoiceLineItemIds = invoiceLineItemIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.invoiceLineItemIds = try container.decode([String].self, forKey: .invoiceLineItemIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.invoiceLineItemIds, forKey: .invoiceLineItemIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case invoiceLineItemIds = "invoice_line_item_ids"
        }
    }
}