import Foundation

public struct SessionGeofenceTemplate1: Codable, Hashable, Sendable {
    public let id: String
    public let archivedAtTimestamp: Date?
    public let createdAtTimestamp: Date
    public let description: String?
    public let geofences: [SessionGeofenceBase1]
    public let lastEditedAtTimestamp: Date
    public let lastUsedAtTimestamp: Date?
    public let name: String
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    /// Must be a string starting with `user_`
    public let ownedByUserId: String
    public let schemaVersion: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        archivedAtTimestamp: Date? = nil,
        createdAtTimestamp: Date,
        description: String? = nil,
        geofences: [SessionGeofenceBase1],
        lastEditedAtTimestamp: Date,
        lastUsedAtTimestamp: Date? = nil,
        name: String,
        ownedByOrgId: String,
        ownedByUserId: String,
        schemaVersion: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.archivedAtTimestamp = archivedAtTimestamp
        self.createdAtTimestamp = createdAtTimestamp
        self.description = description
        self.geofences = geofences
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.lastUsedAtTimestamp = lastUsedAtTimestamp
        self.name = name
        self.ownedByOrgId = ownedByOrgId
        self.ownedByUserId = ownedByUserId
        self.schemaVersion = schemaVersion
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.archivedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .archivedAtTimestamp)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.geofences = try container.decode([SessionGeofenceBase1].self, forKey: .geofences)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.lastUsedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .lastUsedAtTimestamp)
        self.name = try container.decode(String.self, forKey: .name)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.ownedByUserId = try container.decode(String.self, forKey: .ownedByUserId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.archivedAtTimestamp, forKey: .archivedAtTimestamp)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encode(self.geofences, forKey: .geofences)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encodeIfPresent(self.lastUsedAtTimestamp, forKey: .lastUsedAtTimestamp)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.ownedByUserId, forKey: .ownedByUserId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case archivedAtTimestamp = "archived_at_timestamp"
        case createdAtTimestamp = "created_at_timestamp"
        case description
        case geofences
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case lastUsedAtTimestamp = "last_used_at_timestamp"
        case name
        case ownedByOrgId = "owned_by_org_id"
        case ownedByUserId = "owned_by_user_id"
        case schemaVersion = "schema_version"
    }
}