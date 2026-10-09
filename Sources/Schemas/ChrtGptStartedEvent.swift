import Foundation

/// First event of every stream.
public struct ChrtGptStartedEvent: Codable, Hashable, Sendable {
    public let conversationId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        conversationId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.conversationId = conversationId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.conversationId = try container.decode(String.self, forKey: .conversationId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.conversationId, forKey: .conversationId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case conversationId = "conversation_id"
    }
}