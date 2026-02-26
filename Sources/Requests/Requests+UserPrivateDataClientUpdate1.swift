import Foundation

extension Requests {
    public struct UserPrivateDataClientUpdate1: Codable, Hashable, Sendable {
        public let primaryEmailAddress: String?
        public let phoneNumber: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            primaryEmailAddress: String? = nil,
            phoneNumber: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.primaryEmailAddress = primaryEmailAddress
            self.phoneNumber = phoneNumber
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.primaryEmailAddress = try container.decodeIfPresent(String.self, forKey: .primaryEmailAddress)
            self.phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.primaryEmailAddress, forKey: .primaryEmailAddress)
            try container.encodeIfPresent(self.phoneNumber, forKey: .phoneNumber)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case primaryEmailAddress = "primary_email_address"
            case phoneNumber = "phone_number"
        }
    }
}