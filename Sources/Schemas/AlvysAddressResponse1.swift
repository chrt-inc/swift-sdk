import Foundation

public struct AlvysAddressResponse1: Codable, Hashable, Sendable {
    public let city: String?
    public let country: String?
    public let state: String?
    public let street: String?
    public let zipCode: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        city: String? = nil,
        country: String? = nil,
        state: String? = nil,
        street: String? = nil,
        zipCode: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.city = city
        self.country = country
        self.state = state
        self.street = street
        self.zipCode = zipCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.city = try container.decodeIfPresent(String.self, forKey: .city)
        self.country = try container.decodeIfPresent(String.self, forKey: .country)
        self.state = try container.decodeIfPresent(String.self, forKey: .state)
        self.street = try container.decodeIfPresent(String.self, forKey: .street)
        self.zipCode = try container.decodeIfPresent(String.self, forKey: .zipCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.city, forKey: .city)
        try container.encodeIfPresent(self.country, forKey: .country)
        try container.encodeIfPresent(self.state, forKey: .state)
        try container.encodeIfPresent(self.street, forKey: .street)
        try container.encodeIfPresent(self.zipCode, forKey: .zipCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case city = "City"
        case country = "Country"
        case state = "State"
        case street = "Street"
        case zipCode = "ZipCode"
    }
}