import Foundation

public struct CargoAiFwbAndFhlParty1: Codable, Hashable, Sendable {
    public let accountNumber: String?
    public let address: CargoAiFwbAndFhlAddress1
    public let email: String?
    public let fax: String?
    public let name: String
    public let phone: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountNumber: String? = nil,
        address: CargoAiFwbAndFhlAddress1,
        email: String? = nil,
        fax: String? = nil,
        name: String,
        phone: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountNumber = accountNumber
        self.address = address
        self.email = email
        self.fax = fax
        self.name = name
        self.phone = phone
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountNumber = try container.decodeIfPresent(String.self, forKey: .accountNumber)
        self.address = try container.decode(CargoAiFwbAndFhlAddress1.self, forKey: .address)
        self.email = try container.decodeIfPresent(String.self, forKey: .email)
        self.fax = try container.decodeIfPresent(String.self, forKey: .fax)
        self.name = try container.decode(String.self, forKey: .name)
        self.phone = try container.decodeIfPresent(String.self, forKey: .phone)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.accountNumber, forKey: .accountNumber)
        try container.encode(self.address, forKey: .address)
        try container.encodeIfPresent(self.email, forKey: .email)
        try container.encodeIfPresent(self.fax, forKey: .fax)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.phone, forKey: .phone)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountNumber = "account_number"
        case address
        case email
        case fax
        case name
        case phone
    }
}