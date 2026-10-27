import Foundation

public struct ChrtGptUserMessageItem: Codable, Hashable, Sendable {
    /// Said aloud on a Charlie call rather than typed.
    public let speech: Bool
    public let text: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        speech: Bool,
        text: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.speech = speech
        self.text = text
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.speech = try container.decode(Bool.self, forKey: .speech)
        self.text = try container.decode(String.self, forKey: .text)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.speech, forKey: .speech)
        try container.encode(self.text, forKey: .text)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case speech
        case text
    }
}