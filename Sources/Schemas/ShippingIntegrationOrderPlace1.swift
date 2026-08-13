import Foundation

/// One end of a route.
///
/// Only `label` is guaranteed. Some integrations expose a bare place name with
/// no structured address and no coordinates at all, so every other field is
/// optional. `location` carries GeoJSON when the provider gives coordinates,
/// which is what makes the place mappable and 2dsphere-indexable.
public struct ShippingIntegrationOrderPlace1: Codable, Hashable, Sendable {
    public let city: String?
    public let companyName: String?
    public let countryCode: String?
    public let label: String
    public let location: LocationFeature?
    public let postalCode: String?
    public let state: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        city: String? = nil,
        companyName: String? = nil,
        countryCode: String? = nil,
        label: String,
        location: LocationFeature? = nil,
        postalCode: String? = nil,
        state: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.city = city
        self.companyName = companyName
        self.countryCode = countryCode
        self.label = label
        self.location = location
        self.postalCode = postalCode
        self.state = state
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.city = try container.decodeIfPresent(String.self, forKey: .city)
        self.companyName = try container.decodeIfPresent(String.self, forKey: .companyName)
        self.countryCode = try container.decodeIfPresent(String.self, forKey: .countryCode)
        self.label = try container.decode(String.self, forKey: .label)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.postalCode = try container.decodeIfPresent(String.self, forKey: .postalCode)
        self.state = try container.decodeIfPresent(String.self, forKey: .state)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.city, forKey: .city)
        try container.encodeIfPresent(self.companyName, forKey: .companyName)
        try container.encodeIfPresent(self.countryCode, forKey: .countryCode)
        try container.encode(self.label, forKey: .label)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.postalCode, forKey: .postalCode)
        try container.encodeIfPresent(self.state, forKey: .state)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case city
        case companyName = "company_name"
        case countryCode = "country_code"
        case label
        case location
        case postalCode = "postal_code"
        case state
    }
}