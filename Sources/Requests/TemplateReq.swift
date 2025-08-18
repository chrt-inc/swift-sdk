import Foundation

public struct TemplateReq: Codable, Hashable, Sendable {
    public let message: String
    public let number: Int
    public let timestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        message: String,
        number: Int,
        timestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.message = message
        self.number = number
        self.timestamp = timestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.message = try container.decode(String.self, forKey: .message)
        self.number = try container.decode(Int.self, forKey: .number)
        self.timestamp = try container.decode(Date.self, forKey: .timestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.message, forKey: .message)
        try container.encode(self.number, forKey: .number)
        try container.encode(self.timestamp, forKey: .timestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case message
        case number
        case timestamp
    }
}