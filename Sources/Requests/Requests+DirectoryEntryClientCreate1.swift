import Foundation

extension Requests {
    public struct DirectoryEntryClientCreate1: Codable, Hashable, Sendable {
        public let schemaVersion: Int
        /// Must be a string starting with `org_`
        public let entryOrgId: String?
        public let entryOffChrtShipperOrgId: String?
        public let companyName: String?
        public let industry: String?
        public let location: LocationFeature?
        public let contactFirstName: String?
        public let contactLastName: String?
        public let phoneNumberPrimary: String?
        public let phoneNumberSecondary: String?
        public let emailAddressPrimary: String?
        public let emailAddressSecondary: String?
        public let jobTitle: String?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            schemaVersion: Int,
            entryOrgId: String? = nil,
            entryOffChrtShipperOrgId: String? = nil,
            companyName: String? = nil,
            industry: String? = nil,
            location: LocationFeature? = nil,
            contactFirstName: String? = nil,
            contactLastName: String? = nil,
            phoneNumberPrimary: String? = nil,
            phoneNumberSecondary: String? = nil,
            emailAddressPrimary: String? = nil,
            emailAddressSecondary: String? = nil,
            jobTitle: String? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.schemaVersion = schemaVersion
            self.entryOrgId = entryOrgId
            self.entryOffChrtShipperOrgId = entryOffChrtShipperOrgId
            self.companyName = companyName
            self.industry = industry
            self.location = location
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
            self.entryOrgId = try container.decodeIfPresent(String.self, forKey: .entryOrgId)
            self.entryOffChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .entryOffChrtShipperOrgId)
            self.companyName = try container.decodeIfPresent(String.self, forKey: .companyName)
            self.industry = try container.decodeIfPresent(String.self, forKey: .industry)
            self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
            self.contactFirstName = try container.decodeIfPresent(String.self, forKey: .contactFirstName)
            self.contactLastName = try container.decodeIfPresent(String.self, forKey: .contactLastName)
            self.phoneNumberPrimary = try container.decodeIfPresent(String.self, forKey: .phoneNumberPrimary)
            self.phoneNumberSecondary = try container.decodeIfPresent(String.self, forKey: .phoneNumberSecondary)
            self.emailAddressPrimary = try container.decodeIfPresent(String.self, forKey: .emailAddressPrimary)
            self.emailAddressSecondary = try container.decodeIfPresent(String.self, forKey: .emailAddressSecondary)
            self.jobTitle = try container.decodeIfPresent(String.self, forKey: .jobTitle)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.entryOrgId, forKey: .entryOrgId)
            try container.encodeIfPresent(self.entryOffChrtShipperOrgId, forKey: .entryOffChrtShipperOrgId)
            try container.encodeIfPresent(self.companyName, forKey: .companyName)
            try container.encodeIfPresent(self.industry, forKey: .industry)
            try container.encodeIfPresent(self.location, forKey: .location)
            try container.encodeIfPresent(self.contactFirstName, forKey: .contactFirstName)
            try container.encodeIfPresent(self.contactLastName, forKey: .contactLastName)
            try container.encodeIfPresent(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
            try container.encodeIfPresent(self.phoneNumberSecondary, forKey: .phoneNumberSecondary)
            try container.encodeIfPresent(self.emailAddressPrimary, forKey: .emailAddressPrimary)
            try container.encodeIfPresent(self.emailAddressSecondary, forKey: .emailAddressSecondary)
            try container.encodeIfPresent(self.jobTitle, forKey: .jobTitle)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case schemaVersion = "schema_version"
            case entryOrgId = "entry_org_id"
            case entryOffChrtShipperOrgId = "entry_off_chrt_shipper_org_id"
            case companyName = "company_name"
            case industry
            case location
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