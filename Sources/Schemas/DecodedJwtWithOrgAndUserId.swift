import Foundation

public struct DecodedJwtWithOrgAndUserId: Codable, Hashable, Sendable {
    public let azp: Nullable<String>?
    public let exp: Nullable<Int>?
    public let fva: Nullable<[Int]>?
    public let iat: Nullable<Int>?
    public let iss: Nullable<String>?
    public let jti: Nullable<String>?
    public let nbf: Nullable<Int>?
    public let sid: Nullable<String>?
    /// Must be a string starting with `user_`
    public let sub: Nullable<String>?
    public let sts: Nullable<String>?
    public let v: Nullable<Int>?
    public let o: Nullable<ClerkOrgData>?
    public let orgPublicMetadata: Nullable<[String: JSONValue]>?
    public let primaryEmailAddress: Nullable<String>?
    /// Must be a string starting with `user_`
    public let userId: String
    /// Must be a string starting with `org_`
    public let orgId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        azp: Nullable<String>? = nil,
        exp: Nullable<Int>? = nil,
        fva: Nullable<[Int]>? = nil,
        iat: Nullable<Int>? = nil,
        iss: Nullable<String>? = nil,
        jti: Nullable<String>? = nil,
        nbf: Nullable<Int>? = nil,
        sid: Nullable<String>? = nil,
        sub: Nullable<String>? = nil,
        sts: Nullable<String>? = nil,
        v: Nullable<Int>? = nil,
        o: Nullable<ClerkOrgData>? = nil,
        orgPublicMetadata: Nullable<[String: JSONValue]>? = nil,
        primaryEmailAddress: Nullable<String>? = nil,
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
        self.azp = try container.decodeNullableIfPresent(String.self, forKey: .azp)
        self.exp = try container.decodeNullableIfPresent(Int.self, forKey: .exp)
        self.fva = try container.decodeNullableIfPresent([Int].self, forKey: .fva)
        self.iat = try container.decodeNullableIfPresent(Int.self, forKey: .iat)
        self.iss = try container.decodeNullableIfPresent(String.self, forKey: .iss)
        self.jti = try container.decodeNullableIfPresent(String.self, forKey: .jti)
        self.nbf = try container.decodeNullableIfPresent(Int.self, forKey: .nbf)
        self.sid = try container.decodeNullableIfPresent(String.self, forKey: .sid)
        self.sub = try container.decodeNullableIfPresent(String.self, forKey: .sub)
        self.sts = try container.decodeNullableIfPresent(String.self, forKey: .sts)
        self.v = try container.decodeNullableIfPresent(Int.self, forKey: .v)
        self.o = try container.decodeNullableIfPresent(ClerkOrgData.self, forKey: .o)
        self.orgPublicMetadata = try container.decodeNullableIfPresent([String: JSONValue].self, forKey: .orgPublicMetadata)
        self.primaryEmailAddress = try container.decodeNullableIfPresent(String.self, forKey: .primaryEmailAddress)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeNullableIfPresent(self.azp, forKey: .azp)
        try container.encodeNullableIfPresent(self.exp, forKey: .exp)
        try container.encodeNullableIfPresent(self.fva, forKey: .fva)
        try container.encodeNullableIfPresent(self.iat, forKey: .iat)
        try container.encodeNullableIfPresent(self.iss, forKey: .iss)
        try container.encodeNullableIfPresent(self.jti, forKey: .jti)
        try container.encodeNullableIfPresent(self.nbf, forKey: .nbf)
        try container.encodeNullableIfPresent(self.sid, forKey: .sid)
        try container.encodeNullableIfPresent(self.sub, forKey: .sub)
        try container.encodeNullableIfPresent(self.sts, forKey: .sts)
        try container.encodeNullableIfPresent(self.v, forKey: .v)
        try container.encodeNullableIfPresent(self.o, forKey: .o)
        try container.encodeNullableIfPresent(self.orgPublicMetadata, forKey: .orgPublicMetadata)
        try container.encodeNullableIfPresent(self.primaryEmailAddress, forKey: .primaryEmailAddress)
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