import Foundation

extension Requests {
    public struct UserPrivateDataClientCreate1: Codable, Hashable, Sendable {
        public let phoneNumber: String?
        public let primaryEmailAddress: String?
        public let schemaVersion: Int
        /// IANA time zone name (e.g. `America/New_York`).
        public let timeZone: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            phoneNumber: String? = nil,
            primaryEmailAddress: String? = nil,
            schemaVersion: Int,
            timeZone: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.phoneNumber = phoneNumber
            self.primaryEmailAddress = primaryEmailAddress
            self.schemaVersion = schemaVersion
            self.timeZone = timeZone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber)
            self.primaryEmailAddress = try container.decodeIfPresent(String.self, forKey: .primaryEmailAddress)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.timeZone = try container.decodeIfPresent(String.self, forKey: .timeZone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.phoneNumber, forKey: .phoneNumber)
            try container.encodeIfPresent(self.primaryEmailAddress, forKey: .primaryEmailAddress)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.timeZone, forKey: .timeZone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case phoneNumber = "phone_number"
            case primaryEmailAddress = "primary_email_address"
            case schemaVersion = "schema_version"
            case timeZone = "time_zone"
        }
    }
}