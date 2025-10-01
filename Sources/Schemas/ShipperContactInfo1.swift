import Foundation

public struct ShipperContactInfo1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let companyName: Nullable<String>
    public let industry: Nullable<String>
    public let streetAddress: Nullable<LocationFeature>
    public let contactFirstName: Nullable<String>
    public let contactLastName: Nullable<String>
    public let phoneNumberPrimary: Nullable<String>
    public let phoneNumberSecondary: Nullable<String>
    public let emailAddressPrimary: Nullable<String>
    public let emailAddressSecondary: Nullable<String>
    public let jobTitle: Nullable<String>
    public let notes: Nullable<String>
    /// Must be a string starting with `org_`
    public let shipperOrgId: Nullable<String>
    /// Must be a string starting with `user_`
    public let shipperUserId: Nullable<String>
    public let offChrtShipperOrgInfoId: Nullable<String>
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        companyName: Nullable<String>,
        industry: Nullable<String>,
        streetAddress: Nullable<LocationFeature>,
        contactFirstName: Nullable<String>,
        contactLastName: Nullable<String>,
        phoneNumberPrimary: Nullable<String>,
        phoneNumberSecondary: Nullable<String>,
        emailAddressPrimary: Nullable<String>,
        emailAddressSecondary: Nullable<String>,
        jobTitle: Nullable<String>,
        notes: Nullable<String>,
        shipperOrgId: Nullable<String>,
        shipperUserId: Nullable<String>,
        offChrtShipperOrgInfoId: Nullable<String>,
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
        self.companyName = try container.decode(Nullable<String>.self, forKey: .companyName)
        self.industry = try container.decode(Nullable<String>.self, forKey: .industry)
        self.streetAddress = try container.decode(Nullable<LocationFeature>.self, forKey: .streetAddress)
        self.contactFirstName = try container.decode(Nullable<String>.self, forKey: .contactFirstName)
        self.contactLastName = try container.decode(Nullable<String>.self, forKey: .contactLastName)
        self.phoneNumberPrimary = try container.decode(Nullable<String>.self, forKey: .phoneNumberPrimary)
        self.phoneNumberSecondary = try container.decode(Nullable<String>.self, forKey: .phoneNumberSecondary)
        self.emailAddressPrimary = try container.decode(Nullable<String>.self, forKey: .emailAddressPrimary)
        self.emailAddressSecondary = try container.decode(Nullable<String>.self, forKey: .emailAddressSecondary)
        self.jobTitle = try container.decode(Nullable<String>.self, forKey: .jobTitle)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.shipperOrgId = try container.decode(Nullable<String>.self, forKey: .shipperOrgId)
        self.shipperUserId = try container.decode(Nullable<String>.self, forKey: .shipperUserId)
        self.offChrtShipperOrgInfoId = try container.decode(Nullable<String>.self, forKey: .offChrtShipperOrgInfoId)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.companyName, forKey: .companyName)
        try container.encode(self.industry, forKey: .industry)
        try container.encode(self.streetAddress, forKey: .streetAddress)
        try container.encode(self.contactFirstName, forKey: .contactFirstName)
        try container.encode(self.contactLastName, forKey: .contactLastName)
        try container.encode(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
        try container.encode(self.phoneNumberSecondary, forKey: .phoneNumberSecondary)
        try container.encode(self.emailAddressPrimary, forKey: .emailAddressPrimary)
        try container.encode(self.emailAddressSecondary, forKey: .emailAddressSecondary)
        try container.encode(self.jobTitle, forKey: .jobTitle)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encode(self.shipperUserId, forKey: .shipperUserId)
        try container.encode(self.offChrtShipperOrgInfoId, forKey: .offChrtShipperOrgInfoId)
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