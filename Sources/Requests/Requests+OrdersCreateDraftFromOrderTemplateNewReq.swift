import Foundation

extension Requests {
    public struct OrdersCreateDraftFromOrderTemplateNewReq: Codable, Hashable, Sendable {
        public let anchorTimestamp: Date?
        public let creationIdempotencyKey: String?
        public let orderTemplateNewCore: OrderTemplateNewCore1?
        public let orderTemplateNewId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            anchorTimestamp: Date? = nil,
            creationIdempotencyKey: String? = nil,
            orderTemplateNewCore: OrderTemplateNewCore1? = nil,
            orderTemplateNewId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.anchorTimestamp = anchorTimestamp
            self.creationIdempotencyKey = creationIdempotencyKey
            self.orderTemplateNewCore = orderTemplateNewCore
            self.orderTemplateNewId = orderTemplateNewId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.anchorTimestamp = try container.decodeIfPresent(Date.self, forKey: .anchorTimestamp)
            self.creationIdempotencyKey = try container.decodeIfPresent(String.self, forKey: .creationIdempotencyKey)
            self.orderTemplateNewCore = try container.decodeIfPresent(OrderTemplateNewCore1.self, forKey: .orderTemplateNewCore)
            self.orderTemplateNewId = try container.decodeIfPresent(String.self, forKey: .orderTemplateNewId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.anchorTimestamp, forKey: .anchorTimestamp)
            try container.encodeIfPresent(self.creationIdempotencyKey, forKey: .creationIdempotencyKey)
            try container.encodeIfPresent(self.orderTemplateNewCore, forKey: .orderTemplateNewCore)
            try container.encodeIfPresent(self.orderTemplateNewId, forKey: .orderTemplateNewId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case anchorTimestamp = "anchor_timestamp"
            case creationIdempotencyKey = "creation_idempotency_key"
            case orderTemplateNewCore = "order_template_new_core"
            case orderTemplateNewId = "order_template_new_id"
        }
    }
}