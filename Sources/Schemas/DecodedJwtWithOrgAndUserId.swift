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
    public let sts: JSONValue?
    public let v: JSONValue?
    public let o: JSONValue?
    public let orgPublicMetadata: JSONValue?
    public let primaryEmailAddress: JSONValue?
    /// Must be a string starting with `user_`
    public let userId: String
    /// Must be a string starting with `org_`
    public let orgId: String
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
        sts: JSONValue? = nil,
        v: JSONValue? = nil,
        o: JSONValue? = nil,
        orgPublicMetadata: JSONValue? = nil,
        primaryEmailAddress: JSONValue? = nil,
        userId: String,
        orgId: String,
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
        self.sts = sts
        self.v = v
        self.o = o
        self.orgPublicMetadata = orgPublicMetadata
        self.primaryEmailAddress = primaryEmailAddress
        self.userId = userId
        self.orgId = orgId
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
        self.sts = try container.decodeIfPresent(JSONValue.self, forKey: .sts)
        self.v = try container.decodeIfPresent(JSONValue.self, forKey: .v)
        self.o = try container.decodeIfPresent(JSONValue.self, forKey: .o)
        self.orgPublicMetadata = try container.decodeIfPresent(JSONValue.self, forKey: .orgPublicMetadata)
        self.primaryEmailAddress = try container.decodeIfPresent(JSONValue.self, forKey: .primaryEmailAddress)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.orgId = try container.decode(String.self, forKey: .orgId)
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
        try container.encodeIfPresent(self.sts, forKey: .sts)
        try container.encodeIfPresent(self.v, forKey: .v)
        try container.encodeIfPresent(self.o, forKey: .o)
        try container.encodeIfPresent(self.orgPublicMetadata, forKey: .orgPublicMetadata)
        try container.encodeIfPresent(self.primaryEmailAddress, forKey: .primaryEmailAddress)
        try container.encode(self.userId, forKey: .userId)
        try container.encode(self.orgId, forKey: .orgId)
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
        case sts
        case v
        case o
        case orgPublicMetadata = "org_public_metadata"
        case primaryEmailAddress = "primary_email_address"
        case userId = "user_id"
        case orgId = "org_id"
    }
}