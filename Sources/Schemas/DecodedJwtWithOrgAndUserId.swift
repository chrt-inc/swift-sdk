import Foundation

public struct DecodedJwtWithOrgAndUserId: Codable, Hashable, Sendable {
    public let azp: String?
    public let exp: Int?
    public let fva: [Int]?
    public let iat: Int?
    public let iss: String?
    public let jti: String?
    public let nbf: Int?
    public let sid: String?
    /// Must be a string starting with `user_`
    public let sub: String?
    public let sts: String?
    public let v: Int?
    public let o: ClerkOrgData?
    public let orgPublicMetadata: [String: JSONValue]?
    public let primaryEmailAddress: String?
    /// Must be a string starting with `user_`
    public let userId: String
    /// Must be a string starting with `org_`
    public let orgId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        azp: String? = nil,
        exp: Int? = nil,
        fva: [Int]? = nil,
        iat: Int? = nil,
        iss: String? = nil,
        jti: String? = nil,
        nbf: Int? = nil,
        sid: String? = nil,
        sub: String? = nil,
        sts: String? = nil,
        v: Int? = nil,
        o: ClerkOrgData? = nil,
        orgPublicMetadata: [String: JSONValue]? = nil,
        primaryEmailAddress: String? = nil,
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
        self.azp = try container.decodeIfPresent(String.self, forKey: .azp)
        self.exp = try container.decodeIfPresent(Int.self, forKey: .exp)
        self.fva = try container.decodeIfPresent([Int].self, forKey: .fva)
        self.iat = try container.decodeIfPresent(Int.self, forKey: .iat)
        self.iss = try container.decodeIfPresent(String.self, forKey: .iss)
        self.jti = try container.decodeIfPresent(String.self, forKey: .jti)
        self.nbf = try container.decodeIfPresent(Int.self, forKey: .nbf)
        self.sid = try container.decodeIfPresent(String.self, forKey: .sid)
        self.sub = try container.decodeIfPresent(String.self, forKey: .sub)
        self.sts = try container.decodeIfPresent(String.self, forKey: .sts)
        self.v = try container.decodeIfPresent(Int.self, forKey: .v)
        self.o = try container.decodeIfPresent(ClerkOrgData.self, forKey: .o)
        self.orgPublicMetadata = try container.decodeIfPresent([String: JSONValue].self, forKey: .orgPublicMetadata)
        self.primaryEmailAddress = try container.decodeIfPresent(String.self, forKey: .primaryEmailAddress)
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