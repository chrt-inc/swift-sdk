import Foundation

public struct WorkflowActor: Codable, Hashable, Sendable {
    /// Must be a string starting with `user_`
    public let userId: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let orgType: OrgTypeEnum
    public let orgRole: OrgRoleEnum?
    public let orgSubscription: Bool?
    public let userEmail: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        userId: String,
        orgId: String,
        orgType: OrgTypeEnum,
        orgRole: OrgRoleEnum? = nil,
        orgSubscription: Bool? = nil,
        userEmail: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.userId = userId
        self.orgId = orgId
        self.orgType = orgType
        self.orgRole = orgRole
        self.orgSubscription = orgSubscription
        self.userEmail = userEmail
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.orgType = try container.decode(OrgTypeEnum.self, forKey: .orgType)
        self.orgRole = try container.decodeIfPresent(OrgRoleEnum.self, forKey: .orgRole)
        self.orgSubscription = try container.decodeIfPresent(Bool.self, forKey: .orgSubscription)
        self.userEmail = try container.decodeIfPresent(String.self, forKey: .userEmail)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.userId, forKey: .userId)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.orgType, forKey: .orgType)
        try container.encodeIfPresent(self.orgRole, forKey: .orgRole)
        try container.encodeIfPresent(self.orgSubscription, forKey: .orgSubscription)
        try container.encodeIfPresent(self.userEmail, forKey: .userEmail)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case userId = "user_id"
        case orgId = "org_id"
        case orgType = "org_type"
        case orgRole = "org_role"
        case orgSubscription = "org_subscription"
        case userEmail = "user_email"
    }
}