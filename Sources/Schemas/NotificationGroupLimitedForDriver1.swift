import Foundation

/// Response model for non-admin views (e.g., drivers).
/// 
/// Excludes sensitive membership fields:
/// - created_at_timestamp
/// - user_ids
/// - user_ids_opted_out
/// 
/// Includes computed fields:
/// - is_opted_out: True if the requesting user is in user_ids_opted_out
public struct NotificationGroupLimitedForDriver1: Codable, Hashable, Sendable {
    public let id: String
    public let emailEvents: [NotificationEventsForOrgsEnum]
    public let groupName: String
    public let isOptedOut: Bool
    public let lastEditedAtTimestamp: Date
    /// Must be a string starting with `org_`
    public let orgId: String
    public let pushEvents: [NotificationEventsForOrgsEnum]
    public let schemaVersion: Int
    public let smsEvents: [NotificationEventsForOrgsEnum]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        emailEvents: [NotificationEventsForOrgsEnum],
        groupName: String,
        isOptedOut: Bool,
        lastEditedAtTimestamp: Date,
        orgId: String,
        pushEvents: [NotificationEventsForOrgsEnum],
        schemaVersion: Int,
        smsEvents: [NotificationEventsForOrgsEnum],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.emailEvents = emailEvents
        self.groupName = groupName
        self.isOptedOut = isOptedOut
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.orgId = orgId
        self.pushEvents = pushEvents
        self.schemaVersion = schemaVersion
        self.smsEvents = smsEvents
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.emailEvents = try container.decode([NotificationEventsForOrgsEnum].self, forKey: .emailEvents)
        self.groupName = try container.decode(String.self, forKey: .groupName)
        self.isOptedOut = try container.decode(Bool.self, forKey: .isOptedOut)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.pushEvents = try container.decode([NotificationEventsForOrgsEnum].self, forKey: .pushEvents)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.smsEvents = try container.decode([NotificationEventsForOrgsEnum].self, forKey: .smsEvents)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.emailEvents, forKey: .emailEvents)
        try container.encode(self.groupName, forKey: .groupName)
        try container.encode(self.isOptedOut, forKey: .isOptedOut)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.pushEvents, forKey: .pushEvents)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.smsEvents, forKey: .smsEvents)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case emailEvents = "email_events"
        case groupName = "group_name"
        case isOptedOut = "is_opted_out"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case orgId = "org_id"
        case pushEvents = "push_events"
        case schemaVersion = "schema_version"
        case smsEvents = "sms_events"
    }
}