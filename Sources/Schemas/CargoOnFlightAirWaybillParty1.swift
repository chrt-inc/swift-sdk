import Foundation

/// A shipper, consignee, or also-notify party.
public struct CargoOnFlightAirWaybillParty1: Codable, Hashable, Sendable {
    public let accountNumber: String?
    public let addressLine1: String
    public let addressLine2: String?
    public let cityIata: String?
    public let cityName: String
    public let countryCode: String
    public let emailAddress: String?
    public let faxNumber: String?
    public let name: String
    public let phoneNumber: String?
    public let postalCode: String?
    public let stateProvince: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountNumber: String? = nil,
        addressLine1: String,
        addressLine2: String? = nil,
        cityIata: String? = nil,
        cityName: String,
        countryCode: String,
        emailAddress: String? = nil,
        faxNumber: String? = nil,
        name: String,
        phoneNumber: String? = nil,
        postalCode: String? = nil,
        stateProvince: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountNumber = accountNumber
        self.addressLine1 = addressLine1
        self.addressLine2 = addressLine2
        self.cityIata = cityIata
        self.cityName = cityName
        self.countryCode = countryCode
        self.emailAddress = emailAddress
        self.faxNumber = faxNumber
        self.name = name
        self.phoneNumber = phoneNumber
        self.postalCode = postalCode
        self.stateProvince = stateProvince
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountNumber = try container.decodeIfPresent(String.self, forKey: .accountNumber)
        self.addressLine1 = try container.decode(String.self, forKey: .addressLine1)
        self.addressLine2 = try container.decodeIfPresent(String.self, forKey: .addressLine2)
        self.cityIata = try container.decodeIfPresent(String.self, forKey: .cityIata)
        self.cityName = try container.decode(String.self, forKey: .cityName)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
        self.faxNumber = try container.decodeIfPresent(String.self, forKey: .faxNumber)
        self.name = try container.decode(String.self, forKey: .name)
        self.phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber)
        self.postalCode = try container.decodeIfPresent(String.self, forKey: .postalCode)
        self.stateProvince = try container.decodeIfPresent(String.self, forKey: .stateProvince)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.accountNumber, forKey: .accountNumber)
        try container.encode(self.addressLine1, forKey: .addressLine1)
        try container.encodeIfPresent(self.addressLine2, forKey: .addressLine2)
        try container.encodeIfPresent(self.cityIata, forKey: .cityIata)
        try container.encode(self.cityName, forKey: .cityName)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(self.faxNumber, forKey: .faxNumber)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.phoneNumber, forKey: .phoneNumber)
        try container.encodeIfPresent(self.postalCode, forKey: .postalCode)
        try container.encodeIfPresent(self.stateProvince, forKey: .stateProvince)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountNumber = "account_number"
        case addressLine1 = "address_line_1"
        case addressLine2 = "address_line_2"
        case cityIata = "city_iata"
        case cityName = "city_name"
        case countryCode = "country_code"
        case emailAddress = "email_address"
        case faxNumber = "fax_number"
        case name
        case phoneNumber = "phone_number"
        case postalCode = "postal_code"
        case stateProvince = "state_province"
    }
}