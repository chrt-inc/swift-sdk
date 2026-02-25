import Foundation

extension Requests {
    public struct OffChrtShipperOrgClientUpdate1: Codable, Hashable, Sendable {
        public let contactFirstName: String?
        public let contactLastName: String?
        public let emailAddressPrimary: String?
        public let emailAddressSecondary: String?
        public let industry: String?
        public let jobTitle: String?
        public let notes: String?
        public let phoneNumberPrimary: String?
        public let phoneNumberSecondary: String?
        public let streetAddress: LocationFeature?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            contactFirstName: String? = nil,
            contactLastName: String? = nil,
            emailAddressPrimary: String? = nil,
            emailAddressSecondary: String? = nil,
            industry: String? = nil,
            jobTitle: String? = nil,
            notes: String? = nil,
            phoneNumberPrimary: String? = nil,
            phoneNumberSecondary: String? = nil,
            streetAddress: LocationFeature? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.contactFirstName = contactFirstName
            self.contactLastName = contactLastName
            self.emailAddressPrimary = emailAddressPrimary
            self.emailAddressSecondary = emailAddressSecondary
            self.industry = industry
            self.jobTitle = jobTitle
            self.notes = notes
            self.phoneNumberPrimary = phoneNumberPrimary
            self.phoneNumberSecondary = phoneNumberSecondary
            self.streetAddress = streetAddress
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.contactFirstName = try container.decodeIfPresent(String.self, forKey: .contactFirstName)
            self.contactLastName = try container.decodeIfPresent(String.self, forKey: .contactLastName)
            self.emailAddressPrimary = try container.decodeIfPresent(String.self, forKey: .emailAddressPrimary)
            self.emailAddressSecondary = try container.decodeIfPresent(String.self, forKey: .emailAddressSecondary)
            self.industry = try container.decodeIfPresent(String.self, forKey: .industry)
            self.jobTitle = try container.decodeIfPresent(String.self, forKey: .jobTitle)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.phoneNumberPrimary = try container.decodeIfPresent(String.self, forKey: .phoneNumberPrimary)
            self.phoneNumberSecondary = try container.decodeIfPresent(String.self, forKey: .phoneNumberSecondary)
            self.streetAddress = try container.decodeIfPresent(LocationFeature.self, forKey: .streetAddress)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.contactFirstName, forKey: .contactFirstName)
            try container.encodeIfPresent(self.contactLastName, forKey: .contactLastName)
            try container.encodeIfPresent(self.emailAddressPrimary, forKey: .emailAddressPrimary)
            try container.encodeIfPresent(self.emailAddressSecondary, forKey: .emailAddressSecondary)
            try container.encodeIfPresent(self.industry, forKey: .industry)
            try container.encodeIfPresent(self.jobTitle, forKey: .jobTitle)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
            try container.encodeIfPresent(self.phoneNumberSecondary, forKey: .phoneNumberSecondary)
            try container.encodeIfPresent(self.streetAddress, forKey: .streetAddress)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case contactFirstName = "contact_first_name"
            case contactLastName = "contact_last_name"
            case emailAddressPrimary = "email_address_primary"
            case emailAddressSecondary = "email_address_secondary"
            case industry
            case jobTitle = "job_title"
            case notes
            case phoneNumberPrimary = "phone_number_primary"
            case phoneNumberSecondary = "phone_number_secondary"
            case streetAddress = "street_address"
        }
    }
}