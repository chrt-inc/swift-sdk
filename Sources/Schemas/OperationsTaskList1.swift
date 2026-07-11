import Foundation

public struct OperationsTaskList1: Codable, Hashable, Sendable {
    public let id: String
    public let archived: Bool?
    public let createdAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let description: String?
    public let entries: [OperationsTaskListEntry1]?
    public let name: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let schemaVersion: Int
    public let updatedAtTimestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        archived: Bool? = nil,
        createdAtTimestamp: Date,
        createdByUserId: String,
        description: String? = nil,
        entries: [OperationsTaskListEntry1]? = nil,
        name: String,
        orgId: String,
        schemaVersion: Int,
        updatedAtTimestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.archived = archived
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByUserId = createdByUserId
        self.description = description
        self.entries = entries
        self.name = name
        self.orgId = orgId
        self.schemaVersion = schemaVersion
        self.updatedAtTimestamp = updatedAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.archived = try container.decodeIfPresent(Bool.self, forKey: .archived)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.entries = try container.decodeIfPresent([OperationsTaskListEntry1].self, forKey: .entries)
        self.name = try container.decode(String.self, forKey: .name)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.updatedAtTimestamp = try container.decode(Date.self, forKey: .updatedAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.archived, forKey: .archived)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.entries, forKey: .entries)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.updatedAtTimestamp, forKey: .updatedAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case archived
        case createdAtTimestamp = "created_at_timestamp"
        case createdByUserId = "created_by_user_id"
        case description
        case entries
        case name
        case orgId = "org_id"
        case schemaVersion = "schema_version"
        case updatedAtTimestamp = "updated_at_timestamp"
    }
}