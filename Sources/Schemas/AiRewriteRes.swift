import Foundation

public struct AiRewriteRes: Codable, Hashable, Sendable {
    public let rewrittenText: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        rewrittenText: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.rewrittenText = rewrittenText
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.rewrittenText = try container.decode(String.self, forKey: .rewrittenText)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.rewrittenText, forKey: .rewrittenText)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case rewrittenText = "rewritten_text"
    }
}