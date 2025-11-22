import Foundation

public struct UserPublicData1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let createdAtTimestamp: Date
    public let primaryEmailAddress: String?
    /// Must be a string starting with `user_`
    public let userId: String
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        createdAtTimestamp: Date,
        primaryEmailAddress: String? = nil,
        userId: String,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.createdAtTimestamp = createdAtTimestamp
        self.primaryEmailAddress = primaryEmailAddress
        self.userId = userId
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.primaryEmailAddress = try container.decodeIfPresent(String.self, forKey: .primaryEmailAddress)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encodeIfPresent(self.primaryEmailAddress, forKey: .primaryEmailAddress)
        try container.encode(self.userId, forKey: .userId)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case createdAtTimestamp = "created_at_timestamp"
        case primaryEmailAddress = "primary_email_address"
        case userId = "user_id"
        case id = "_id"
    }
}