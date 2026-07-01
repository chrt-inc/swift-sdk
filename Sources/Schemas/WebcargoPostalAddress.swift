import Foundation

public struct WebcargoPostalAddress: Codable, Hashable, Sendable {
    public let cityId: String?
    public let cityName: String?
    public let countryId: String?
    public let countryName: String?
    public let locationName: String?
    public let locationTypeCode: String?
    public let postalCode: String?
    public let stateOrProvince: String?
    public let streetName: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cityId: String? = nil,
        cityName: String? = nil,
        countryId: String? = nil,
        countryName: String? = nil,
        locationName: String? = nil,
        locationTypeCode: String? = nil,
        postalCode: String? = nil,
        stateOrProvince: String? = nil,
        streetName: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cityId = cityId
        self.cityName = cityName
        self.countryId = countryId
        self.countryName = countryName
        self.locationName = locationName
        self.locationTypeCode = locationTypeCode
        self.postalCode = postalCode
        self.stateOrProvince = stateOrProvince
        self.streetName = streetName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cityId = try container.decodeIfPresent(String.self, forKey: .cityId)
        self.cityName = try container.decodeIfPresent(String.self, forKey: .cityName)
        self.countryId = try container.decodeIfPresent(String.self, forKey: .countryId)
        self.countryName = try container.decodeIfPresent(String.self, forKey: .countryName)
        self.locationName = try container.decodeIfPresent(String.self, forKey: .locationName)
        self.locationTypeCode = try container.decodeIfPresent(String.self, forKey: .locationTypeCode)
        self.postalCode = try container.decodeIfPresent(String.self, forKey: .postalCode)
        self.stateOrProvince = try container.decodeIfPresent(String.self, forKey: .stateOrProvince)
        self.streetName = try container.decodeIfPresent(String.self, forKey: .streetName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.cityId, forKey: .cityId)
        try container.encodeIfPresent(self.cityName, forKey: .cityName)
        try container.encodeIfPresent(self.countryId, forKey: .countryId)
        try container.encodeIfPresent(self.countryName, forKey: .countryName)
        try container.encodeIfPresent(self.locationName, forKey: .locationName)
        try container.encodeIfPresent(self.locationTypeCode, forKey: .locationTypeCode)
        try container.encodeIfPresent(self.postalCode, forKey: .postalCode)
        try container.encodeIfPresent(self.stateOrProvince, forKey: .stateOrProvince)
        try container.encodeIfPresent(self.streetName, forKey: .streetName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cityId = "city_id"
        case cityName = "city_name"
        case countryId = "country_id"
        case countryName = "country_name"
        case locationName = "location_name"
        case locationTypeCode = "location_type_code"
        case postalCode = "postal_code"
        case stateOrProvince = "state_or_province"
        case streetName = "street_name"
    }
}