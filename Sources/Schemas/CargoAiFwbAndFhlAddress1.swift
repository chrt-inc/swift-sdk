import Foundation

public struct CargoAiFwbAndFhlAddress1: Codable, Hashable, Sendable {
    public let city: CargoAiFwbAndFhlCity1?
    public let country: CargoAiFwbAndFhlCountry1
    public let line1: String
    public let line2: String?
    public let place: String?
    public let postalCode: String?
    public let stateProvince: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        city: CargoAiFwbAndFhlCity1? = nil,
        country: CargoAiFwbAndFhlCountry1,
        line1: String,
        line2: String? = nil,
        place: String? = nil,
        postalCode: String? = nil,
        stateProvince: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.city = city
        self.country = country
        self.line1 = line1
        self.line2 = line2
        self.place = place
        self.postalCode = postalCode
        self.stateProvince = stateProvince
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.city = try container.decodeIfPresent(CargoAiFwbAndFhlCity1.self, forKey: .city)
        self.country = try container.decode(CargoAiFwbAndFhlCountry1.self, forKey: .country)
        self.line1 = try container.decode(String.self, forKey: .line1)
        self.line2 = try container.decodeIfPresent(String.self, forKey: .line2)
        self.place = try container.decodeIfPresent(String.self, forKey: .place)
        self.postalCode = try container.decodeIfPresent(String.self, forKey: .postalCode)
        self.stateProvince = try container.decodeIfPresent(String.self, forKey: .stateProvince)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.city, forKey: .city)
        try container.encode(self.country, forKey: .country)
        try container.encode(self.line1, forKey: .line1)
        try container.encodeIfPresent(self.line2, forKey: .line2)
        try container.encodeIfPresent(self.place, forKey: .place)
        try container.encodeIfPresent(self.postalCode, forKey: .postalCode)
        try container.encodeIfPresent(self.stateProvince, forKey: .stateProvince)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case city
        case country
        case line1
        case line2
        case place
        case postalCode = "postal_code"
        case stateProvince = "state_province"
    }
}