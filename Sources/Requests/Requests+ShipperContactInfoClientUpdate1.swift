import Foundation

extension Requests {
    public struct ShipperContactInfoClientUpdate1: Codable, Hashable, Sendable {
        public let companyName: Nullable<String>?
        public let industry: Nullable<String>?
        public let streetAddress: Nullable<LocationFeature>?
        public let contactFirstName: Nullable<String>?
        public let contactLastName: Nullable<String>?
        public let phoneNumberPrimary: Nullable<String>?
        public let phoneNumberSecondary: Nullable<String>?
        public let emailAddressPrimary: Nullable<String>?
        public let emailAddressSecondary: Nullable<String>?
        public let jobTitle: Nullable<String>?
        public let notes: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            companyName: Nullable<String>? = nil,
            industry: Nullable<String>? = nil,
            streetAddress: Nullable<LocationFeature>? = nil,
            contactFirstName: Nullable<String>? = nil,
            contactLastName: Nullable<String>? = nil,
            phoneNumberPrimary: Nullable<String>? = nil,
            phoneNumberSecondary: Nullable<String>? = nil,
            emailAddressPrimary: Nullable<String>? = nil,
            emailAddressSecondary: Nullable<String>? = nil,
            jobTitle: Nullable<String>? = nil,
            notes: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
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
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.companyName = try container.decodeNullableIfPresent(String.self, forKey: .companyName)
            self.industry = try container.decodeNullableIfPresent(String.self, forKey: .industry)
            self.streetAddress = try container.decodeNullableIfPresent(LocationFeature.self, forKey: .streetAddress)
            self.contactFirstName = try container.decodeNullableIfPresent(String.self, forKey: .contactFirstName)
            self.contactLastName = try container.decodeNullableIfPresent(String.self, forKey: .contactLastName)
            self.phoneNumberPrimary = try container.decodeNullableIfPresent(String.self, forKey: .phoneNumberPrimary)
            self.phoneNumberSecondary = try container.decodeNullableIfPresent(String.self, forKey: .phoneNumberSecondary)
            self.emailAddressPrimary = try container.decodeNullableIfPresent(String.self, forKey: .emailAddressPrimary)
            self.emailAddressSecondary = try container.decodeNullableIfPresent(String.self, forKey: .emailAddressSecondary)
            self.jobTitle = try container.decodeNullableIfPresent(String.self, forKey: .jobTitle)
            self.notes = try container.decodeNullableIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeNullableIfPresent(self.companyName, forKey: .companyName)
            try container.encodeNullableIfPresent(self.industry, forKey: .industry)
            try container.encodeNullableIfPresent(self.streetAddress, forKey: .streetAddress)
            try container.encodeNullableIfPresent(self.contactFirstName, forKey: .contactFirstName)
            try container.encodeNullableIfPresent(self.contactLastName, forKey: .contactLastName)
            try container.encodeNullableIfPresent(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
            try container.encodeNullableIfPresent(self.phoneNumberSecondary, forKey: .phoneNumberSecondary)
            try container.encodeNullableIfPresent(self.emailAddressPrimary, forKey: .emailAddressPrimary)
            try container.encodeNullableIfPresent(self.emailAddressSecondary, forKey: .emailAddressSecondary)
            try container.encodeNullableIfPresent(self.jobTitle, forKey: .jobTitle)
            try container.encodeNullableIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
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
        }
    }
}