import Foundation

public struct DispatchScienceAddressResponse1: Codable, Hashable, Sendable {
    public let addressLine1: String?
    public let addressLine2: String?
    public let city: String?
    public let company: String?
    public let postalCode: String?
    public let stateProvince: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        addressLine1: String? = nil,
        addressLine2: String? = nil,
        city: String? = nil,
        company: String? = nil,
        postalCode: String? = nil,
        stateProvince: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.addressLine1 = addressLine1
        self.addressLine2 = addressLine2
        self.city = city
        self.company = company
        self.postalCode = postalCode
        self.stateProvince = stateProvince
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.addressLine1 = try container.decodeIfPresent(String.self, forKey: .addressLine1)
        self.addressLine2 = try container.decodeIfPresent(String.self, forKey: .addressLine2)
        self.city = try container.decodeIfPresent(String.self, forKey: .city)
        self.company = try container.decodeIfPresent(String.self, forKey: .company)
        self.postalCode = try container.decodeIfPresent(String.self, forKey: .postalCode)
        self.stateProvince = try container.decodeIfPresent(String.self, forKey: .stateProvince)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.addressLine1, forKey: .addressLine1)
        try container.encodeIfPresent(self.addressLine2, forKey: .addressLine2)
        try container.encodeIfPresent(self.city, forKey: .city)
        try container.encodeIfPresent(self.company, forKey: .company)
        try container.encodeIfPresent(self.postalCode, forKey: .postalCode)
        try container.encodeIfPresent(self.stateProvince, forKey: .stateProvince)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case addressLine1
        case addressLine2
        case city
        case company
        case postalCode
        case stateProvince
    }
}