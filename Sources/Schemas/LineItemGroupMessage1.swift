import Foundation

public struct LineItemGroupMessage1: Codable, Hashable, Sendable {
    /// Arbitrary human-readable note. Max length is 512 Ki chars (512 * 1024).
    public let message: String
    /// Must be a string starting with `user_`
    public let userId: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let timestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        message: String,
        userId: String,
        orgId: String,
        timestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.message = message
        self.userId = userId
        self.orgId = orgId
        self.timestamp = timestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.message = try container.decode(String.self, forKey: .message)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.timestamp = try container.decode(Date.self, forKey: .timestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.message, forKey: .message)
        try container.encode(self.userId, forKey: .userId)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.timestamp, forKey: .timestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case message
        case userId = "user_id"
        case orgId = "org_id"
        case timestamp
    }
}