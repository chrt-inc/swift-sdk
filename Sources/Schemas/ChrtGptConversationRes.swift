import Foundation

public struct ChrtGptConversationRes: Codable, Hashable, Sendable {
    /// The limit for conversation.context_tokens, as on the completed event.
    public let contextLimitTokens: Int
    public let conversation: ChrtGptConversation1
    /// The conversation's history, oldest first. Reasoning and compaction items are omitted.
    public let items: [ChrtGptHistoryItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        contextLimitTokens: Int,
        conversation: ChrtGptConversation1,
        items: [ChrtGptHistoryItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.contextLimitTokens = contextLimitTokens
        self.conversation = conversation
        self.items = items
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.contextLimitTokens = try container.decode(Int.self, forKey: .contextLimitTokens)
        self.conversation = try container.decode(ChrtGptConversation1.self, forKey: .conversation)
        self.items = try container.decode([ChrtGptHistoryItem].self, forKey: .items)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.contextLimitTokens, forKey: .contextLimitTokens)
        try container.encode(self.conversation, forKey: .conversation)
        try container.encode(self.items, forKey: .items)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case contextLimitTokens = "context_limit_tokens"
        case conversation
        case items
    }
}