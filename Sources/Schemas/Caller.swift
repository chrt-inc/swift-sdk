import Foundation

public struct Caller: Codable, Hashable, Sendable {
    public let credentialType: CallerCredentialTypeEnum
    public let credential: String?
    public let o: ClerkOrgData
    /// Must be a string starting with `user_`
    public let userId: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let orgPublicMetadata: [String: JSONValue]?
    public let primaryEmailAddress: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        credentialType: CallerCredentialTypeEnum,
        credential: String? = nil,
        o: ClerkOrgData,
        userId: String,
        orgId: String,
        orgPublicMetadata: [String: JSONValue]? = nil,
        primaryEmailAddress: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.credentialType = credentialType
        self.credential = credential
        self.o = o
        self.userId = userId
        self.orgId = orgId
        self.orgPublicMetadata = orgPublicMetadata
        self.primaryEmailAddress = primaryEmailAddress
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.credentialType = try container.decode(CallerCredentialTypeEnum.self, forKey: .credentialType)
        self.credential = try container.decodeIfPresent(String.self, forKey: .credential)
        self.o = try container.decode(ClerkOrgData.self, forKey: .o)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.orgPublicMetadata = try container.decodeIfPresent([String: JSONValue].self, forKey: .orgPublicMetadata)
        self.primaryEmailAddress = try container.decodeIfPresent(String.self, forKey: .primaryEmailAddress)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.credentialType, forKey: .credentialType)
        try container.encodeIfPresent(self.credential, forKey: .credential)
        try container.encode(self.o, forKey: .o)
        try container.encode(self.userId, forKey: .userId)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.orgPublicMetadata, forKey: .orgPublicMetadata)
        try container.encodeIfPresent(self.primaryEmailAddress, forKey: .primaryEmailAddress)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case credentialType = "credential_type"
        case credential
        case o
        case userId = "user_id"
        case orgId = "org_id"
        case orgPublicMetadata = "org_public_metadata"
        case primaryEmailAddress = "primary_email_address"
    }
}