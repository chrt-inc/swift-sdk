import Foundation

public struct DecodedJwtWithOrgAndUserId: Codable, Hashable, Sendable {
    public let azp: JSONValue?
    public let exp: JSONValue?
    public let fva: JSONValue?
    public let iat: JSONValue?
    public let iss: JSONValue?
    public let jti: JSONValue?
    public let nbf: JSONValue?
    public let sid: JSONValue?
    /// Must be a string starting with `user_`
    public let sub: JSONValue?
    public let orgPermissions: JSONValue?
    public let orgRole: JSONValue?
    public let orgSlug: JSONValue?
    public let emailVerified: JSONValue?
    public let orgPublicMetadata: JSONValue?
    public let userPublicMetadata: JSONValue?
    public let primaryEmailAddress: JSONValue?
    /// Must be a string starting with `org_`
    public let orgId: String
    /// Must be a string starting with `user_`
    public let userId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        azp: JSONValue? = nil,
        exp: JSONValue? = nil,
        fva: JSONValue? = nil,
        iat: JSONValue? = nil,
        iss: JSONValue? = nil,
        jti: JSONValue? = nil,
        nbf: JSONValue? = nil,
        sid: JSONValue? = nil,
        sub: JSONValue? = nil,
        orgPermissions: JSONValue? = nil,
        orgRole: JSONValue? = nil,
        orgSlug: JSONValue? = nil,
        emailVerified: JSONValue? = nil,
        orgPublicMetadata: JSONValue? = nil,
        userPublicMetadata: JSONValue? = nil,
        primaryEmailAddress: JSONValue? = nil,
        orgId: String,
        userId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.azp = azp
        self.exp = exp
        self.fva = fva
        self.iat = iat
        self.iss = iss
        self.jti = jti
        self.nbf = nbf
        self.sid = sid
        self.sub = sub
        self.orgPermissions = orgPermissions
        self.orgRole = orgRole
        self.orgSlug = orgSlug
        self.emailVerified = emailVerified
        self.orgPublicMetadata = orgPublicMetadata
        self.userPublicMetadata = userPublicMetadata
        self.primaryEmailAddress = primaryEmailAddress
        self.orgId = orgId
        self.userId = userId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.azp = try container.decodeIfPresent(JSONValue.self, forKey: .azp)
        self.exp = try container.decodeIfPresent(JSONValue.self, forKey: .exp)
        self.fva = try container.decodeIfPresent(JSONValue.self, forKey: .fva)
        self.iat = try container.decodeIfPresent(JSONValue.self, forKey: .iat)
        self.iss = try container.decodeIfPresent(JSONValue.self, forKey: .iss)
        self.jti = try container.decodeIfPresent(JSONValue.self, forKey: .jti)
        self.nbf = try container.decodeIfPresent(JSONValue.self, forKey: .nbf)
        self.sid = try container.decodeIfPresent(JSONValue.self, forKey: .sid)
        self.sub = try container.decodeIfPresent(JSONValue.self, forKey: .sub)
        self.orgPermissions = try container.decodeIfPresent(JSONValue.self, forKey: .orgPermissions)
        self.orgRole = try container.decodeIfPresent(JSONValue.self, forKey: .orgRole)
        self.orgSlug = try container.decodeIfPresent(JSONValue.self, forKey: .orgSlug)
        self.emailVerified = try container.decodeIfPresent(JSONValue.self, forKey: .emailVerified)
        self.orgPublicMetadata = try container.decodeIfPresent(JSONValue.self, forKey: .orgPublicMetadata)
        self.userPublicMetadata = try container.decodeIfPresent(JSONValue.self, forKey: .userPublicMetadata)
        self.primaryEmailAddress = try container.decodeIfPresent(JSONValue.self, forKey: .primaryEmailAddress)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.azp, forKey: .azp)
        try container.encodeIfPresent(self.exp, forKey: .exp)
        try container.encodeIfPresent(self.fva, forKey: .fva)
        try container.encodeIfPresent(self.iat, forKey: .iat)
        try container.encodeIfPresent(self.iss, forKey: .iss)
        try container.encodeIfPresent(self.jti, forKey: .jti)
        try container.encodeIfPresent(self.nbf, forKey: .nbf)
        try container.encodeIfPresent(self.sid, forKey: .sid)
        try container.encodeIfPresent(self.sub, forKey: .sub)
        try container.encodeIfPresent(self.orgPermissions, forKey: .orgPermissions)
        try container.encodeIfPresent(self.orgRole, forKey: .orgRole)
        try container.encodeIfPresent(self.orgSlug, forKey: .orgSlug)
        try container.encodeIfPresent(self.emailVerified, forKey: .emailVerified)
        try container.encodeIfPresent(self.orgPublicMetadata, forKey: .orgPublicMetadata)
        try container.encodeIfPresent(self.userPublicMetadata, forKey: .userPublicMetadata)
        try container.encodeIfPresent(self.primaryEmailAddress, forKey: .primaryEmailAddress)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.userId, forKey: .userId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case azp
        case exp
        case fva
        case iat
        case iss
        case jti
        case nbf
        case sid
        case sub
        case orgPermissions = "org_permissions"
        case orgRole = "org_role"
        case orgSlug = "org_slug"
        case emailVerified = "email_verified"
        case orgPublicMetadata = "org_public_metadata"
        case userPublicMetadata = "user_public_metadata"
        case primaryEmailAddress = "primary_email_address"
        case orgId = "org_id"
        case userId = "user_id"
    }
}