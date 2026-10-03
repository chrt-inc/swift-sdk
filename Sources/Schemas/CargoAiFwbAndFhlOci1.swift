import Foundation

public struct CargoAiFwbAndFhlOci1: Codable, Hashable, Sendable {
    public let originCountryCode: String
    public let security: CargoAiFwbAndFhlOciSecurity1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        originCountryCode: String,
        security: CargoAiFwbAndFhlOciSecurity1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.originCountryCode = originCountryCode
        self.security = security
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.originCountryCode = try container.decode(String.self, forKey: .originCountryCode)
        self.security = try container.decodeIfPresent(CargoAiFwbAndFhlOciSecurity1.self, forKey: .security)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.originCountryCode, forKey: .originCountryCode)
        try container.encodeIfPresent(self.security, forKey: .security)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case originCountryCode = "origin_country_code"
        case security
    }
}