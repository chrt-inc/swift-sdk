import Foundation

public struct ChrtGptConversationRes: Codable, Hashable, Sendable {
    public let conversation: ChrtGptConversation1
    /// The conversation's history, oldest first. Reasoning is omitted.
    public let items: [ChrtGptHistoryItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        conversation: ChrtGptConversation1,
        items: [ChrtGptHistoryItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.conversation = conversation
        self.items = items
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.conversation = try container.decode(ChrtGptConversation1.self, forKey: .conversation)
        self.items = try container.decode([ChrtGptHistoryItem].self, forKey: .items)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.conversation, forKey: .conversation)
        try container.encode(self.items, forKey: .items)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case conversation
        case items
    }
}