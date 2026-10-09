import Foundation

extension Requests {
    public struct ChrtGptReq: Codable, Hashable, Sendable {
        /// Omit to start a new conversation.
        public let conversationId: String?
        public let message: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            conversationId: String? = nil,
            message: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.conversationId = conversationId
            self.message = message
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.conversationId = try container.decodeIfPresent(String.self, forKey: .conversationId)
            self.message = try container.decode(String.self, forKey: .message)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.conversationId, forKey: .conversationId)
            try container.encode(self.message, forKey: .message)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case conversationId = "conversation_id"
            case message
        }
    }
}