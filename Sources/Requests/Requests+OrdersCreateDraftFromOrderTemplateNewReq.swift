import Foundation

extension Requests {
    public struct OrdersCreateDraftFromOrderTemplateNewReq: Codable, Hashable, Sendable {
        public let anchorTimestamp: Date?
        public let creationIdempotencyKey: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            anchorTimestamp: Date? = nil,
            creationIdempotencyKey: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.anchorTimestamp = anchorTimestamp
            self.creationIdempotencyKey = creationIdempotencyKey
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.anchorTimestamp = try container.decodeIfPresent(Date.self, forKey: .anchorTimestamp)
            self.creationIdempotencyKey = try container.decodeIfPresent(String.self, forKey: .creationIdempotencyKey)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.anchorTimestamp, forKey: .anchorTimestamp)
            try container.encodeIfPresent(self.creationIdempotencyKey, forKey: .creationIdempotencyKey)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case anchorTimestamp = "anchor_timestamp"
            case creationIdempotencyKey = "creation_idempotency_key"
        }
    }
}