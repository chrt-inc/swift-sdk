import Foundation

public struct AuthzCatalogRes: Codable, Hashable, Sendable {
    public let permissions: [PermissionEnum1]
    public let roles: [AuthzCatalogRoleRes]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        permissions: [PermissionEnum1],
        roles: [AuthzCatalogRoleRes],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.permissions = permissions
        self.roles = roles
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.permissions = try container.decode([PermissionEnum1].self, forKey: .permissions)
        self.roles = try container.decode([AuthzCatalogRoleRes].self, forKey: .roles)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.permissions, forKey: .permissions)
        try container.encode(self.roles, forKey: .roles)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case permissions
        case roles
    }
}