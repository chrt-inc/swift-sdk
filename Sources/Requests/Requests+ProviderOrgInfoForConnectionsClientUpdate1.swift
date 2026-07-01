import Foundation

extension Requests {
    public struct ProviderOrgInfoForConnectionsClientUpdate1: Codable, Hashable, Sendable {
        public let contactFirstName: String?
        public let contactFirstNameSetToNone: Bool?
        public let contactLastName: String?
        public let contactLastNameSetToNone: Bool?
        public let emailAddressPrimary: String?
        public let emailAddressSecondary: String?
        public let emailAddressSecondarySetToNone: Bool?
        public let industry: String?
        public let industrySetToNone: Bool?
        public let jobTitle: String?
        public let jobTitleSetToNone: Bool?
        public let notes: String?
        public let notesSetToNone: Bool?
        public let phoneNumberPrimary: String?
        public let phoneNumberPrimarySetToNone: Bool?
        public let phoneNumberSecondary: String?
        public let phoneNumberSecondarySetToNone: Bool?
        public let streetAddress: LocationFeature?
        public let streetAddressSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            contactFirstName: String? = nil,
            contactFirstNameSetToNone: Bool? = nil,
            contactLastName: String? = nil,
            contactLastNameSetToNone: Bool? = nil,
            emailAddressPrimary: String? = nil,
            emailAddressSecondary: String? = nil,
            emailAddressSecondarySetToNone: Bool? = nil,
            industry: String? = nil,
            industrySetToNone: Bool? = nil,
            jobTitle: String? = nil,
            jobTitleSetToNone: Bool? = nil,
            notes: String? = nil,
            notesSetToNone: Bool? = nil,
            phoneNumberPrimary: String? = nil,
            phoneNumberPrimarySetToNone: Bool? = nil,
            phoneNumberSecondary: String? = nil,
            phoneNumberSecondarySetToNone: Bool? = nil,
            streetAddress: LocationFeature? = nil,
            streetAddressSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.contactFirstName = contactFirstName
            self.contactFirstNameSetToNone = contactFirstNameSetToNone
            self.contactLastName = contactLastName
            self.contactLastNameSetToNone = contactLastNameSetToNone
            self.emailAddressPrimary = emailAddressPrimary
            self.emailAddressSecondary = emailAddressSecondary
            self.emailAddressSecondarySetToNone = emailAddressSecondarySetToNone
            self.industry = industry
            self.industrySetToNone = industrySetToNone
            self.jobTitle = jobTitle
            self.jobTitleSetToNone = jobTitleSetToNone
            self.notes = notes
            self.notesSetToNone = notesSetToNone
            self.phoneNumberPrimary = phoneNumberPrimary
            self.phoneNumberPrimarySetToNone = phoneNumberPrimarySetToNone
            self.phoneNumberSecondary = phoneNumberSecondary
            self.phoneNumberSecondarySetToNone = phoneNumberSecondarySetToNone
            self.streetAddress = streetAddress
            self.streetAddressSetToNone = streetAddressSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.contactFirstName = try container.decodeIfPresent(String.self, forKey: .contactFirstName)
            self.contactFirstNameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .contactFirstNameSetToNone)
            self.contactLastName = try container.decodeIfPresent(String.self, forKey: .contactLastName)
            self.contactLastNameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .contactLastNameSetToNone)
            self.emailAddressPrimary = try container.decodeIfPresent(String.self, forKey: .emailAddressPrimary)
            self.emailAddressSecondary = try container.decodeIfPresent(String.self, forKey: .emailAddressSecondary)
            self.emailAddressSecondarySetToNone = try container.decodeIfPresent(Bool.self, forKey: .emailAddressSecondarySetToNone)
            self.industry = try container.decodeIfPresent(String.self, forKey: .industry)
            self.industrySetToNone = try container.decodeIfPresent(Bool.self, forKey: .industrySetToNone)
            self.jobTitle = try container.decodeIfPresent(String.self, forKey: .jobTitle)
            self.jobTitleSetToNone = try container.decodeIfPresent(Bool.self, forKey: .jobTitleSetToNone)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.notesSetToNone = try container.decodeIfPresent(Bool.self, forKey: .notesSetToNone)
            self.phoneNumberPrimary = try container.decodeIfPresent(String.self, forKey: .phoneNumberPrimary)
            self.phoneNumberPrimarySetToNone = try container.decodeIfPresent(Bool.self, forKey: .phoneNumberPrimarySetToNone)
            self.phoneNumberSecondary = try container.decodeIfPresent(String.self, forKey: .phoneNumberSecondary)
            self.phoneNumberSecondarySetToNone = try container.decodeIfPresent(Bool.self, forKey: .phoneNumberSecondarySetToNone)
            self.streetAddress = try container.decodeIfPresent(LocationFeature.self, forKey: .streetAddress)
            self.streetAddressSetToNone = try container.decodeIfPresent(Bool.self, forKey: .streetAddressSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.contactFirstName, forKey: .contactFirstName)
            try container.encodeIfPresent(self.contactFirstNameSetToNone, forKey: .contactFirstNameSetToNone)
            try container.encodeIfPresent(self.contactLastName, forKey: .contactLastName)
            try container.encodeIfPresent(self.contactLastNameSetToNone, forKey: .contactLastNameSetToNone)
            try container.encodeIfPresent(self.emailAddressPrimary, forKey: .emailAddressPrimary)
            try container.encodeIfPresent(self.emailAddressSecondary, forKey: .emailAddressSecondary)
            try container.encodeIfPresent(self.emailAddressSecondarySetToNone, forKey: .emailAddressSecondarySetToNone)
            try container.encodeIfPresent(self.industry, forKey: .industry)
            try container.encodeIfPresent(self.industrySetToNone, forKey: .industrySetToNone)
            try container.encodeIfPresent(self.jobTitle, forKey: .jobTitle)
            try container.encodeIfPresent(self.jobTitleSetToNone, forKey: .jobTitleSetToNone)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.notesSetToNone, forKey: .notesSetToNone)
            try container.encodeIfPresent(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
            try container.encodeIfPresent(self.phoneNumberPrimarySetToNone, forKey: .phoneNumberPrimarySetToNone)
            try container.encodeIfPresent(self.phoneNumberSecondary, forKey: .phoneNumberSecondary)
            try container.encodeIfPresent(self.phoneNumberSecondarySetToNone, forKey: .phoneNumberSecondarySetToNone)
            try container.encodeIfPresent(self.streetAddress, forKey: .streetAddress)
            try container.encodeIfPresent(self.streetAddressSetToNone, forKey: .streetAddressSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case contactFirstName = "contact_first_name"
            case contactFirstNameSetToNone = "contact_first_name__set_to_None"
            case contactLastName = "contact_last_name"
            case contactLastNameSetToNone = "contact_last_name__set_to_None"
            case emailAddressPrimary = "email_address_primary"
            case emailAddressSecondary = "email_address_secondary"
            case emailAddressSecondarySetToNone = "email_address_secondary__set_to_None"
            case industry
            case industrySetToNone = "industry__set_to_None"
            case jobTitle = "job_title"
            case jobTitleSetToNone = "job_title__set_to_None"
            case notes
            case notesSetToNone = "notes__set_to_None"
            case phoneNumberPrimary = "phone_number_primary"
            case phoneNumberPrimarySetToNone = "phone_number_primary__set_to_None"
            case phoneNumberSecondary = "phone_number_secondary"
            case phoneNumberSecondarySetToNone = "phone_number_secondary__set_to_None"
            case streetAddress = "street_address"
            case streetAddressSetToNone = "street_address__set_to_None"
        }
    }
}