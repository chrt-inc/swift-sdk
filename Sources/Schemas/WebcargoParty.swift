import Foundation

public struct WebcargoParty: Codable, Hashable, Sendable {
    public let accountIdList: [WebcargoAccountId]?
    public let contact: WebcargoContact?
    public let id: String?
    public let name: String?
    public let partyTypeCode: String?
    public let postalAddress: WebcargoPostalAddress?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountIdList: [WebcargoAccountId]? = nil,
        contact: WebcargoContact? = nil,
        id: String? = nil,
        name: String? = nil,
        partyTypeCode: String? = nil,
        postalAddress: WebcargoPostalAddress? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountIdList = accountIdList
        self.contact = contact
        self.id = id
        self.name = name
        self.partyTypeCode = partyTypeCode
        self.postalAddress = postalAddress
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountIdList = try container.decodeIfPresent([WebcargoAccountId].self, forKey: .accountIdList)
        self.contact = try container.decodeIfPresent(WebcargoContact.self, forKey: .contact)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.partyTypeCode = try container.decodeIfPresent(String.self, forKey: .partyTypeCode)
        self.postalAddress = try container.decodeIfPresent(WebcargoPostalAddress.self, forKey: .postalAddress)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.accountIdList, forKey: .accountIdList)
        try container.encodeIfPresent(self.contact, forKey: .contact)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.partyTypeCode, forKey: .partyTypeCode)
        try container.encodeIfPresent(self.postalAddress, forKey: .postalAddress)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountIdList = "account_id_list"
        case contact
        case id
        case name
        case partyTypeCode = "party_type_code"
        case postalAddress = "postal_address"
    }
}