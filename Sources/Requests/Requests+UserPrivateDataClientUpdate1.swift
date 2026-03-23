import Foundation

extension Requests {
    public struct UserPrivateDataClientUpdate1: Codable, Hashable, Sendable {
        public let primaryEmailAddress: String?
        public let phoneNumber: String?
        public let primaryEmailAddressSetToNone: Bool?
        public let phoneNumberSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            primaryEmailAddress: String? = nil,
            phoneNumber: String? = nil,
            primaryEmailAddressSetToNone: Bool? = nil,
            phoneNumberSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.primaryEmailAddress = primaryEmailAddress
            self.phoneNumber = phoneNumber
            self.primaryEmailAddressSetToNone = primaryEmailAddressSetToNone
            self.phoneNumberSetToNone = phoneNumberSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.primaryEmailAddress = try container.decodeIfPresent(String.self, forKey: .primaryEmailAddress)
            self.phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber)
            self.primaryEmailAddressSetToNone = try container.decodeIfPresent(Bool.self, forKey: .primaryEmailAddressSetToNone)
            self.phoneNumberSetToNone = try container.decodeIfPresent(Bool.self, forKey: .phoneNumberSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.primaryEmailAddress, forKey: .primaryEmailAddress)
            try container.encodeIfPresent(self.phoneNumber, forKey: .phoneNumber)
            try container.encodeIfPresent(self.primaryEmailAddressSetToNone, forKey: .primaryEmailAddressSetToNone)
            try container.encodeIfPresent(self.phoneNumberSetToNone, forKey: .phoneNumberSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case primaryEmailAddress = "primary_email_address"
            case phoneNumber = "phone_number"
            case primaryEmailAddressSetToNone = "primary_email_address__set_to_None"
            case phoneNumberSetToNone = "phone_number__set_to_None"
        }
    }
}