import Foundation

public struct WorkflowActor: Codable, Hashable, Sendable {
    /// Must be a string starting with `org_`
    public let orgId: String
    public let orgRole: OrgRoleEnum?
    public let orgSubscription: Bool?
    public let orgType: OrgTypeEnum
    public let userEmail: String?
    /// Must be a string starting with `user_`
    public let userId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orgId: String,
        orgRole: OrgRoleEnum? = nil,
        orgSubscription: Bool? = nil,
        orgType: OrgTypeEnum,
        userEmail: String? = nil,
        userId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orgId = orgId
        self.orgRole = orgRole
        self.orgSubscription = orgSubscription
        self.orgType = orgType
        self.userEmail = userEmail
        self.userId = userId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.orgRole = try container.decodeIfPresent(OrgRoleEnum.self, forKey: .orgRole)
        self.orgSubscription = try container.decodeIfPresent(Bool.self, forKey: .orgSubscription)
        self.orgType = try container.decode(OrgTypeEnum.self, forKey: .orgType)
        self.userEmail = try container.decodeIfPresent(String.self, forKey: .userEmail)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.orgRole, forKey: .orgRole)
        try container.encodeIfPresent(self.orgSubscription, forKey: .orgSubscription)
        try container.encode(self.orgType, forKey: .orgType)
        try container.encodeIfPresent(self.userEmail, forKey: .userEmail)
        try container.encode(self.userId, forKey: .userId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orgId = "org_id"
        case orgRole = "org_role"
        case orgSubscription = "org_subscription"
        case orgType = "org_type"
        case userEmail = "user_email"
        case userId = "user_id"
    }
}