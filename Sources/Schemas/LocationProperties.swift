import Foundation

/// Properties for GeoJSON Feature objects
public struct LocationProperties: Codable, Hashable, Sendable {
    public let address: String?
    public let countryCode: String?
    public let name: String?
    public let postalCode: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        address: String? = nil,
        countryCode: String? = nil,
        name: String? = nil,
        postalCode: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.address = address
        self.countryCode = countryCode
        self.name = name
        self.postalCode = postalCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.address = try container.decodeIfPresent(String.self, forKey: .address)
        self.countryCode = try container.decodeIfPresent(String.self, forKey: .countryCode)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.postalCode = try container.decodeIfPresent(String.self, forKey: .postalCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.address, forKey: .address)
        try container.encodeIfPresent(self.countryCode, forKey: .countryCode)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.postalCode, forKey: .postalCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case countryCode = "country_code"
        case name
        case postalCode = "postal_code"
    }
}