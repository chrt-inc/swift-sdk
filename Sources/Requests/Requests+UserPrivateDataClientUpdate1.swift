import Foundation

extension Requests {
    public struct UserPrivateDataClientUpdate1: Codable, Hashable, Sendable {
        public let phoneNumber: String?
        public let primaryEmailAddress: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            phoneNumber: String? = nil,
            primaryEmailAddress: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.phoneNumber = phoneNumber
            self.primaryEmailAddress = primaryEmailAddress
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber)
            self.primaryEmailAddress = try container.decodeIfPresent(String.self, forKey: .primaryEmailAddress)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.phoneNumber, forKey: .phoneNumber)
            try container.encodeIfPresent(self.primaryEmailAddress, forKey: .primaryEmailAddress)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case phoneNumber = "phone_number"
            case primaryEmailAddress = "primary_email_address"
        }
    }
}