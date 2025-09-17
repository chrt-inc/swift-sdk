import Foundation

extension Requests {
    public struct CourierOrgProfileClientUpdate3: Codable, Hashable, Sendable {
        public let description: Nullable<String>?
        public let emailAddressPrimary: Nullable<String>?
        public let phoneNumberPrimary: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            description: Nullable<String>? = nil,
            emailAddressPrimary: Nullable<String>? = nil,
            phoneNumberPrimary: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.description = description
            self.emailAddressPrimary = emailAddressPrimary
            self.phoneNumberPrimary = phoneNumberPrimary
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.description = try container.decodeNullableIfPresent(String.self, forKey: .description)
            self.emailAddressPrimary = try container.decodeNullableIfPresent(String.self, forKey: .emailAddressPrimary)
            self.phoneNumberPrimary = try container.decodeNullableIfPresent(String.self, forKey: .phoneNumberPrimary)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeNullableIfPresent(self.description, forKey: .description)
            try container.encodeNullableIfPresent(self.emailAddressPrimary, forKey: .emailAddressPrimary)
            try container.encodeNullableIfPresent(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case description
            case emailAddressPrimary = "email_address_primary"
            case phoneNumberPrimary = "phone_number_primary"
        }
    }
}