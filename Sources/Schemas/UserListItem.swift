import Foundation

public struct UserListItem: Codable, Hashable, Sendable {
    /// The user's directly held custom roles in stored order, with names.
    public let customRoles: [UserListItemCustomRole]
    /// The user's groups in stored order, with names.
    public let groups: [UserListItemGroup]
    /// Stored custom role ids that are not a custom role in this organization; they grant nothing.
    public let missingCustomRoleIds: [String]
    /// Stored group ids that are not a group in this organization; they grant nothing.
    public let missingGroupIds: [String]
    public let user: User1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        customRoles: [UserListItemCustomRole],
        groups: [UserListItemGroup],
        missingCustomRoleIds: [String],
        missingGroupIds: [String],
        user: User1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.customRoles = customRoles
        self.groups = groups
        self.missingCustomRoleIds = missingCustomRoleIds
        self.missingGroupIds = missingGroupIds
        self.user = user
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.customRoles = try container.decode([UserListItemCustomRole].self, forKey: .customRoles)
        self.groups = try container.decode([UserListItemGroup].self, forKey: .groups)
        self.missingCustomRoleIds = try container.decode([String].self, forKey: .missingCustomRoleIds)
        self.missingGroupIds = try container.decode([String].self, forKey: .missingGroupIds)
        self.user = try container.decode(User1.self, forKey: .user)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.customRoles, forKey: .customRoles)
        try container.encode(self.groups, forKey: .groups)
        try container.encode(self.missingCustomRoleIds, forKey: .missingCustomRoleIds)
        try container.encode(self.missingGroupIds, forKey: .missingGroupIds)
        try container.encode(self.user, forKey: .user)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case customRoles = "custom_roles"
        case groups
        case missingCustomRoleIds = "missing_custom_role_ids"
        case missingGroupIds = "missing_group_ids"
        case user
    }
}