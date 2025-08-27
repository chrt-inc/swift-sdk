import Foundation

extension Requests {
    public struct CourierPayDriverLineItemGroupAddLineItemsReq: Codable, Hashable, Sendable {
        /// Line items to add to the group
        public let lineItems: [LineItemClientCreate1]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            lineItems: [LineItemClientCreate1],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.lineItems = lineItems
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.lineItems = try container.decode([LineItemClientCreate1].self, forKey: .lineItems)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.lineItems, forKey: .lineItems)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case lineItems = "line_items"
        }
    }
}