import Foundation

public struct CharlieStartRes: Codable, Hashable, Sendable {
    /// The call's ChrtGPT conversation: the one in the request, or a new one created on Charlie's first question to ChrtGPT, and until then not found.
    public let conversationId: String
    /// Joins only this call's room, as the caller.
    public let participantToken: String
    /// The voice server to connect to with participant_token.
    public let serverUrl: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        conversationId: String,
        participantToken: String,
        serverUrl: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.conversationId = conversationId
        self.participantToken = participantToken
        self.serverUrl = serverUrl
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.conversationId = try container.decode(String.self, forKey: .conversationId)
        self.participantToken = try container.decode(String.self, forKey: .participantToken)
        self.serverUrl = try container.decode(String.self, forKey: .serverUrl)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.conversationId, forKey: .conversationId)
        try container.encode(self.participantToken, forKey: .participantToken)
        try container.encode(self.serverUrl, forKey: .serverUrl)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case conversationId = "conversation_id"
        case participantToken = "participant_token"
        case serverUrl = "server_url"
    }
}