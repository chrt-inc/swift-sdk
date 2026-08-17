import Foundation

public struct OnTime360LocationResponse1: Codable, Hashable, Sendable {
    public let addressLine1: String?
    public let addressLine2: String?
    public let city: String?
    public let companyName: String?
    public let contactName: String?
    public let country: String?
    public let id: String?
    public let latitudeLongitude: String?
    public let postalCode: String?
    public let state: String?
    public let zone: OnTime360ZoneResponse1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        addressLine1: String? = nil,
        addressLine2: String? = nil,
        city: String? = nil,
        companyName: String? = nil,
        contactName: String? = nil,
        country: String? = nil,
        id: String? = nil,
        latitudeLongitude: String? = nil,
        postalCode: String? = nil,
        state: String? = nil,
        zone: OnTime360ZoneResponse1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.addressLine1 = addressLine1
        self.addressLine2 = addressLine2
        self.city = city
        self.companyName = companyName
        self.contactName = contactName
        self.country = country
        self.id = id
        self.latitudeLongitude = latitudeLongitude
        self.postalCode = postalCode
        self.state = state
        self.zone = zone
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.addressLine1 = try container.decodeIfPresent(String.self, forKey: .addressLine1)
        self.addressLine2 = try container.decodeIfPresent(String.self, forKey: .addressLine2)
        self.city = try container.decodeIfPresent(String.self, forKey: .city)
        self.companyName = try container.decodeIfPresent(String.self, forKey: .companyName)
        self.contactName = try container.decodeIfPresent(String.self, forKey: .contactName)
        self.country = try container.decodeIfPresent(String.self, forKey: .country)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.latitudeLongitude = try container.decodeIfPresent(String.self, forKey: .latitudeLongitude)
        self.postalCode = try container.decodeIfPresent(String.self, forKey: .postalCode)
        self.state = try container.decodeIfPresent(String.self, forKey: .state)
        self.zone = try container.decodeIfPresent(OnTime360ZoneResponse1.self, forKey: .zone)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.addressLine1, forKey: .addressLine1)
        try container.encodeIfPresent(self.addressLine2, forKey: .addressLine2)
        try container.encodeIfPresent(self.city, forKey: .city)
        try container.encodeIfPresent(self.companyName, forKey: .companyName)
        try container.encodeIfPresent(self.contactName, forKey: .contactName)
        try container.encodeIfPresent(self.country, forKey: .country)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.latitudeLongitude, forKey: .latitudeLongitude)
        try container.encodeIfPresent(self.postalCode, forKey: .postalCode)
        try container.encodeIfPresent(self.state, forKey: .state)
        try container.encodeIfPresent(self.zone, forKey: .zone)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case addressLine1 = "AddressLine1"
        case addressLine2 = "AddressLine2"
        case city = "City"
        case companyName = "CompanyName"
        case contactName = "ContactName"
        case country = "Country"
        case id = "ID"
        case latitudeLongitude = "LatitudeLongitude"
        case postalCode = "PostalCode"
        case state = "State"
        case zone = "Zone"
    }
}