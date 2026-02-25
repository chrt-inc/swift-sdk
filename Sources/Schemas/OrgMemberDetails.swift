import Foundation

public struct OrgMemberDetails: Codable, Hashable, Sendable {
    public let firstName: String?
    public let lastName: String?
    public let role: OrgRoleEnum
    /// Must be a string starting with `user_`
    public let userId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        firstName: String? = nil,
        lastName: String? = nil,
        role: OrgRoleEnum,
        userId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.firstName = firstName
        self.lastName = lastName
        self.role = role
        self.userId = userId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
        self.lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
        self.role = try container.decode(OrgRoleEnum.self, forKey: .role)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.firstName, forKey: .firstName)
        try container.encodeIfPresent(self.lastName, forKey: .lastName)
        try container.encode(self.role, forKey: .role)
        try container.encode(self.userId, forKey: .userId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case firstName = "first_name"
        case lastName = "last_name"
        case role
        case userId = "user_id"
    }
}