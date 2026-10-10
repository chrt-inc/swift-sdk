import Foundation

extension Requests {
    public struct ChrtGptReq: Codable, Hashable, Sendable {
        /// Omit to start a new conversation.
        public let conversationId: String?
        public let message: String
        /// How much ChrtGPT reasons before answering this message. Higher is slower and more thorough.
        public let reasoningEffort: ChrtGptReqReasoningEffort?
        /// How long and detailed ChrtGPT's reply is.
        public let verbosity: Verbosity?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            conversationId: String? = nil,
            message: String,
            reasoningEffort: ChrtGptReqReasoningEffort? = nil,
            verbosity: Verbosity? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.conversationId = conversationId
            self.message = message
            self.reasoningEffort = reasoningEffort
            self.verbosity = verbosity
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.conversationId = try container.decodeIfPresent(String.self, forKey: .conversationId)
            self.message = try container.decode(String.self, forKey: .message)
            self.reasoningEffort = try container.decodeIfPresent(ChrtGptReqReasoningEffort.self, forKey: .reasoningEffort)
            self.verbosity = try container.decodeIfPresent(Verbosity.self, forKey: .verbosity)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.conversationId, forKey: .conversationId)
            try container.encode(self.message, forKey: .message)
            try container.encodeIfPresent(self.reasoningEffort, forKey: .reasoningEffort)
            try container.encodeIfPresent(self.verbosity, forKey: .verbosity)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case conversationId = "conversation_id"
            case message
            case reasoningEffort = "reasoning_effort"
            case verbosity
        }
    }
}