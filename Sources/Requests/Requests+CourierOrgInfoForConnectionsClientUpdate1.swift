import Foundation

extension Requests {
    public struct CourierOrgInfoForConnectionsClientUpdate1: Codable, Hashable, Sendable {
        public let industry: String?
        public let streetAddress: LocationFeature?
        public let contactFirstName: String?
        public let contactLastName: String?
        public let phoneNumberPrimary: String?
        public let phoneNumberSecondary: String?
        public let emailAddressPrimary: String?
        public let emailAddressSecondary: String?
        public let jobTitle: String?
        public let notes: String?
        public let industrySetToNone: Bool?
        public let streetAddressSetToNone: Bool?
        public let contactFirstNameSetToNone: Bool?
        public let contactLastNameSetToNone: Bool?
        public let phoneNumberPrimarySetToNone: Bool?
        public let phoneNumberSecondarySetToNone: Bool?
        public let emailAddressSecondarySetToNone: Bool?
        public let jobTitleSetToNone: Bool?
        public let notesSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            industry: String? = nil,
            streetAddress: LocationFeature? = nil,
            contactFirstName: String? = nil,
            contactLastName: String? = nil,
            phoneNumberPrimary: String? = nil,
            phoneNumberSecondary: String? = nil,
            emailAddressPrimary: String? = nil,
            emailAddressSecondary: String? = nil,
            jobTitle: String? = nil,
            notes: String? = nil,
            industrySetToNone: Bool? = nil,
            streetAddressSetToNone: Bool? = nil,
            contactFirstNameSetToNone: Bool? = nil,
            contactLastNameSetToNone: Bool? = nil,
            phoneNumberPrimarySetToNone: Bool? = nil,
            phoneNumberSecondarySetToNone: Bool? = nil,
            emailAddressSecondarySetToNone: Bool? = nil,
            jobTitleSetToNone: Bool? = nil,
            notesSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
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
            self.industrySetToNone = industrySetToNone
            self.streetAddressSetToNone = streetAddressSetToNone
            self.contactFirstNameSetToNone = contactFirstNameSetToNone
            self.contactLastNameSetToNone = contactLastNameSetToNone
            self.phoneNumberPrimarySetToNone = phoneNumberPrimarySetToNone
            self.phoneNumberSecondarySetToNone = phoneNumberSecondarySetToNone
            self.emailAddressSecondarySetToNone = emailAddressSecondarySetToNone
            self.jobTitleSetToNone = jobTitleSetToNone
            self.notesSetToNone = notesSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.industry = try container.decodeIfPresent(String.self, forKey: .industry)
            self.streetAddress = try container.decodeIfPresent(LocationFeature.self, forKey: .streetAddress)
            self.contactFirstName = try container.decodeIfPresent(String.self, forKey: .contactFirstName)
            self.contactLastName = try container.decodeIfPresent(String.self, forKey: .contactLastName)
            self.phoneNumberPrimary = try container.decodeIfPresent(String.self, forKey: .phoneNumberPrimary)
            self.phoneNumberSecondary = try container.decodeIfPresent(String.self, forKey: .phoneNumberSecondary)
            self.emailAddressPrimary = try container.decodeIfPresent(String.self, forKey: .emailAddressPrimary)
            self.emailAddressSecondary = try container.decodeIfPresent(String.self, forKey: .emailAddressSecondary)
            self.jobTitle = try container.decodeIfPresent(String.self, forKey: .jobTitle)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.industrySetToNone = try container.decodeIfPresent(Bool.self, forKey: .industrySetToNone)
            self.streetAddressSetToNone = try container.decodeIfPresent(Bool.self, forKey: .streetAddressSetToNone)
            self.contactFirstNameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .contactFirstNameSetToNone)
            self.contactLastNameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .contactLastNameSetToNone)
            self.phoneNumberPrimarySetToNone = try container.decodeIfPresent(Bool.self, forKey: .phoneNumberPrimarySetToNone)
            self.phoneNumberSecondarySetToNone = try container.decodeIfPresent(Bool.self, forKey: .phoneNumberSecondarySetToNone)
            self.emailAddressSecondarySetToNone = try container.decodeIfPresent(Bool.self, forKey: .emailAddressSecondarySetToNone)
            self.jobTitleSetToNone = try container.decodeIfPresent(Bool.self, forKey: .jobTitleSetToNone)
            self.notesSetToNone = try container.decodeIfPresent(Bool.self, forKey: .notesSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
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
            try container.encodeIfPresent(self.industrySetToNone, forKey: .industrySetToNone)
            try container.encodeIfPresent(self.streetAddressSetToNone, forKey: .streetAddressSetToNone)
            try container.encodeIfPresent(self.contactFirstNameSetToNone, forKey: .contactFirstNameSetToNone)
            try container.encodeIfPresent(self.contactLastNameSetToNone, forKey: .contactLastNameSetToNone)
            try container.encodeIfPresent(self.phoneNumberPrimarySetToNone, forKey: .phoneNumberPrimarySetToNone)
            try container.encodeIfPresent(self.phoneNumberSecondarySetToNone, forKey: .phoneNumberSecondarySetToNone)
            try container.encodeIfPresent(self.emailAddressSecondarySetToNone, forKey: .emailAddressSecondarySetToNone)
            try container.encodeIfPresent(self.jobTitleSetToNone, forKey: .jobTitleSetToNone)
            try container.encodeIfPresent(self.notesSetToNone, forKey: .notesSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
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
            case industrySetToNone = "industry__set_to_None"
            case streetAddressSetToNone = "street_address__set_to_None"
            case contactFirstNameSetToNone = "contact_first_name__set_to_None"
            case contactLastNameSetToNone = "contact_last_name__set_to_None"
            case phoneNumberPrimarySetToNone = "phone_number_primary__set_to_None"
            case phoneNumberSecondarySetToNone = "phone_number_secondary__set_to_None"
            case emailAddressSecondarySetToNone = "email_address_secondary__set_to_None"
            case jobTitleSetToNone = "job_title__set_to_None"
            case notesSetToNone = "notes__set_to_None"
        }
    }
}