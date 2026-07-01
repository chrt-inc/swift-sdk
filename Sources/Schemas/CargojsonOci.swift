import Foundation

/// [CUSTOMER] Other Customs, Security and Regulatory Control Information.
public struct CargojsonOci: Codable, Hashable, Sendable {
    public let additionalControlInformation: String?
    public let controlInformation: String?
    public let informationIdentifier: String?
    public let isoCountryCode: String?
    public let supplementaryControlInformation: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        additionalControlInformation: String? = nil,
        controlInformation: String? = nil,
        informationIdentifier: String? = nil,
        isoCountryCode: String? = nil,
        supplementaryControlInformation: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.additionalControlInformation = additionalControlInformation
        self.controlInformation = controlInformation
        self.informationIdentifier = informationIdentifier
        self.isoCountryCode = isoCountryCode
        self.supplementaryControlInformation = supplementaryControlInformation
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.additionalControlInformation = try container.decodeIfPresent(String.self, forKey: .additionalControlInformation)
        self.controlInformation = try container.decodeIfPresent(String.self, forKey: .controlInformation)
        self.informationIdentifier = try container.decodeIfPresent(String.self, forKey: .informationIdentifier)
        self.isoCountryCode = try container.decodeIfPresent(String.self, forKey: .isoCountryCode)
        self.supplementaryControlInformation = try container.decodeIfPresent(String.self, forKey: .supplementaryControlInformation)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.additionalControlInformation, forKey: .additionalControlInformation)
        try container.encodeIfPresent(self.controlInformation, forKey: .controlInformation)
        try container.encodeIfPresent(self.informationIdentifier, forKey: .informationIdentifier)
        try container.encodeIfPresent(self.isoCountryCode, forKey: .isoCountryCode)
        try container.encodeIfPresent(self.supplementaryControlInformation, forKey: .supplementaryControlInformation)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case additionalControlInformation
        case controlInformation
        case informationIdentifier
        case isoCountryCode
        case supplementaryControlInformation
    }
}