import Foundation

public struct CourierNotificationPreferences1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let emailAddresses: [String]?
    public let smsPhoneNumbers: [String]?
    public let voicePhoneNumbers: [String]?
    /// For each CourierNotificationEventEnum, which channels (email/sms/push/phone_call) are enabled
    public let preferences: [String: [NotificationChannelEnum]]?
    /// Must be a string starting with `org_`
    public let orgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let createdAtTimestamp: Date
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        emailAddresses: [String]? = nil,
        smsPhoneNumbers: [String]? = nil,
        voicePhoneNumbers: [String]? = nil,
        preferences: [String: [NotificationChannelEnum]]? = nil,
        orgId: String,
        createdByUserId: String,
        createdAtTimestamp: Date,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.emailAddresses = emailAddresses
        self.smsPhoneNumbers = smsPhoneNumbers
        self.voicePhoneNumbers = voicePhoneNumbers
        self.preferences = preferences
        self.orgId = orgId
        self.createdByUserId = createdByUserId
        self.createdAtTimestamp = createdAtTimestamp
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.emailAddresses = try container.decodeIfPresent([String].self, forKey: .emailAddresses)
        self.smsPhoneNumbers = try container.decodeIfPresent([String].self, forKey: .smsPhoneNumbers)
        self.voicePhoneNumbers = try container.decodeIfPresent([String].self, forKey: .voicePhoneNumbers)
        self.preferences = try container.decodeIfPresent([String: [NotificationChannelEnum]].self, forKey: .preferences)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.id = try container.decode(String.self, forKey: .id)
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
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case emailAddresses = "email_addresses"
        case smsPhoneNumbers = "sms_phone_numbers"
        case voicePhoneNumbers = "voice_phone_numbers"
        case preferences
        case orgId = "org_id"
        case createdByUserId = "created_by_user_id"
        case createdAtTimestamp = "created_at_timestamp"
        case id = "_id"
    }
}