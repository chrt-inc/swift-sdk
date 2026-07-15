import Foundation

extension Requests {
    public struct UpdateOrgPublicDataReq: Codable, Hashable, Sendable {
        public let description: String?
        public let descriptionSetToNone: Bool?
        public let emailAddress: String?
        public let emailAddressSetToNone: Bool?
        /// Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
        public let handle: String?
        public let industry: String?
        public let industrySetToNone: Bool?
        public let name: String?
        public let phoneNumber: String?
        public let phoneNumberSetToNone: Bool?
        public let streetAddress: LocationFeature?
        public let streetAddressSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            description: String? = nil,
            descriptionSetToNone: Bool? = nil,
            emailAddress: String? = nil,
            emailAddressSetToNone: Bool? = nil,
            handle: String? = nil,
            industry: String? = nil,
            industrySetToNone: Bool? = nil,
            name: String? = nil,
            phoneNumber: String? = nil,
            phoneNumberSetToNone: Bool? = nil,
            streetAddress: LocationFeature? = nil,
            streetAddressSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.description = description
            self.descriptionSetToNone = descriptionSetToNone
            self.emailAddress = emailAddress
            self.emailAddressSetToNone = emailAddressSetToNone
            self.handle = handle
            self.industry = industry
            self.industrySetToNone = industrySetToNone
            self.name = name
            self.phoneNumber = phoneNumber
            self.phoneNumberSetToNone = phoneNumberSetToNone
            self.streetAddress = streetAddress
            self.streetAddressSetToNone = streetAddressSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.descriptionSetToNone = try container.decodeIfPresent(Bool.self, forKey: .descriptionSetToNone)
            self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
            self.emailAddressSetToNone = try container.decodeIfPresent(Bool.self, forKey: .emailAddressSetToNone)
            self.handle = try container.decodeIfPresent(String.self, forKey: .handle)
            self.industry = try container.decodeIfPresent(String.self, forKey: .industry)
            self.industrySetToNone = try container.decodeIfPresent(Bool.self, forKey: .industrySetToNone)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber)
            self.phoneNumberSetToNone = try container.decodeIfPresent(Bool.self, forKey: .phoneNumberSetToNone)
            self.streetAddress = try container.decodeIfPresent(LocationFeature.self, forKey: .streetAddress)
            self.streetAddressSetToNone = try container.decodeIfPresent(Bool.self, forKey: .streetAddressSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.descriptionSetToNone, forKey: .descriptionSetToNone)
            try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
            try container.encodeIfPresent(self.emailAddressSetToNone, forKey: .emailAddressSetToNone)
            try container.encodeIfPresent(self.handle, forKey: .handle)
            try container.encodeIfPresent(self.industry, forKey: .industry)
            try container.encodeIfPresent(self.industrySetToNone, forKey: .industrySetToNone)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.phoneNumber, forKey: .phoneNumber)
            try container.encodeIfPresent(self.phoneNumberSetToNone, forKey: .phoneNumberSetToNone)
            try container.encodeIfPresent(self.streetAddress, forKey: .streetAddress)
            try container.encodeIfPresent(self.streetAddressSetToNone, forKey: .streetAddressSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case description
            case descriptionSetToNone = "description__set_to_None"
            case emailAddress = "email_address"
            case emailAddressSetToNone = "email_address__set_to_None"
            case handle
            case industry
            case industrySetToNone = "industry__set_to_None"
            case name
            case phoneNumber = "phone_number"
            case phoneNumberSetToNone = "phone_number__set_to_None"
            case streetAddress = "street_address"
            case streetAddressSetToNone = "street_address__set_to_None"
        }
    }
}