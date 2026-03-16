import Foundation

public struct WebcargoParty: Codable, Hashable, Sendable {
    public let partyTypeCode: String?
    public let id: String?
    public let name: String?
    public let accountIdList: [WebcargoAccountId]?
    public let postalAddress: WebcargoPostalAddress?
    public let contact: WebcargoContact?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        partyTypeCode: String? = nil,
        id: String? = nil,
        name: String? = nil,
        accountIdList: [WebcargoAccountId]? = nil,
        postalAddress: WebcargoPostalAddress? = nil,
        contact: WebcargoContact? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.partyTypeCode = partyTypeCode
        self.id = id
        self.name = name
        self.accountIdList = accountIdList
        self.postalAddress = postalAddress
        self.contact = contact
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.partyTypeCode = try container.decodeIfPresent(String.self, forKey: .partyTypeCode)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.accountIdList = try container.decodeIfPresent([WebcargoAccountId].self, forKey: .accountIdList)
        self.postalAddress = try container.decodeIfPresent(WebcargoPostalAddress.self, forKey: .postalAddress)
        self.contact = try container.decodeIfPresent(WebcargoContact.self, forKey: .contact)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.partyTypeCode, forKey: .partyTypeCode)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.accountIdList, forKey: .accountIdList)
        try container.encodeIfPresent(self.postalAddress, forKey: .postalAddress)
        try container.encodeIfPresent(self.contact, forKey: .contact)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case partyTypeCode = "party_type_code"
        case id
        case name
        case accountIdList = "account_id_list"
        case postalAddress = "postal_address"
        case contact
    }
}