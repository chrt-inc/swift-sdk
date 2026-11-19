import Foundation

public struct CustomRoleListItem: Codable, Hashable, Sendable {
    public let customRole: CustomRole1
    /// Authz users holding this custom role, directly or through a group; each counted once.
    public let userCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        customRole: CustomRole1,
        userCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.customRole = customRole
        self.userCount = userCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.customRole = try container.decode(CustomRole1.self, forKey: .customRole)
        self.userCount = try container.decode(Int.self, forKey: .userCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.customRole, forKey: .customRole)
        try container.encode(self.userCount, forKey: .userCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case customRole = "custom_role"
        case userCount = "user_count"
    }
}