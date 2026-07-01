import Foundation

/// [CUSTOMER] Postal address of shipper or consignee.
public struct CargojsonAddress: Codable, Hashable, Sendable {
    public let country: String
    public let name1: String
    public let name2: String?
    public let place: String
    public let postCode: String
    public let stateProvince: String?
    public let streetAddress1: String
    public let streetAddress2: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        country: String,
        name1: String,
        name2: String? = nil,
        place: String,
        postCode: String,
        stateProvince: String? = nil,
        streetAddress1: String,
        streetAddress2: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.country = country
        self.name1 = name1
        self.name2 = name2
        self.place = place
        self.postCode = postCode
        self.stateProvince = stateProvince
        self.streetAddress1 = streetAddress1
        self.streetAddress2 = streetAddress2
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.country = try container.decode(String.self, forKey: .country)
        self.name1 = try container.decode(String.self, forKey: .name1)
        self.name2 = try container.decodeIfPresent(String.self, forKey: .name2)
        self.place = try container.decode(String.self, forKey: .place)
        self.postCode = try container.decode(String.self, forKey: .postCode)
        self.stateProvince = try container.decodeIfPresent(String.self, forKey: .stateProvince)
        self.streetAddress1 = try container.decode(String.self, forKey: .streetAddress1)
        self.streetAddress2 = try container.decodeIfPresent(String.self, forKey: .streetAddress2)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.country, forKey: .country)
        try container.encode(self.name1, forKey: .name1)
        try container.encodeIfPresent(self.name2, forKey: .name2)
        try container.encode(self.place, forKey: .place)
        try container.encode(self.postCode, forKey: .postCode)
        try container.encodeIfPresent(self.stateProvince, forKey: .stateProvince)
        try container.encode(self.streetAddress1, forKey: .streetAddress1)
        try container.encodeIfPresent(self.streetAddress2, forKey: .streetAddress2)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case country
        case name1
        case name2
        case place
        case postCode
        case stateProvince
        case streetAddress1
        case streetAddress2
    }
}