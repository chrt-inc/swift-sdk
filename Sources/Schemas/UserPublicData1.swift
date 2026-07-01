import Foundation

public struct UserPublicData1: Codable, Hashable, Sendable {
    public let id: String
    public let createdAtTimestamp: Date
    public let schemaVersion: Int
    /// Must be a string starting with `user_`
    public let userId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        createdAtTimestamp: Date,
        schemaVersion: Int,
        userId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.createdAtTimestamp = createdAtTimestamp
        self.schemaVersion = schemaVersion
        self.userId = userId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.userId, forKey: .userId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case createdAtTimestamp = "created_at_timestamp"
        case schemaVersion = "schema_version"
        case userId = "user_id"
    }
}