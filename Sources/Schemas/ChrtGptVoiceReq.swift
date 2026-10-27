import Foundation

/// A transcribed request Charlie hands ChrtGPT. The voice route fixes reasoning effort and verbosity for speed.
public struct ChrtGptVoiceReq: Codable, Hashable, Sendable {
    /// The call's conversation, from Charlie's dispatch metadata. Created by the call's first request.
    public let conversationId: String
    public let message: String
    /// What the caller and Charlie said since Charlie's last request, oldest first, saved before the message.
    public let transcriptItems: [ChrtGptVoiceTranscriptItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        conversationId: String,
        message: String,
        transcriptItems: [ChrtGptVoiceTranscriptItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.conversationId = conversationId
        self.message = message
        self.transcriptItems = transcriptItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.conversationId = try container.decode(String.self, forKey: .conversationId)
        self.message = try container.decode(String.self, forKey: .message)
        self.transcriptItems = try container.decodeIfPresent([ChrtGptVoiceTranscriptItem].self, forKey: .transcriptItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.conversationId, forKey: .conversationId)
        try container.encode(self.message, forKey: .message)
        try container.encodeIfPresent(self.transcriptItems, forKey: .transcriptItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case conversationId = "conversation_id"
        case message
        case transcriptItems = "transcript_items"
    }
}