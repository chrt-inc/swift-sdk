import Foundation

public struct OrgMemberDetails: Codable, Hashable, Sendable {
    public let role: String
    public let roleName: JSONValue?
    /// Must be a string starting with `user_`
    public let userId: String
    public let firstName: JSONValue?
    public let lastName: JSONValue?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        role: String,
        roleName: JSONValue? = nil,
        userId: String,
        firstName: JSONValue? = nil,
        lastName: JSONValue? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.role = role
        self.roleName = roleName
        self.userId = userId
        self.firstName = firstName
        self.lastName = lastName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.role = try container.decode(String.self, forKey: .role)
        self.roleName = try container.decodeIfPresent(JSONValue.self, forKey: .roleName)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.firstName = try container.decodeIfPresent(JSONValue.self, forKey: .firstName)
        self.lastName = try container.decodeIfPresent(JSONValue.self, forKey: .lastName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.role, forKey: .role)
        try container.encodeIfPresent(self.roleName, forKey: .roleName)
        try container.encode(self.userId, forKey: .userId)
        try container.encodeIfPresent(self.firstName, forKey: .firstName)
        try container.encodeIfPresent(self.lastName, forKey: .lastName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case role
        case roleName = "role_name"
        case userId = "user_id"
        case firstName = "first_name"
        case lastName = "last_name"
    }
}