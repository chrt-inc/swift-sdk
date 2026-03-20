import Foundation

public struct CredentialInfoRes: Codable, Hashable, Sendable {
    public let credentialType: CallerCredentialTypeEnum
    public let caller: Caller
    public let rawClaims: [String: JSONValue]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        credentialType: CallerCredentialTypeEnum,
        caller: Caller,
        rawClaims: [String: JSONValue],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.credentialType = credentialType
        self.caller = caller
        self.rawClaims = rawClaims
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.credentialType = try container.decode(CallerCredentialTypeEnum.self, forKey: .credentialType)
        self.caller = try container.decode(Caller.self, forKey: .caller)
        self.rawClaims = try container.decode([String: JSONValue].self, forKey: .rawClaims)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.credentialType, forKey: .credentialType)
        try container.encode(self.caller, forKey: .caller)
        try container.encode(self.rawClaims, forKey: .rawClaims)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case credentialType = "credential_type"
        case caller
        case rawClaims = "raw_claims"
    }
}