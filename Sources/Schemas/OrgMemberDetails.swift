import Foundation

public struct OrgMemberDetails: Codable, Hashable, Sendable {
    public let role: OrgRoleEnum
    /// Must be a string starting with `user_`
    public let userId: String
    public let firstName: String?
    public let lastName: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        role: OrgRoleEnum,
        userId: String,
        firstName: String? = nil,
        lastName: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.role = role
        self.userId = userId
        self.firstName = firstName
        self.lastName = lastName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.role = try container.decode(OrgRoleEnum.self, forKey: .role)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
        self.lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.role, forKey: .role)
        try container.encode(self.userId, forKey: .userId)
        try container.encodeIfPresent(self.firstName, forKey: .firstName)
        try container.encodeIfPresent(self.lastName, forKey: .lastName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case role
        case userId = "user_id"
        case firstName = "first_name"
        case lastName = "last_name"
    }
}