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
    public let schemaVersion: Int
    /// Must be a string starting with `org_`
    public let orgId: String
    public let groupName: String
    public let lastEditedAtTimestamp: Date
    public let emailEvents: [NotificationEventsForOrgsEnum]
    public let pushEvents: [NotificationEventsForOrgsEnum]
    public let smsEvents: [NotificationEventsForOrgsEnum]
    public let isOptedOut: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        schemaVersion: Int,
        orgId: String,
        groupName: String,
        lastEditedAtTimestamp: Date,
        emailEvents: [NotificationEventsForOrgsEnum],
        pushEvents: [NotificationEventsForOrgsEnum],
        smsEvents: [NotificationEventsForOrgsEnum],
        isOptedOut: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.schemaVersion = schemaVersion
        self.orgId = orgId
        self.groupName = groupName
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.emailEvents = emailEvents
        self.pushEvents = pushEvents
        self.smsEvents = smsEvents
        self.isOptedOut = isOptedOut
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.groupName = try container.decode(String.self, forKey: .groupName)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.emailEvents = try container.decode([NotificationEventsForOrgsEnum].self, forKey: .emailEvents)
        self.pushEvents = try container.decode([NotificationEventsForOrgsEnum].self, forKey: .pushEvents)
        self.smsEvents = try container.decode([NotificationEventsForOrgsEnum].self, forKey: .smsEvents)
        self.isOptedOut = try container.decode(Bool.self, forKey: .isOptedOut)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.groupName, forKey: .groupName)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encode(self.emailEvents, forKey: .emailEvents)
        try container.encode(self.pushEvents, forKey: .pushEvents)
        try container.encode(self.smsEvents, forKey: .smsEvents)
        try container.encode(self.isOptedOut, forKey: .isOptedOut)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case schemaVersion = "schema_version"
        case orgId = "org_id"
        case groupName = "group_name"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case emailEvents = "email_events"
        case pushEvents = "push_events"
        case smsEvents = "sms_events"
        case isOptedOut = "is_opted_out"
    }
}