import Foundation

/// Last event of a successful stream.
public struct ChrtGptCompletedEvent: Codable, Hashable, Sendable {
    /// When context_tokens passes this, ChrtGPT compacts older turns and context_tokens drops.
    public let contextLimitTokens: Int
    /// Tokens of context ChrtGPT carries into the next turn. On a turn that compacted, this is the size before compaction, so it can exceed context_limit_tokens once.
    public let contextTokens: Int
    public let conversationId: String
    /// The turn's final message. Earlier messages in the turn only arrive as text deltas.
    public let responseText: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        contextLimitTokens: Int,
        contextTokens: Int,
        conversationId: String,
        responseText: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.contextLimitTokens = contextLimitTokens
        self.contextTokens = contextTokens
        self.conversationId = conversationId
        self.responseText = responseText
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.contextLimitTokens = try container.decode(Int.self, forKey: .contextLimitTokens)
        self.contextTokens = try container.decode(Int.self, forKey: .contextTokens)
        self.conversationId = try container.decode(String.self, forKey: .conversationId)
        self.responseText = try container.decode(String.self, forKey: .responseText)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.contextLimitTokens, forKey: .contextLimitTokens)
        try container.encode(self.contextTokens, forKey: .contextTokens)
        try container.encode(self.conversationId, forKey: .conversationId)
        try container.encode(self.responseText, forKey: .responseText)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case contextLimitTokens = "context_limit_tokens"
        case contextTokens = "context_tokens"
        case conversationId = "conversation_id"
        case responseText = "response_text"
    }
}