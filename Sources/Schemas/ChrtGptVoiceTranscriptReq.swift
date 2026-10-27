import Foundation

/// What was said on a Charlie call that no voice request saved, sent when the call ends.
public struct ChrtGptVoiceTranscriptReq: Codable, Hashable, Sendable {
    /// The call's conversation, from Charlie's dispatch metadata. Created here if no voice request did.
    public let conversationId: String
    /// Oldest first.
    public let transcriptItems: [ChrtGptVoiceTranscriptItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        conversationId: String,
        transcriptItems: [ChrtGptVoiceTranscriptItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.conversationId = conversationId
        self.transcriptItems = transcriptItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.conversationId = try container.decode(String.self, forKey: .conversationId)
        self.transcriptItems = try container.decode([ChrtGptVoiceTranscriptItem].self, forKey: .transcriptItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.conversationId, forKey: .conversationId)
        try container.encode(self.transcriptItems, forKey: .transcriptItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case conversationId = "conversation_id"
        case transcriptItems = "transcript_items"
    }
}