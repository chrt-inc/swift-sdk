import Foundation

public struct NotificationPreviewEmailRes: Codable, Hashable, Sendable {
    public let html: String
    public let previewText: String
    public let subject: String
    public let text: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        html: String,
        previewText: String,
        subject: String,
        text: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.html = html
        self.previewText = previewText
        self.subject = subject
        self.text = text
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.html = try container.decode(String.self, forKey: .html)
        self.previewText = try container.decode(String.self, forKey: .previewText)
        self.subject = try container.decode(String.self, forKey: .subject)
        self.text = try container.decode(String.self, forKey: .text)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.html, forKey: .html)
        try container.encode(self.previewText, forKey: .previewText)
        try container.encode(self.subject, forKey: .subject)
        try container.encode(self.text, forKey: .text)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case html
        case previewText = "preview_text"
        case subject
        case text
    }
}