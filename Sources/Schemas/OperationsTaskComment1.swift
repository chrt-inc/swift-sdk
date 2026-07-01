import Foundation

public struct OperationsTaskComment1: Codable, Hashable, Sendable {
    public let comment: String
    public let id: String?
    public let timestamp: Date
    /// Must be a string starting with `user_`
    public let userId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        comment: String,
        id: String? = nil,
        timestamp: Date,
        userId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.comment = comment
        self.id = id
        self.timestamp = timestamp
        self.userId = userId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.comment = try container.decode(String.self, forKey: .comment)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.timestamp = try container.decode(Date.self, forKey: .timestamp)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.comment, forKey: .comment)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encode(self.timestamp, forKey: .timestamp)
        try container.encode(self.userId, forKey: .userId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case comment
        case id
        case timestamp
        case userId = "user_id"
    }
}