import Foundation

public struct Checklist1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let name: String
    public let description: String?
    public let checks: [ChecklistCheck1]?
    public let id: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let archived: Bool?
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let createdAtTimestamp: Date
    public let updatedAtTimestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        name: String,
        description: String? = nil,
        checks: [ChecklistCheck1]? = nil,
        id: String,
        orgId: String,
        archived: Bool? = nil,
        createdByUserId: String,
        createdAtTimestamp: Date,
        updatedAtTimestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.name = name
        self.description = description
        self.checks = checks
        self.id = id
        self.orgId = orgId
        self.archived = archived
        self.createdByUserId = createdByUserId
        self.createdAtTimestamp = createdAtTimestamp
        self.updatedAtTimestamp = updatedAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.name = try container.decode(String.self, forKey: .name)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.checks = try container.decodeIfPresent([ChecklistCheck1].self, forKey: .checks)
        self.id = try container.decode(String.self, forKey: .id)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.archived = try container.decodeIfPresent(Bool.self, forKey: .archived)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.updatedAtTimestamp = try container.decode(Date.self, forKey: .updatedAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.checks, forKey: .checks)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.archived, forKey: .archived)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.updatedAtTimestamp, forKey: .updatedAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case name
        case description
        case checks
        case id = "_id"
        case orgId = "org_id"
        case archived
        case createdByUserId = "created_by_user_id"
        case createdAtTimestamp = "created_at_timestamp"
        case updatedAtTimestamp = "updated_at_timestamp"
    }
}