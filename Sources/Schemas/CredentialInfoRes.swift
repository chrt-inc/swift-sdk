import Foundation

public struct CredentialInfoRes: Codable, Hashable, Sendable {
    public let caller: Caller
    public let credentialType: CallerCredentialTypeEnum
    public let rawClaims: [String: JSONValue]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        caller: Caller,
        credentialType: CallerCredentialTypeEnum,
        rawClaims: [String: JSONValue],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.caller = caller
        self.credentialType = credentialType
        self.rawClaims = rawClaims
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.caller = try container.decode(Caller.self, forKey: .caller)
        self.credentialType = try container.decode(CallerCredentialTypeEnum.self, forKey: .credentialType)
        self.rawClaims = try container.decode([String: JSONValue].self, forKey: .rawClaims)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.caller, forKey: .caller)
        try container.encode(self.credentialType, forKey: .credentialType)
        try container.encode(self.rawClaims, forKey: .rawClaims)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case caller
        case credentialType = "credential_type"
        case rawClaims = "raw_claims"
    }
}