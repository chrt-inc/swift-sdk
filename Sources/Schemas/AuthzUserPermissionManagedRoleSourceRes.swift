import Foundation

public struct AuthzUserPermissionManagedRoleSourceRes: Codable, Hashable, Sendable {
    public let chrtManagedRole: ChrtManagedRoleEnum1
    /// The granting group; null for a direct role assignment.
    public let group: AuthzUserPermissionGroupRes?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chrtManagedRole: ChrtManagedRoleEnum1,
        group: AuthzUserPermissionGroupRes? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chrtManagedRole = chrtManagedRole
        self.group = group
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chrtManagedRole = try container.decode(ChrtManagedRoleEnum1.self, forKey: .chrtManagedRole)
        self.group = try container.decodeIfPresent(AuthzUserPermissionGroupRes.self, forKey: .group)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.chrtManagedRole, forKey: .chrtManagedRole)
        try container.encodeIfPresent(self.group, forKey: .group)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chrtManagedRole = "chrt_managed_role"
        case group
    }
}