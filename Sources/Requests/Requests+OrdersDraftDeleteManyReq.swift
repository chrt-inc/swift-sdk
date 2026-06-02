import Foundation

extension Requests {
    public struct OrdersDraftDeleteManyReq: Codable, Hashable, Sendable {
        public let orderIds: [String]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orderIds: [String],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orderIds = orderIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orderIds = try container.decode([String].self, forKey: .orderIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.orderIds, forKey: .orderIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orderIds = "order_ids"
        }
    }
}