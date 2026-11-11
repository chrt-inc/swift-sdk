import Foundation

public struct User1: Codable, Hashable, Sendable {
    public let id: String
    public let chrtManagedRoles: [ChrtManagedRoleEnum1]?
    public let createdAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let createdByUserId: String?
    public let customRoleIds: [String]?
    public let displayName: String
    public let emailAddress: String?
    public let groupIds: [String]?
    public let kind: UserKindEnum1
    public let lastEditedAtTimestamp: Date
    /// Must be a string starting with `org_`
    public let orgId: String
    public let schemaVersion: Int
    /// Must be a string starting with `user_`
    public let userId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        chrtManagedRoles: [ChrtManagedRoleEnum1]? = nil,
        createdAtTimestamp: Date,
        createdByUserId: String? = nil,
        customRoleIds: [String]? = nil,
        displayName: String,
        emailAddress: String? = nil,
        groupIds: [String]? = nil,
        kind: UserKindEnum1,
        lastEditedAtTimestamp: Date,
        orgId: String,
        schemaVersion: Int,
        userId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.chrtManagedRoles = chrtManagedRoles
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByUserId = createdByUserId
        self.customRoleIds = customRoleIds
        self.displayName = displayName
        self.emailAddress = emailAddress
        self.groupIds = groupIds
        self.kind = kind
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.orgId = orgId
        self.schemaVersion = schemaVersion
        self.userId = userId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.chrtManagedRoles = try container.decodeIfPresent([ChrtManagedRoleEnum1].self, forKey: .chrtManagedRoles)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByUserId = try container.decodeIfPresent(String.self, forKey: .createdByUserId)
        self.customRoleIds = try container.decodeIfPresent([String].self, forKey: .customRoleIds)
        self.displayName = try container.decode(String.self, forKey: .displayName)
        self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
        self.groupIds = try container.decodeIfPresent([String].self, forKey: .groupIds)
        self.kind = try container.decode(UserKindEnum1.self, forKey: .kind)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.chrtManagedRoles, forKey: .chrtManagedRoles)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encodeIfPresent(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.customRoleIds, forKey: .customRoleIds)
        try container.encode(self.displayName, forKey: .displayName)
        try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(self.groupIds, forKey: .groupIds)
        try container.encode(self.kind, forKey: .kind)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.userId, forKey: .userId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case chrtManagedRoles = "chrt_managed_roles"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByUserId = "created_by_user_id"
        case customRoleIds = "custom_role_ids"
        case displayName = "display_name"
        case emailAddress = "email_address"
        case groupIds = "group_ids"
        case kind
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case orgId = "org_id"
        case schemaVersion = "schema_version"
        case userId = "user_id"
    }
}