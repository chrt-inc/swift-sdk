import Foundation

/// Current catalog grants only; WorkOS administration rights are separate.
public struct AuthzUserPermissionsRes: Codable, Hashable, Sendable {
    /// Custom role ids, assigned directly or on a group, that are not a custom role in this organization; they grant nothing.
    public let missingCustomRoleIds: [String]
    /// Assigned group ids that are not a group in this organization; they grant nothing.
    public let missingGroupIds: [String]
    /// Must be a string starting with `org_`
    public let orgId: String
    public let permissions: [AuthzUserPermissionRes]
    /// Must be a string starting with `user_`
    public let userId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        missingCustomRoleIds: [String],
        missingGroupIds: [String],
        orgId: String,
        permissions: [AuthzUserPermissionRes],
        userId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.missingCustomRoleIds = missingCustomRoleIds
        self.missingGroupIds = missingGroupIds
        self.orgId = orgId
        self.permissions = permissions
        self.userId = userId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.missingCustomRoleIds = try container.decode([String].self, forKey: .missingCustomRoleIds)
        self.missingGroupIds = try container.decode([String].self, forKey: .missingGroupIds)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.permissions = try container.decode([AuthzUserPermissionRes].self, forKey: .permissions)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.missingCustomRoleIds, forKey: .missingCustomRoleIds)
        try container.encode(self.missingGroupIds, forKey: .missingGroupIds)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.permissions, forKey: .permissions)
        try container.encode(self.userId, forKey: .userId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case missingCustomRoleIds = "missing_custom_role_ids"
        case missingGroupIds = "missing_group_ids"
        case orgId = "org_id"
        case permissions
        case userId = "user_id"
    }
}