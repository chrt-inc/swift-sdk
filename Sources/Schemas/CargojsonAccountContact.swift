import Foundation

/// [CUSTOMER] Shipper or consignee with address and optional contact info.
/// account_number is the IATA participant code (optional).
public struct CargojsonAccountContact: Codable, Hashable, Sendable {
    public let accountNumber: String?
    public let address: CargojsonAddress
    public let contactDetails: [CargojsonContactDetail]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountNumber: String? = nil,
        address: CargojsonAddress,
        contactDetails: [CargojsonContactDetail]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountNumber = accountNumber
        self.address = address
        self.contactDetails = contactDetails
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountNumber = try container.decodeIfPresent(String.self, forKey: .accountNumber)
        self.address = try container.decode(CargojsonAddress.self, forKey: .address)
        self.contactDetails = try container.decodeIfPresent([CargojsonContactDetail].self, forKey: .contactDetails)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.accountNumber, forKey: .accountNumber)
        try container.encode(self.address, forKey: .address)
        try container.encodeIfPresent(self.contactDetails, forKey: .contactDetails)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountNumber
        case address
        case contactDetails
    }
}