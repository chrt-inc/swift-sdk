import Foundation

extension Requests {
    public struct ShipperPayCourierLineItemGroupRemoveLineItemsReq: Codable, Hashable, Sendable {
        public let lineItemUuidStrs: [String]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            lineItemUuidStrs: [String],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.lineItemUuidStrs = lineItemUuidStrs
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.lineItemUuidStrs = try container.decode([String].self, forKey: .lineItemUuidStrs)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.lineItemUuidStrs, forKey: .lineItemUuidStrs)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case lineItemUuidStrs = "line_item_uuid_strs"
        }
    }
}