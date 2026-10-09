import Foundation

/// Sent once, on a new conversation's first turn, right before completed or error.
public struct ChrtGptTitleEvent: Codable, Hashable, Sendable {
    public let conversationId: String
    /// The conversation's saved title.
    public let title: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        conversationId: String,
        title: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.conversationId = conversationId
        self.title = title
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.conversationId = try container.decode(String.self, forKey: .conversationId)
        self.title = try container.decode(String.self, forKey: .title)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.conversationId, forKey: .conversationId)
        try container.encode(self.title, forKey: .title)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case conversationId = "conversation_id"
        case title
    }
}