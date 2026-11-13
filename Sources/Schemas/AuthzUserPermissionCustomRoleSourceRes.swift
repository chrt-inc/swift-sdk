import Foundation

public struct AuthzUserPermissionCustomRoleSourceRes: Codable, Hashable, Sendable {
    public let customRoleId: String
    /// The granting group; null for a direct role assignment.
    public let group: AuthzUserPermissionGroupRes?
    public let name: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        customRoleId: String,
        group: AuthzUserPermissionGroupRes? = nil,
        name: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.customRoleId = customRoleId
        self.group = group
        self.name = name
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.customRoleId = try container.decode(String.self, forKey: .customRoleId)
        self.group = try container.decodeIfPresent(AuthzUserPermissionGroupRes.self, forKey: .group)
        self.name = try container.decode(String.self, forKey: .name)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.customRoleId, forKey: .customRoleId)
        try container.encodeIfPresent(self.group, forKey: .group)
        try container.encode(self.name, forKey: .name)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case customRoleId = "custom_role_id"
        case group
        case name
    }
}