import Foundation

public struct OffChrtShipperOrgInfo1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let industry: String?
    public let streetAddress: LocationFeature?
    public let contactFirstName: String?
    public let contactLastName: String?
    public let phoneNumberPrimary: String?
    public let phoneNumberSecondary: String?
    public let emailAddressPrimary: String
    public let emailAddressSecondary: String?
    public let jobTitle: String?
    public let notes: String?
    public let companyName: String?
    public let stripeConnectShipperPayCourierCustomerId: String?
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        industry: String? = nil,
        streetAddress: LocationFeature? = nil,
        contactFirstName: String? = nil,
        contactLastName: String? = nil,
        phoneNumberPrimary: String? = nil,
        phoneNumberSecondary: String? = nil,
        emailAddressPrimary: String,
        emailAddressSecondary: String? = nil,
        jobTitle: String? = nil,
        notes: String? = nil,
        companyName: String? = nil,
        stripeConnectShipperPayCourierCustomerId: String? = nil,
        createdByOrgId: String,
        createdByUserId: String,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
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
        self.companyName = companyName
        self.stripeConnectShipperPayCourierCustomerId = stripeConnectShipperPayCourierCustomerId
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.industry = try container.decodeIfPresent(String.self, forKey: .industry)
        self.streetAddress = try container.decodeIfPresent(LocationFeature.self, forKey: .streetAddress)
        self.contactFirstName = try container.decodeIfPresent(String.self, forKey: .contactFirstName)
        self.contactLastName = try container.decodeIfPresent(String.self, forKey: .contactLastName)
        self.phoneNumberPrimary = try container.decodeIfPresent(String.self, forKey: .phoneNumberPrimary)
        self.phoneNumberSecondary = try container.decodeIfPresent(String.self, forKey: .phoneNumberSecondary)
        self.emailAddressPrimary = try container.decode(String.self, forKey: .emailAddressPrimary)
        self.emailAddressSecondary = try container.decodeIfPresent(String.self, forKey: .emailAddressSecondary)
        self.jobTitle = try container.decodeIfPresent(String.self, forKey: .jobTitle)
        self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
        self.companyName = try container.decodeIfPresent(String.self, forKey: .companyName)
        self.stripeConnectShipperPayCourierCustomerId = try container.decodeIfPresent(String.self, forKey: .stripeConnectShipperPayCourierCustomerId)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.industry, forKey: .industry)
        try container.encodeIfPresent(self.streetAddress, forKey: .streetAddress)
        try container.encodeIfPresent(self.contactFirstName, forKey: .contactFirstName)
        try container.encodeIfPresent(self.contactLastName, forKey: .contactLastName)
        try container.encodeIfPresent(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
        try container.encodeIfPresent(self.phoneNumberSecondary, forKey: .phoneNumberSecondary)
        try container.encode(self.emailAddressPrimary, forKey: .emailAddressPrimary)
        try container.encodeIfPresent(self.emailAddressSecondary, forKey: .emailAddressSecondary)
        try container.encodeIfPresent(self.jobTitle, forKey: .jobTitle)
        try container.encodeIfPresent(self.notes, forKey: .notes)
        try container.encodeIfPresent(self.companyName, forKey: .companyName)
        try container.encodeIfPresent(self.stripeConnectShipperPayCourierCustomerId, forKey: .stripeConnectShipperPayCourierCustomerId)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
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
        case companyName = "company_name"
        case stripeConnectShipperPayCourierCustomerId = "stripe_connect_shipper_pay_courier_customer_id"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case id = "_id"
    }
}