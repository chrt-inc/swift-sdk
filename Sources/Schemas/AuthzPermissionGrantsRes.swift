import Foundation

/// Catalog grants from a set of role and group assignments, and the ids that resolved to nothing.
public struct AuthzPermissionGrantsRes: Codable, Hashable, Sendable {
    /// Custom role ids, assigned directly or on a group, that are not a custom role in this organization; they grant nothing.
    public let missingCustomRoleIds: [String]
    /// Assigned group ids that are not a group in this organization; they grant nothing.
    public let missingGroupIds: [String]
    public let permissions: [AuthzUserPermissionRes]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        missingCustomRoleIds: [String],
        missingGroupIds: [String],
        permissions: [AuthzUserPermissionRes],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.missingCustomRoleIds = missingCustomRoleIds
        self.missingGroupIds = missingGroupIds
        self.permissions = permissions
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.missingCustomRoleIds = try container.decode([String].self, forKey: .missingCustomRoleIds)
        self.missingGroupIds = try container.decode([String].self, forKey: .missingGroupIds)
        self.permissions = try container.decode([AuthzUserPermissionRes].self, forKey: .permissions)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.missingCustomRoleIds, forKey: .missingCustomRoleIds)
        try container.encode(self.missingGroupIds, forKey: .missingGroupIds)
        try container.encode(self.permissions, forKey: .permissions)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case missingCustomRoleIds = "missing_custom_role_ids"
        case missingGroupIds = "missing_group_ids"
        case permissions
    }
}