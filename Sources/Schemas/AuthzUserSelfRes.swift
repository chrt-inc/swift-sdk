import Foundation

/// What the caller can do with authz in their current organization.
public struct AuthzUserSelfRes: Codable, Hashable, Sendable {
    /// Org-level authz actions Cedar allows the caller: listing users, groups, and custom roles, and creating groups and custom roles.
    public let allowedOrgActions: [AuthzActionEnum]
    public let missingCustomRoleIds: [String]
    public let missingGroupIds: [String]
    /// Must be a string starting with `org_`
    public let orgId: String
    public let permissions: [AuthzUserPermissionRes]
    /// Whether the caller has an authz record in this organization; without one Cedar denies everything.
    public let provisioned: Bool
    /// Must be a string starting with `user_`
    public let userId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        allowedOrgActions: [AuthzActionEnum],
        missingCustomRoleIds: [String],
        missingGroupIds: [String],
        orgId: String,
        permissions: [AuthzUserPermissionRes],
        provisioned: Bool,
        userId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.allowedOrgActions = allowedOrgActions
        self.missingCustomRoleIds = missingCustomRoleIds
        self.missingGroupIds = missingGroupIds
        self.orgId = orgId
        self.permissions = permissions
        self.provisioned = provisioned
        self.userId = userId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.allowedOrgActions = try container.decode([AuthzActionEnum].self, forKey: .allowedOrgActions)
        self.missingCustomRoleIds = try container.decode([String].self, forKey: .missingCustomRoleIds)
        self.missingGroupIds = try container.decode([String].self, forKey: .missingGroupIds)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.permissions = try container.decode([AuthzUserPermissionRes].self, forKey: .permissions)
        self.provisioned = try container.decode(Bool.self, forKey: .provisioned)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.allowedOrgActions, forKey: .allowedOrgActions)
        try container.encode(self.missingCustomRoleIds, forKey: .missingCustomRoleIds)
        try container.encode(self.missingGroupIds, forKey: .missingGroupIds)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.permissions, forKey: .permissions)
        try container.encode(self.provisioned, forKey: .provisioned)
        try container.encode(self.userId, forKey: .userId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case allowedOrgActions = "allowed_org_actions"
        case missingCustomRoleIds = "missing_custom_role_ids"
        case missingGroupIds = "missing_group_ids"
        case orgId = "org_id"
        case permissions
        case provisioned
        case userId = "user_id"
    }
}