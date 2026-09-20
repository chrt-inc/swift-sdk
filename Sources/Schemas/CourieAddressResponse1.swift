import Foundation

public struct CourieAddressResponse1: Codable, Hashable, Sendable {
    public let city: String?
    public let country: String?
    public let display: String?
    public let lngLat: CourieLatLngResponse1?
    public let postalCode: String?
    public let state: String?
    public let streetAddress: String?
    public let suite: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        city: String? = nil,
        country: String? = nil,
        display: String? = nil,
        lngLat: CourieLatLngResponse1? = nil,
        postalCode: String? = nil,
        state: String? = nil,
        streetAddress: String? = nil,
        suite: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.city = city
        self.country = country
        self.display = display
        self.lngLat = lngLat
        self.postalCode = postalCode
        self.state = state
        self.streetAddress = streetAddress
        self.suite = suite
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.city = try container.decodeIfPresent(String.self, forKey: .city)
        self.country = try container.decodeIfPresent(String.self, forKey: .country)
        self.display = try container.decodeIfPresent(String.self, forKey: .display)
        self.lngLat = try container.decodeIfPresent(CourieLatLngResponse1.self, forKey: .lngLat)
        self.postalCode = try container.decodeIfPresent(String.self, forKey: .postalCode)
        self.state = try container.decodeIfPresent(String.self, forKey: .state)
        self.streetAddress = try container.decodeIfPresent(String.self, forKey: .streetAddress)
        self.suite = try container.decodeIfPresent(String.self, forKey: .suite)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.city, forKey: .city)
        try container.encodeIfPresent(self.country, forKey: .country)
        try container.encodeIfPresent(self.display, forKey: .display)
        try container.encodeIfPresent(self.lngLat, forKey: .lngLat)
        try container.encodeIfPresent(self.postalCode, forKey: .postalCode)
        try container.encodeIfPresent(self.state, forKey: .state)
        try container.encodeIfPresent(self.streetAddress, forKey: .streetAddress)
        try container.encodeIfPresent(self.suite, forKey: .suite)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case city
        case country
        case display
        case lngLat
        case postalCode
        case state
        case streetAddress
        case suite
    }
}