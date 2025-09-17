import Foundation

public struct OffChrtShipperOrgInfo1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let industry: Nullable<String>?
    public let streetAddress: Nullable<LocationFeature>?
    public let contactFirstName: Nullable<String>?
    public let contactLastName: Nullable<String>?
    public let phoneNumberPrimary: Nullable<String>?
    public let phoneNumberSecondary: Nullable<String>?
    public let emailAddressPrimary: String
    public let emailAddressSecondary: Nullable<String>?
    public let jobTitle: Nullable<String>?
    public let notes: Nullable<String>?
    public let companyName: Nullable<String>?
    public let stripeConnectShipperPayCourierCustomerId: Nullable<String>?
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        industry: Nullable<String>? = nil,
        streetAddress: Nullable<LocationFeature>? = nil,
        contactFirstName: Nullable<String>? = nil,
        contactLastName: Nullable<String>? = nil,
        phoneNumberPrimary: Nullable<String>? = nil,
        phoneNumberSecondary: Nullable<String>? = nil,
        emailAddressPrimary: String,
        emailAddressSecondary: Nullable<String>? = nil,
        jobTitle: Nullable<String>? = nil,
        notes: Nullable<String>? = nil,
        companyName: Nullable<String>? = nil,
        stripeConnectShipperPayCourierCustomerId: Nullable<String>? = nil,
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
        self.industry = try container.decodeNullableIfPresent(String.self, forKey: .industry)
        self.streetAddress = try container.decodeNullableIfPresent(LocationFeature.self, forKey: .streetAddress)
        self.contactFirstName = try container.decodeNullableIfPresent(String.self, forKey: .contactFirstName)
        self.contactLastName = try container.decodeNullableIfPresent(String.self, forKey: .contactLastName)
        self.phoneNumberPrimary = try container.decodeNullableIfPresent(String.self, forKey: .phoneNumberPrimary)
        self.phoneNumberSecondary = try container.decodeNullableIfPresent(String.self, forKey: .phoneNumberSecondary)
        self.emailAddressPrimary = try container.decode(String.self, forKey: .emailAddressPrimary)
        self.emailAddressSecondary = try container.decodeNullableIfPresent(String.self, forKey: .emailAddressSecondary)
        self.jobTitle = try container.decodeNullableIfPresent(String.self, forKey: .jobTitle)
        self.notes = try container.decodeNullableIfPresent(String.self, forKey: .notes)
        self.companyName = try container.decodeNullableIfPresent(String.self, forKey: .companyName)
        self.stripeConnectShipperPayCourierCustomerId = try container.decodeNullableIfPresent(String.self, forKey: .stripeConnectShipperPayCourierCustomerId)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeNullableIfPresent(self.industry, forKey: .industry)
        try container.encodeNullableIfPresent(self.streetAddress, forKey: .streetAddress)
        try container.encodeNullableIfPresent(self.contactFirstName, forKey: .contactFirstName)
        try container.encodeNullableIfPresent(self.contactLastName, forKey: .contactLastName)
        try container.encodeNullableIfPresent(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
        try container.encodeNullableIfPresent(self.phoneNumberSecondary, forKey: .phoneNumberSecondary)
        try container.encode(self.emailAddressPrimary, forKey: .emailAddressPrimary)
        try container.encodeNullableIfPresent(self.emailAddressSecondary, forKey: .emailAddressSecondary)
        try container.encodeNullableIfPresent(self.jobTitle, forKey: .jobTitle)
        try container.encodeNullableIfPresent(self.notes, forKey: .notes)
        try container.encodeNullableIfPresent(self.companyName, forKey: .companyName)
        try container.encodeNullableIfPresent(self.stripeConnectShipperPayCourierCustomerId, forKey: .stripeConnectShipperPayCourierCustomerId)
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