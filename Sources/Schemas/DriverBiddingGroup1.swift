import Foundation

public struct DriverBiddingGroup1: Codable, Hashable, Sendable {
    public let id: String
    public let createdAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let driverIds: [String]?
    public let groupName: String
    public let lastEditedAtTimestamp: Date
    /// Must be a string starting with `org_`
    public let ownerOrgId: String
    public let schemaVersion: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        createdAtTimestamp: Date,
        createdByUserId: String,
        driverIds: [String]? = nil,
        groupName: String,
        lastEditedAtTimestamp: Date,
        ownerOrgId: String,
        schemaVersion: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByUserId = createdByUserId
        self.driverIds = driverIds
        self.groupName = groupName
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.ownerOrgId = ownerOrgId
        self.schemaVersion = schemaVersion
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.driverIds = try container.decodeIfPresent([String].self, forKey: .driverIds)
        self.groupName = try container.decode(String.self, forKey: .groupName)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.ownerOrgId = try container.decode(String.self, forKey: .ownerOrgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.driverIds, forKey: .driverIds)
        try container.encode(self.groupName, forKey: .groupName)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encode(self.ownerOrgId, forKey: .ownerOrgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByUserId = "created_by_user_id"
        case driverIds = "driver_ids"
        case groupName = "group_name"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case ownerOrgId = "owner_org_id"
        case schemaVersion = "schema_version"
    }
}