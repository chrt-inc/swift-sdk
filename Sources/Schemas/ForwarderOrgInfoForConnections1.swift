import Foundation

public struct ForwarderOrgInfoForConnections1: Codable, Hashable, Sendable {
    public let id: String
    public let contactFirstName: String?
    public let contactLastName: String?
    public let emailAddressPrimary: String
    public let emailAddressSecondary: String?
    /// Must be a string starting with `org_`
    public let forwarderOrgId: String
    /// Must be a string starting with `user_`
    public let forwarderUserId: String?
    public let industry: String?
    public let jobTitle: String?
    public let notes: String?
    public let phoneNumberPrimary: String?
    public let phoneNumberSecondary: String?
    public let schemaVersion: Int
    public let streetAddress: LocationFeature?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        contactFirstName: String? = nil,
        contactLastName: String? = nil,
        emailAddressPrimary: String,
        emailAddressSecondary: String? = nil,
        forwarderOrgId: String,
        forwarderUserId: String? = nil,
        industry: String? = nil,
        jobTitle: String? = nil,
        notes: String? = nil,
        phoneNumberPrimary: String? = nil,
        phoneNumberSecondary: String? = nil,
        schemaVersion: Int,
        streetAddress: LocationFeature? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.contactFirstName = contactFirstName
        self.contactLastName = contactLastName
        self.emailAddressPrimary = emailAddressPrimary
        self.emailAddressSecondary = emailAddressSecondary
        self.forwarderOrgId = forwarderOrgId
        self.forwarderUserId = forwarderUserId
        self.industry = industry
        self.jobTitle = jobTitle
        self.notes = notes
        self.phoneNumberPrimary = phoneNumberPrimary
        self.phoneNumberSecondary = phoneNumberSecondary
        self.schemaVersion = schemaVersion
        self.streetAddress = streetAddress
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.contactFirstName = try container.decodeIfPresent(String.self, forKey: .contactFirstName)
        self.contactLastName = try container.decodeIfPresent(String.self, forKey: .contactLastName)
        self.emailAddressPrimary = try container.decode(String.self, forKey: .emailAddressPrimary)
        self.emailAddressSecondary = try container.decodeIfPresent(String.self, forKey: .emailAddressSecondary)
        self.forwarderOrgId = try container.decode(String.self, forKey: .forwarderOrgId)
        self.forwarderUserId = try container.decodeIfPresent(String.self, forKey: .forwarderUserId)
        self.industry = try container.decodeIfPresent(String.self, forKey: .industry)
        self.jobTitle = try container.decodeIfPresent(String.self, forKey: .jobTitle)
        self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
        self.phoneNumberPrimary = try container.decodeIfPresent(String.self, forKey: .phoneNumberPrimary)
        self.phoneNumberSecondary = try container.decodeIfPresent(String.self, forKey: .phoneNumberSecondary)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.streetAddress = try container.decodeIfPresent(LocationFeature.self, forKey: .streetAddress)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.contactFirstName, forKey: .contactFirstName)
        try container.encodeIfPresent(self.contactLastName, forKey: .contactLastName)
        try container.encode(self.emailAddressPrimary, forKey: .emailAddressPrimary)
        try container.encodeIfPresent(self.emailAddressSecondary, forKey: .emailAddressSecondary)
        try container.encode(self.forwarderOrgId, forKey: .forwarderOrgId)
        try container.encodeIfPresent(self.forwarderUserId, forKey: .forwarderUserId)
        try container.encodeIfPresent(self.industry, forKey: .industry)
        try container.encodeIfPresent(self.jobTitle, forKey: .jobTitle)
        try container.encodeIfPresent(self.notes, forKey: .notes)
        try container.encodeIfPresent(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
        try container.encodeIfPresent(self.phoneNumberSecondary, forKey: .phoneNumberSecondary)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.streetAddress, forKey: .streetAddress)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case contactFirstName = "contact_first_name"
        case contactLastName = "contact_last_name"
        case emailAddressPrimary = "email_address_primary"
        case emailAddressSecondary = "email_address_secondary"
        case forwarderOrgId = "forwarder_org_id"
        case forwarderUserId = "forwarder_user_id"
        case industry
        case jobTitle = "job_title"
        case notes
        case phoneNumberPrimary = "phone_number_primary"
        case phoneNumberSecondary = "phone_number_secondary"
        case schemaVersion = "schema_version"
        case streetAddress = "street_address"
    }
}