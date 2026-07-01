import Foundation

public struct TaskGroupMessage1: Codable, Hashable, Sendable {
    public let message: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let timestamp: Date
    /// Must be a string starting with `user_`
    public let userId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        message: String,
        orgId: String,
        timestamp: Date,
        userId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.message = message
        self.orgId = orgId
        self.timestamp = timestamp
        self.userId = userId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.message = try container.decode(String.self, forKey: .message)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.timestamp = try container.decode(Date.self, forKey: .timestamp)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.message, forKey: .message)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.timestamp, forKey: .timestamp)
        try container.encode(self.userId, forKey: .userId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case message
        case orgId = "org_id"
        case timestamp
        case userId = "user_id"
    }
}