import Foundation

public struct CourierOrgConnectionInfoClientCreate1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let industry: JSONValue?
    public let streetAddress: JSONValue?
    public let contactFirstName: JSONValue?
    public let contactLastName: JSONValue?
    public let phoneNumberPrimary: JSONValue?
    public let phoneNumberSecondary: JSONValue?
    public let emailAddressPrimary: String
    public let emailAddressSecondary: JSONValue?
    public let jobTitle: JSONValue?
    public let notes: JSONValue?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        industry: JSONValue? = nil,
        streetAddress: JSONValue? = nil,
        contactFirstName: JSONValue? = nil,
        contactLastName: JSONValue? = nil,
        phoneNumberPrimary: JSONValue? = nil,
        phoneNumberSecondary: JSONValue? = nil,
        emailAddressPrimary: String,
        emailAddressSecondary: JSONValue? = nil,
        jobTitle: JSONValue? = nil,
        notes: JSONValue? = nil,
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
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.industry = try container.decodeIfPresent(JSONValue.self, forKey: .industry)
        self.streetAddress = try container.decodeIfPresent(JSONValue.self, forKey: .streetAddress)
        self.contactFirstName = try container.decodeIfPresent(JSONValue.self, forKey: .contactFirstName)
        self.contactLastName = try container.decodeIfPresent(JSONValue.self, forKey: .contactLastName)
        self.phoneNumberPrimary = try container.decodeIfPresent(JSONValue.self, forKey: .phoneNumberPrimary)
        self.phoneNumberSecondary = try container.decodeIfPresent(JSONValue.self, forKey: .phoneNumberSecondary)
        self.emailAddressPrimary = try container.decode(String.self, forKey: .emailAddressPrimary)
        self.emailAddressSecondary = try container.decodeIfPresent(JSONValue.self, forKey: .emailAddressSecondary)
        self.jobTitle = try container.decodeIfPresent(JSONValue.self, forKey: .jobTitle)
        self.notes = try container.decodeIfPresent(JSONValue.self, forKey: .notes)
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
    }
}