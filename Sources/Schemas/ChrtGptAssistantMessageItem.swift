import Foundation

public struct ChrtGptAssistantMessageItem: Codable, Hashable, Sendable {
    /// Matches the item_id of the text_delta events that streamed it. None for Charlie's own lines, which never stream.
    public let itemId: String?
    /// Said aloud on a Charlie call: the stored text was wrapped in speech tags.
    public let speech: Bool
    public let text: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        itemId: String? = nil,
        speech: Bool,
        text: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.itemId = itemId
        self.speech = speech
        self.text = text
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.itemId = try container.decodeIfPresent(String.self, forKey: .itemId)
        self.speech = try container.decode(Bool.self, forKey: .speech)
        self.text = try container.decode(String.self, forKey: .text)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.itemId, forKey: .itemId)
        try container.encode(self.speech, forKey: .speech)
        try container.encode(self.text, forKey: .text)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case itemId = "item_id"
        case speech
        case text
    }
}