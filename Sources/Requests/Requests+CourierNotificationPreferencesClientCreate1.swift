import Foundation

extension Requests {
    public struct CourierNotificationPreferencesClientCreate1: Codable, Hashable, Sendable {
        public let schemaVersion: Int
        public let emailAddresses: [String]?
        public let smsPhoneNumbers: [String]?
        public let voicePhoneNumbers: [String]?
        /// For each CourierNotificationEventEnum, which channels (email/sms/push/phone_call) are enabled
        public let preferences: [String: [NotificationChannelEnum]]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            schemaVersion: Int,
            emailAddresses: [String]? = nil,
            smsPhoneNumbers: [String]? = nil,
            voicePhoneNumbers: [String]? = nil,
            preferences: [String: [NotificationChannelEnum]]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.schemaVersion = schemaVersion
            self.emailAddresses = emailAddresses
            self.smsPhoneNumbers = smsPhoneNumbers
            self.voicePhoneNumbers = voicePhoneNumbers
            self.preferences = preferences
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.emailAddresses = try container.decodeIfPresent([String].self, forKey: .emailAddresses)
            self.smsPhoneNumbers = try container.decodeIfPresent([String].self, forKey: .smsPhoneNumbers)
            self.voicePhoneNumbers = try container.decodeIfPresent([String].self, forKey: .voicePhoneNumbers)
            self.preferences = try container.decodeIfPresent([String: [NotificationChannelEnum]].self, forKey: .preferences)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.emailAddresses, forKey: .emailAddresses)
            try container.encodeIfPresent(self.smsPhoneNumbers, forKey: .smsPhoneNumbers)
            try container.encodeIfPresent(self.voicePhoneNumbers, forKey: .voicePhoneNumbers)
            try container.encodeIfPresent(self.preferences, forKey: .preferences)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case schemaVersion = "schema_version"
            case emailAddresses = "email_addresses"
            case smsPhoneNumbers = "sms_phone_numbers"
            case voicePhoneNumbers = "voice_phone_numbers"
            case preferences
        }
    }
}