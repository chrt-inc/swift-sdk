import Foundation

public struct DirectoryEntry1: Codable, Hashable, Sendable {
    public let id: String
    public let companyName: String?
    public let contactFirstName: String?
    public let contactLastName: String?
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let emailAddressPrimary: String?
    public let emailAddressSecondary: String?
    public let entryOffChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let entryOrgId: String?
    public let industry: String?
    public let jobTitle: String?
    public let location: LocationFeature?
    public let notes: String?
    public let phoneNumberPrimary: String?
    public let phoneNumberSecondary: String?
    public let schemaVersion: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        companyName: String? = nil,
        contactFirstName: String? = nil,
        contactLastName: String? = nil,
        createdByOrgId: String,
        createdByUserId: String,
        emailAddressPrimary: String? = nil,
        emailAddressSecondary: String? = nil,
        entryOffChrtShipperOrgId: String? = nil,
        entryOrgId: String? = nil,
        industry: String? = nil,
        jobTitle: String? = nil,
        location: LocationFeature? = nil,
        notes: String? = nil,
        phoneNumberPrimary: String? = nil,
        phoneNumberSecondary: String? = nil,
        schemaVersion: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.companyName = companyName
        self.contactFirstName = contactFirstName
        self.contactLastName = contactLastName
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.emailAddressPrimary = emailAddressPrimary
        self.emailAddressSecondary = emailAddressSecondary
        self.entryOffChrtShipperOrgId = entryOffChrtShipperOrgId
        self.entryOrgId = entryOrgId
        self.industry = industry
        self.jobTitle = jobTitle
        self.location = location
        self.notes = notes
        self.phoneNumberPrimary = phoneNumberPrimary
        self.phoneNumberSecondary = phoneNumberSecondary
        self.schemaVersion = schemaVersion
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.companyName = try container.decodeIfPresent(String.self, forKey: .companyName)
        self.contactFirstName = try container.decodeIfPresent(String.self, forKey: .contactFirstName)
        self.contactLastName = try container.decodeIfPresent(String.self, forKey: .contactLastName)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.emailAddressPrimary = try container.decodeIfPresent(String.self, forKey: .emailAddressPrimary)
        self.emailAddressSecondary = try container.decodeIfPresent(String.self, forKey: .emailAddressSecondary)
        self.entryOffChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .entryOffChrtShipperOrgId)
        self.entryOrgId = try container.decodeIfPresent(String.self, forKey: .entryOrgId)
        self.industry = try container.decodeIfPresent(String.self, forKey: .industry)
        self.jobTitle = try container.decodeIfPresent(String.self, forKey: .jobTitle)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
        self.phoneNumberPrimary = try container.decodeIfPresent(String.self, forKey: .phoneNumberPrimary)
        self.phoneNumberSecondary = try container.decodeIfPresent(String.self, forKey: .phoneNumberSecondary)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.companyName, forKey: .companyName)
        try container.encodeIfPresent(self.contactFirstName, forKey: .contactFirstName)
        try container.encodeIfPresent(self.contactLastName, forKey: .contactLastName)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.emailAddressPrimary, forKey: .emailAddressPrimary)
        try container.encodeIfPresent(self.emailAddressSecondary, forKey: .emailAddressSecondary)
        try container.encodeIfPresent(self.entryOffChrtShipperOrgId, forKey: .entryOffChrtShipperOrgId)
        try container.encodeIfPresent(self.entryOrgId, forKey: .entryOrgId)
        try container.encodeIfPresent(self.industry, forKey: .industry)
        try container.encodeIfPresent(self.jobTitle, forKey: .jobTitle)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.notes, forKey: .notes)
        try container.encodeIfPresent(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
        try container.encodeIfPresent(self.phoneNumberSecondary, forKey: .phoneNumberSecondary)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case companyName = "company_name"
        case contactFirstName = "contact_first_name"
        case contactLastName = "contact_last_name"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case emailAddressPrimary = "email_address_primary"
        case emailAddressSecondary = "email_address_secondary"
        case entryOffChrtShipperOrgId = "entry_off_chrt_shipper_org_id"
        case entryOrgId = "entry_org_id"
        case industry
        case jobTitle = "job_title"
        case location
        case notes
        case phoneNumberPrimary = "phone_number_primary"
        case phoneNumberSecondary = "phone_number_secondary"
        case schemaVersion = "schema_version"
    }
}