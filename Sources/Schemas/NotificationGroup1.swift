import Foundation

public struct NotificationGroup1: Codable, Hashable, Sendable {
    public let id: String
    public let createdAtTimestamp: Date
    public let emailEvents: [NotificationEventsForOrgsEnum]?
    public let groupName: String
    public let lastEditedAtTimestamp: Date
    /// Must be a string starting with `org_`
    public let orgId: String
    public let pushEvents: [NotificationEventsForOrgsEnum]?
    public let schemaVersion: Int
    public let smsEvents: [NotificationEventsForOrgsEnum]?
    public let userIds: [String]?
    public let userIdsOptedOut: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        createdAtTimestamp: Date,
        emailEvents: [NotificationEventsForOrgsEnum]? = nil,
        groupName: String,
        lastEditedAtTimestamp: Date,
        orgId: String,
        pushEvents: [NotificationEventsForOrgsEnum]? = nil,
        schemaVersion: Int,
        smsEvents: [NotificationEventsForOrgsEnum]? = nil,
        userIds: [String]? = nil,
        userIdsOptedOut: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.createdAtTimestamp = createdAtTimestamp
        self.emailEvents = emailEvents
        self.groupName = groupName
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.orgId = orgId
        self.pushEvents = pushEvents
        self.schemaVersion = schemaVersion
        self.smsEvents = smsEvents
        self.userIds = userIds
        self.userIdsOptedOut = userIdsOptedOut
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.emailEvents = try container.decodeIfPresent([NotificationEventsForOrgsEnum].self, forKey: .emailEvents)
        self.groupName = try container.decode(String.self, forKey: .groupName)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.pushEvents = try container.decodeIfPresent([NotificationEventsForOrgsEnum].self, forKey: .pushEvents)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.smsEvents = try container.decodeIfPresent([NotificationEventsForOrgsEnum].self, forKey: .smsEvents)
        self.userIds = try container.decodeIfPresent([String].self, forKey: .userIds)
        self.userIdsOptedOut = try container.decodeIfPresent([String].self, forKey: .userIdsOptedOut)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encodeIfPresent(self.emailEvents, forKey: .emailEvents)
        try container.encode(self.groupName, forKey: .groupName)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.pushEvents, forKey: .pushEvents)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.smsEvents, forKey: .smsEvents)
        try container.encodeIfPresent(self.userIds, forKey: .userIds)
        try container.encodeIfPresent(self.userIdsOptedOut, forKey: .userIdsOptedOut)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case createdAtTimestamp = "created_at_timestamp"
        case emailEvents = "email_events"
        case groupName = "group_name"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case orgId = "org_id"
        case pushEvents = "push_events"
        case schemaVersion = "schema_version"
        case smsEvents = "sms_events"
        case userIds = "user_ids"
        case userIdsOptedOut = "user_ids_opted_out"
    }
}