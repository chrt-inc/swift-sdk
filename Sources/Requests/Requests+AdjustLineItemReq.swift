import Foundation

extension Requests {
    public struct AdjustLineItemReq: Codable, Hashable, Sendable {
        /// UUID of the line item to adjust
        public let lineItemUuidStr: String
        /// Adjustment amount (can be positive or negative, can exceed item.amount negatively for credits)
        public let adjustment: Double
        /// Comments explaining the adjustment
        public let adjustmentComments: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            lineItemUuidStr: String,
            adjustment: Double,
            adjustmentComments: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.lineItemUuidStr = lineItemUuidStr
            self.adjustment = adjustment
            self.adjustmentComments = adjustmentComments
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.lineItemUuidStr = try container.decode(String.self, forKey: .lineItemUuidStr)
            self.adjustment = try container.decode(Double.self, forKey: .adjustment)
            self.adjustmentComments = try container.decodeIfPresent(String.self, forKey: .adjustmentComments)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.lineItemUuidStr, forKey: .lineItemUuidStr)
            try container.encode(self.adjustment, forKey: .adjustment)
            try container.encodeIfPresent(self.adjustmentComments, forKey: .adjustmentComments)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case lineItemUuidStr = "line_item_uuid_str"
            case adjustment
            case adjustmentComments = "adjustment_comments"
        }
    }
}