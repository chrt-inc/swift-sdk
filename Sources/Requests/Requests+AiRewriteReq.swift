import Foundation

extension Requests {
    public struct AiRewriteReq: Codable, Hashable, Sendable {
        /// How much effort goes into the rewrite. Higher is slower and more careful.
        public let effort: AiRewriteEffortEnum?
        /// How long the rewrite is, relative to the text.
        public let length: AiRewriteLengthEnum?
        /// The text to rewrite: typed, dictated, or pasted.
        public let text: String
        public let tone: AiRewriteToneEnum?
        /// Freeform instructions for this rewrite, such as who it's for. They take precedence over tone and length.
        public let userPrompt: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            effort: AiRewriteEffortEnum? = nil,
            length: AiRewriteLengthEnum? = nil,
            text: String,
            tone: AiRewriteToneEnum? = nil,
            userPrompt: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.effort = effort
            self.length = length
            self.text = text
            self.tone = tone
            self.userPrompt = userPrompt
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.effort = try container.decodeIfPresent(AiRewriteEffortEnum.self, forKey: .effort)
            self.length = try container.decodeIfPresent(AiRewriteLengthEnum.self, forKey: .length)
            self.text = try container.decode(String.self, forKey: .text)
            self.tone = try container.decodeIfPresent(AiRewriteToneEnum.self, forKey: .tone)
            self.userPrompt = try container.decodeIfPresent(String.self, forKey: .userPrompt)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.effort, forKey: .effort)
            try container.encodeIfPresent(self.length, forKey: .length)
            try container.encode(self.text, forKey: .text)
            try container.encodeIfPresent(self.tone, forKey: .tone)
            try container.encodeIfPresent(self.userPrompt, forKey: .userPrompt)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case effort
            case length
            case text
            case tone
            case userPrompt = "user_prompt"
        }
    }
}