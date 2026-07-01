import Foundation

extension Requests {
    public struct CreateCheckoutSessionReq: Codable, Hashable, Sendable {
        public let priceId: String
        public let productId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            priceId: String,
            productId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.priceId = priceId
            self.productId = productId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.priceId = try container.decode(String.self, forKey: .priceId)
            self.productId = try container.decode(String.self, forKey: .productId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.priceId, forKey: .priceId)
            try container.encode(self.productId, forKey: .productId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case priceId = "price_id"
            case productId = "product_id"
        }
    }
}