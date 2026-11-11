import Foundation

public struct CustomRole1: Codable, Hashable, Sendable {
    public let id: String
    public let createdAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let description: String?
    public let lastEditedAtTimestamp: Date
    public let name: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let permissions: [PermissionEnum1]?
    public let schemaVersion: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        createdAtTimestamp: Date,
        createdByUserId: String,
        description: String? = nil,
        lastEditedAtTimestamp: Date,
        name: String,
        orgId: String,
        permissions: [PermissionEnum1]? = nil,
        schemaVersion: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByUserId = createdByUserId
        self.description = description
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.name = name
        self.orgId = orgId
        self.permissions = permissions
        self.schemaVersion = schemaVersion
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.name = try container.decode(String.self, forKey: .name)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.permissions = try container.decodeIfPresent([PermissionEnum1].self, forKey: .permissions)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.permissions, forKey: .permissions)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByUserId = "created_by_user_id"
        case description
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case name
        case orgId = "org_id"
        case permissions
        case schemaVersion = "schema_version"
    }
}