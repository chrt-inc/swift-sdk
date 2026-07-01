import Foundation

extension Requests {
    public struct UserPrivateDataClientUpdate1: Codable, Hashable, Sendable {
        public let phoneNumber: String?
        public let phoneNumberSetToNone: Bool?
        public let primaryEmailAddress: String?
        public let primaryEmailAddressSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            phoneNumber: String? = nil,
            phoneNumberSetToNone: Bool? = nil,
            primaryEmailAddress: String? = nil,
            primaryEmailAddressSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.phoneNumber = phoneNumber
            self.phoneNumberSetToNone = phoneNumberSetToNone
            self.primaryEmailAddress = primaryEmailAddress
            self.primaryEmailAddressSetToNone = primaryEmailAddressSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber)
            self.phoneNumberSetToNone = try container.decodeIfPresent(Bool.self, forKey: .phoneNumberSetToNone)
            self.primaryEmailAddress = try container.decodeIfPresent(String.self, forKey: .primaryEmailAddress)
            self.primaryEmailAddressSetToNone = try container.decodeIfPresent(Bool.self, forKey: .primaryEmailAddressSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.phoneNumber, forKey: .phoneNumber)
            try container.encodeIfPresent(self.phoneNumberSetToNone, forKey: .phoneNumberSetToNone)
            try container.encodeIfPresent(self.primaryEmailAddress, forKey: .primaryEmailAddress)
            try container.encodeIfPresent(self.primaryEmailAddressSetToNone, forKey: .primaryEmailAddressSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case phoneNumber = "phone_number"
            case phoneNumberSetToNone = "phone_number__set_to_None"
            case primaryEmailAddress = "primary_email_address"
            case primaryEmailAddressSetToNone = "primary_email_address__set_to_None"
        }
    }
}