import Foundation

public struct AuthzCatalogRoleRes: Codable, Hashable, Sendable {
    public let permissions: [PermissionEnum1]
    public let role: ChrtManagedRoleEnum1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        permissions: [PermissionEnum1],
        role: ChrtManagedRoleEnum1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.permissions = permissions
        self.role = role
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.permissions = try container.decode([PermissionEnum1].self, forKey: .permissions)
        self.role = try container.decode(ChrtManagedRoleEnum1.self, forKey: .role)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.permissions, forKey: .permissions)
        try container.encode(self.role, forKey: .role)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case permissions
        case role
    }
}