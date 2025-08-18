import Foundation

public struct ShipperContactInfo1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let companyName: JSONValue?
    public let industry: JSONValue?
    public let streetAddress: JSONValue?
    public let contactFirstName: JSONValue?
    public let contactLastName: JSONValue?
    public let phoneNumberPrimary: JSONValue?
    public let phoneNumberSecondary: JSONValue?
    public let emailAddressPrimary: JSONValue?
    public let emailAddressSecondary: JSONValue?
    public let jobTitle: JSONValue?
    public let notes: JSONValue?
    /// Must be a string starting with `org_`
    public let shipperOrgId: JSONValue?
    /// Must be a string starting with `user_`
    public let shipperUserId: JSONValue?
    public let offChrtShipperOrgInfoId: JSONValue?
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        companyName: JSONValue? = nil,
        industry: JSONValue? = nil,
        streetAddress: JSONValue? = nil,
        contactFirstName: JSONValue? = nil,
        contactLastName: JSONValue? = nil,
        phoneNumberPrimary: JSONValue? = nil,
        phoneNumberSecondary: JSONValue? = nil,
        emailAddressPrimary: JSONValue? = nil,
        emailAddressSecondary: JSONValue? = nil,
        jobTitle: JSONValue? = nil,
        notes: JSONValue? = nil,
        shipperOrgId: JSONValue? = nil,
        shipperUserId: JSONValue? = nil,
        offChrtShipperOrgInfoId: JSONValue? = nil,
        createdByOrgId: String,
        createdByUserId: String,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.companyName = companyName
        self.industry = industry
        self.streetAddress = streetAddress
        self.contactFirstName = contactFirstName
        self.contactLastName = contactLastName
        self.phoneNumberPrimary = phoneNumberPrimary
        self.phoneNumberSecondary = phoneNumberSecondary
        self.emailAddressPrimary = emailAddressPrimary
        self.emailAddressSecondary = emailAddressSecondary
        self.jobTitle = jobTitle
        self.notes = notes
        self.shipperOrgId = shipperOrgId
        self.shipperUserId = shipperUserId
        self.offChrtShipperOrgInfoId = offChrtShipperOrgInfoId
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.companyName = try container.decodeIfPresent(JSONValue.self, forKey: .companyName)
        self.industry = try container.decodeIfPresent(JSONValue.self, forKey: .industry)
        self.streetAddress = try container.decodeIfPresent(JSONValue.self, forKey: .streetAddress)
        self.contactFirstName = try container.decodeIfPresent(JSONValue.self, forKey: .contactFirstName)
        self.contactLastName = try container.decodeIfPresent(JSONValue.self, forKey: .contactLastName)
        self.phoneNumberPrimary = try container.decodeIfPresent(JSONValue.self, forKey: .phoneNumberPrimary)
        self.phoneNumberSecondary = try container.decodeIfPresent(JSONValue.self, forKey: .phoneNumberSecondary)
        self.emailAddressPrimary = try container.decodeIfPresent(JSONValue.self, forKey: .emailAddressPrimary)
        self.emailAddressSecondary = try container.decodeIfPresent(JSONValue.self, forKey: .emailAddressSecondary)
        self.jobTitle = try container.decodeIfPresent(JSONValue.self, forKey: .jobTitle)
        self.notes = try container.decodeIfPresent(JSONValue.self, forKey: .notes)
        self.shipperOrgId = try container.decodeIfPresent(JSONValue.self, forKey: .shipperOrgId)
        self.shipperUserId = try container.decodeIfPresent(JSONValue.self, forKey: .shipperUserId)
        self.offChrtShipperOrgInfoId = try container.decodeIfPresent(JSONValue.self, forKey: .offChrtShipperOrgInfoId)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.companyName, forKey: .companyName)
        try container.encodeIfPresent(self.industry, forKey: .industry)
        try container.encodeIfPresent(self.streetAddress, forKey: .streetAddress)
        try container.encodeIfPresent(self.contactFirstName, forKey: .contactFirstName)
        try container.encodeIfPresent(self.contactLastName, forKey: .contactLastName)
        try container.encodeIfPresent(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
        try container.encodeIfPresent(self.phoneNumberSecondary, forKey: .phoneNumberSecondary)
        try container.encodeIfPresent(self.emailAddressPrimary, forKey: .emailAddressPrimary)
        try container.encodeIfPresent(self.emailAddressSecondary, forKey: .emailAddressSecondary)
        try container.encodeIfPresent(self.jobTitle, forKey: .jobTitle)
        try container.encodeIfPresent(self.notes, forKey: .notes)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encodeIfPresent(self.shipperUserId, forKey: .shipperUserId)
        try container.encodeIfPresent(self.offChrtShipperOrgInfoId, forKey: .offChrtShipperOrgInfoId)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case companyName = "company_name"
        case industry
        case streetAddress = "street_address"
        case contactFirstName = "contact_first_name"
        case contactLastName = "contact_last_name"
        case phoneNumberPrimary = "phone_number_primary"
        case phoneNumberSecondary = "phone_number_secondary"
        case emailAddressPrimary = "email_address_primary"
        case emailAddressSecondary = "email_address_secondary"
        case jobTitle = "job_title"
        case notes
        case shipperOrgId = "shipper_org_id"
        case shipperUserId = "shipper_user_id"
        case offChrtShipperOrgInfoId = "off_chrt_shipper_org_info_id"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case id = "_id"
    }
}