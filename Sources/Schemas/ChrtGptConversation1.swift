import Foundation

public struct ChrtGptConversation1: Codable, Hashable, Sendable {
    public let id: String
    public let createdAt: Date
    /// Must be a string starting with `org_`
    public let orgId: String
    public let schemaVersion: Int
    public let title: String
    public let updatedAt: Date
    /// Must be a string starting with `user_`
    public let userId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        createdAt: Date,
        orgId: String,
        schemaVersion: Int,
        title: String,
        updatedAt: Date,
        userId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.createdAt = createdAt
        self.orgId = orgId
        self.schemaVersion = schemaVersion
        self.title = title
        self.updatedAt = updatedAt
        self.userId = userId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.title = try container.decode(String.self, forKey: .title)
        self.updatedAt = try container.decode(Date.self, forKey: .updatedAt)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.title, forKey: .title)
        try container.encode(self.updatedAt, forKey: .updatedAt)
        try container.encode(self.userId, forKey: .userId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case createdAt = "created_at"
        case orgId = "org_id"
        case schemaVersion = "schema_version"
        case title
        case updatedAt = "updated_at"
        case userId = "user_id"
    }
}