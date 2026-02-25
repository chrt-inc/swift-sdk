import Foundation

public struct NotificationUserPreferences1: Codable, Hashable, Sendable {
    public let id: String
    public let createdAtTimestamp: Date
    public let emailEvents: [NotificationEventsForUsersEnum]?
    public let lastEditedAtTimestamp: Date
    public let pushEvents: [NotificationEventsForUsersEnum]?
    public let schemaVersion: Int
    public let smsEvents: [NotificationEventsForUsersEnum]?
    /// Must be a string starting with `user_`
    public let userId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        createdAtTimestamp: Date,
        emailEvents: [NotificationEventsForUsersEnum]? = nil,
        lastEditedAtTimestamp: Date,
        pushEvents: [NotificationEventsForUsersEnum]? = nil,
        schemaVersion: Int,
        smsEvents: [NotificationEventsForUsersEnum]? = nil,
        userId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.createdAtTimestamp = createdAtTimestamp
        self.emailEvents = emailEvents
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.pushEvents = pushEvents
        self.schemaVersion = schemaVersion
        self.smsEvents = smsEvents
        self.userId = userId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.emailEvents = try container.decodeIfPresent([NotificationEventsForUsersEnum].self, forKey: .emailEvents)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.pushEvents = try container.decodeIfPresent([NotificationEventsForUsersEnum].self, forKey: .pushEvents)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.smsEvents = try container.decodeIfPresent([NotificationEventsForUsersEnum].self, forKey: .smsEvents)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encodeIfPresent(self.emailEvents, forKey: .emailEvents)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encodeIfPresent(self.pushEvents, forKey: .pushEvents)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.smsEvents, forKey: .smsEvents)
        try container.encode(self.userId, forKey: .userId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case createdAtTimestamp = "created_at_timestamp"
        case emailEvents = "email_events"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case pushEvents = "push_events"
        case schemaVersion = "schema_version"
        case smsEvents = "sms_events"
        case userId = "user_id"
    }
}