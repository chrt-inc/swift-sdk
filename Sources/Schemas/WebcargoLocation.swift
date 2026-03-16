import Foundation

public struct WebcargoLocation: Codable, Hashable, Sendable {
    public let locationTypeCode: String?
    public let locationCode: String?
    public let locationName: String?
    public let countryId: String?
    public let countryName: String?
    public let postalCode: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        locationTypeCode: String? = nil,
        locationCode: String? = nil,
        locationName: String? = nil,
        countryId: String? = nil,
        countryName: String? = nil,
        postalCode: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.locationTypeCode = locationTypeCode
        self.locationCode = locationCode
        self.locationName = locationName
        self.countryId = countryId
        self.countryName = countryName
        self.postalCode = postalCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.locationTypeCode = try container.decodeIfPresent(String.self, forKey: .locationTypeCode)
        self.locationCode = try container.decodeIfPresent(String.self, forKey: .locationCode)
        self.locationName = try container.decodeIfPresent(String.self, forKey: .locationName)
        self.countryId = try container.decodeIfPresent(String.self, forKey: .countryId)
        self.countryName = try container.decodeIfPresent(String.self, forKey: .countryName)
        self.postalCode = try container.decodeIfPresent(String.self, forKey: .postalCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.locationTypeCode, forKey: .locationTypeCode)
        try container.encodeIfPresent(self.locationCode, forKey: .locationCode)
        try container.encodeIfPresent(self.locationName, forKey: .locationName)
        try container.encodeIfPresent(self.countryId, forKey: .countryId)
        try container.encodeIfPresent(self.countryName, forKey: .countryName)
        try container.encodeIfPresent(self.postalCode, forKey: .postalCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case locationTypeCode = "location_type_code"
        case locationCode = "location_code"
        case locationName = "location_name"
        case countryId = "country_id"
        case countryName = "country_name"
        case postalCode = "postal_code"
    }
}