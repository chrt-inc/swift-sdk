import Foundation

public struct NotificationGroup1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let groupName: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let createdAtTimestamp: Date
    public let lastEditedAtTimestamp: Date
    public let userIds: [String]?
    public let userIdsOptedOut: [String]?
    public let emailEvents: [NotificationEventsForOrgsEnum]?
    public let pushEvents: [NotificationEventsForOrgsEnum]?
    public let smsEvents: [NotificationEventsForOrgsEnum]?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        groupName: String,
        orgId: String,
        createdAtTimestamp: Date,
        lastEditedAtTimestamp: Date,
        userIds: [String]? = nil,
        userIdsOptedOut: [String]? = nil,
        emailEvents: [NotificationEventsForOrgsEnum]? = nil,
        pushEvents: [NotificationEventsForOrgsEnum]? = nil,
        smsEvents: [NotificationEventsForOrgsEnum]? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.groupName = groupName
        self.orgId = orgId
        self.createdAtTimestamp = createdAtTimestamp
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.userIds = userIds
        self.userIdsOptedOut = userIdsOptedOut
        self.emailEvents = emailEvents
        self.pushEvents = pushEvents
        self.smsEvents = smsEvents
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.groupName = try container.decode(String.self, forKey: .groupName)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.userIds = try container.decodeIfPresent([String].self, forKey: .userIds)
        self.userIdsOptedOut = try container.decodeIfPresent([String].self, forKey: .userIdsOptedOut)
        self.emailEvents = try container.decodeIfPresent([NotificationEventsForOrgsEnum].self, forKey: .emailEvents)
        self.pushEvents = try container.decodeIfPresent([NotificationEventsForOrgsEnum].self, forKey: .pushEvents)
        self.smsEvents = try container.decodeIfPresent([NotificationEventsForOrgsEnum].self, forKey: .smsEvents)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.groupName, forKey: .groupName)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encodeIfPresent(self.userIds, forKey: .userIds)
        try container.encodeIfPresent(self.userIdsOptedOut, forKey: .userIdsOptedOut)
        try container.encodeIfPresent(self.emailEvents, forKey: .emailEvents)
        try container.encodeIfPresent(self.pushEvents, forKey: .pushEvents)
        try container.encodeIfPresent(self.smsEvents, forKey: .smsEvents)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case groupName = "group_name"
        case orgId = "org_id"
        case createdAtTimestamp = "created_at_timestamp"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case userIds = "user_ids"
        case userIdsOptedOut = "user_ids_opted_out"
        case emailEvents = "email_events"
        case pushEvents = "push_events"
        case smsEvents = "sms_events"
        case id = "_id"
    }
}