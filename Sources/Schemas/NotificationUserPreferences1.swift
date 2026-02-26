import Foundation

public struct NotificationUserPreferences1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    /// Must be a string starting with `user_`
    public let userId: String
    public let createdAtTimestamp: Date
    public let lastEditedAtTimestamp: Date
    public let emailEvents: [NotificationEventsForUsersEnum]?
    public let pushEvents: [NotificationEventsForUsersEnum]?
    public let smsEvents: [NotificationEventsForUsersEnum]?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        userId: String,
        createdAtTimestamp: Date,
        lastEditedAtTimestamp: Date,
        emailEvents: [NotificationEventsForUsersEnum]? = nil,
        pushEvents: [NotificationEventsForUsersEnum]? = nil,
        smsEvents: [NotificationEventsForUsersEnum]? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.userId = userId
        self.createdAtTimestamp = createdAtTimestamp
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.emailEvents = emailEvents
        self.pushEvents = pushEvents
        self.smsEvents = smsEvents
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.emailEvents = try container.decodeIfPresent([NotificationEventsForUsersEnum].self, forKey: .emailEvents)
        self.pushEvents = try container.decodeIfPresent([NotificationEventsForUsersEnum].self, forKey: .pushEvents)
        self.smsEvents = try container.decodeIfPresent([NotificationEventsForUsersEnum].self, forKey: .smsEvents)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.userId, forKey: .userId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encodeIfPresent(self.emailEvents, forKey: .emailEvents)
        try container.encodeIfPresent(self.pushEvents, forKey: .pushEvents)
        try container.encodeIfPresent(self.smsEvents, forKey: .smsEvents)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case userId = "user_id"
        case createdAtTimestamp = "created_at_timestamp"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case emailEvents = "email_events"
        case pushEvents = "push_events"
        case smsEvents = "sms_events"
        case id = "_id"
    }
}