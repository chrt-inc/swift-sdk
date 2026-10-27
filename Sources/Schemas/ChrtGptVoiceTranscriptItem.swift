import Foundation

/// One line of a Charlie call, as LiveKit transcribed it.
public struct ChrtGptVoiceTranscriptItem: Codable, Hashable, Sendable {
    /// user: the caller. assistant: Charlie.
    public let role: Role
    public let text: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        role: Role,
        text: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.role = role
        self.text = text
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.role = try container.decode(Role.self, forKey: .role)
        self.text = try container.decode(String.self, forKey: .text)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.role, forKey: .role)
        try container.encode(self.text, forKey: .text)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case role
        case text
    }
}