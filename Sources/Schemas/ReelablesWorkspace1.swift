import Foundation

public struct ReelablesWorkspace1: Codable, Hashable, Sendable {
    public let id: String
    public let assetsSyncedAtTimestamp: Date?
    public let createdAtTimestamp: Date
    public let name: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let schemaVersion: Int
    public let workspaceId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        assetsSyncedAtTimestamp: Date? = nil,
        createdAtTimestamp: Date,
        name: String,
        orgId: String,
        schemaVersion: Int,
        workspaceId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.assetsSyncedAtTimestamp = assetsSyncedAtTimestamp
        self.createdAtTimestamp = createdAtTimestamp
        self.name = name
        self.orgId = orgId
        self.schemaVersion = schemaVersion
        self.workspaceId = workspaceId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.assetsSyncedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .assetsSyncedAtTimestamp)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.name = try container.decode(String.self, forKey: .name)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.workspaceId = try container.decode(String.self, forKey: .workspaceId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.assetsSyncedAtTimestamp, forKey: .assetsSyncedAtTimestamp)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.workspaceId, forKey: .workspaceId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case assetsSyncedAtTimestamp = "assets_synced_at_timestamp"
        case createdAtTimestamp = "created_at_timestamp"
        case name
        case orgId = "org_id"
        case schemaVersion = "schema_version"
        case workspaceId = "workspace_id"
    }
}