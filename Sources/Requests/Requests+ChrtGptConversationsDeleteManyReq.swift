import Foundation

extension Requests {
    public struct ChrtGptConversationsDeleteManyReq: Codable, Hashable, Sendable {
        /// IDs that don't exist or aren't the caller's are skipped.
        public let conversationIds: [String]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            conversationIds: [String],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.conversationIds = conversationIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.conversationIds = try container.decode([String].self, forKey: .conversationIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.conversationIds, forKey: .conversationIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case conversationIds = "conversation_ids"
        }
    }
}