import Foundation

public struct DriverBiddingGroup1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let groupName: String
    /// Must be a string starting with `org_`
    public let ownerOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let createdAtTimestamp: Date
    public let lastEditedAtTimestamp: Date
    public let driverIds: [String]?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        groupName: String,
        ownerOrgId: String,
        createdByUserId: String,
        createdAtTimestamp: Date,
        lastEditedAtTimestamp: Date,
        driverIds: [String]? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.groupName = groupName
        self.ownerOrgId = ownerOrgId
        self.createdByUserId = createdByUserId
        self.createdAtTimestamp = createdAtTimestamp
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.driverIds = driverIds
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.groupName = try container.decode(String.self, forKey: .groupName)
        self.ownerOrgId = try container.decode(String.self, forKey: .ownerOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.driverIds = try container.decodeIfPresent([String].self, forKey: .driverIds)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.groupName, forKey: .groupName)
        try container.encode(self.ownerOrgId, forKey: .ownerOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encodeIfPresent(self.driverIds, forKey: .driverIds)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case groupName = "group_name"
        case ownerOrgId = "owner_org_id"
        case createdByUserId = "created_by_user_id"
        case createdAtTimestamp = "created_at_timestamp"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case driverIds = "driver_ids"
        case id = "_id"
    }
}