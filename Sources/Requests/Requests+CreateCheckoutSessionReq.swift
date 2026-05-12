import Foundation

extension Requests {
    public struct CreateCheckoutSessionReq: Codable, Hashable, Sendable {
        public let productId: String
        public let priceId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            productId: String,
            priceId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.productId = productId
            self.priceId = priceId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.productId = try container.decode(String.self, forKey: .productId)
            self.priceId = try container.decode(String.self, forKey: .priceId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.productId, forKey: .productId)
            try container.encode(self.priceId, forKey: .priceId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case productId = "product_id"
            case priceId = "price_id"
        }
    }
}