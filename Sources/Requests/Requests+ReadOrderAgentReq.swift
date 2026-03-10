import Foundation

extension Requests {
    public struct ReadOrderAgentReq: Codable, Hashable, Sendable {
        public let orderId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orderId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orderId = orderId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orderId = try container.decode(String.self, forKey: .orderId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.orderId, forKey: .orderId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orderId = "order_id"
        }
    }
}