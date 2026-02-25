import Foundation

public struct NotificationIntentAdHoc1: Codable, Hashable, Sendable {
    public let id: String
    public let createdAtTimestamp: Date
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let directoryEntryId: String
    public let emailEvents: [NotificationEventsForAdHocEnum]?
    public let orderId: String
    public let pushEvents: [NotificationEventsForAdHocEnum]?
    public let schemaVersion: Int
    public let smsEvents: [NotificationEventsForAdHocEnum]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        createdAtTimestamp: Date,
        createdByOrgId: String,
        createdByUserId: String,
        directoryEntryId: String,
        emailEvents: [NotificationEventsForAdHocEnum]? = nil,
        orderId: String,
        pushEvents: [NotificationEventsForAdHocEnum]? = nil,
        schemaVersion: Int,
        smsEvents: [NotificationEventsForAdHocEnum]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.directoryEntryId = directoryEntryId
        self.emailEvents = emailEvents
        self.orderId = orderId
        self.pushEvents = pushEvents
        self.schemaVersion = schemaVersion
        self.smsEvents = smsEvents
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.directoryEntryId = try container.decode(String.self, forKey: .directoryEntryId)
        self.emailEvents = try container.decodeIfPresent([NotificationEventsForAdHocEnum].self, forKey: .emailEvents)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.pushEvents = try container.decodeIfPresent([NotificationEventsForAdHocEnum].self, forKey: .pushEvents)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.smsEvents = try container.decodeIfPresent([NotificationEventsForAdHocEnum].self, forKey: .smsEvents)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.directoryEntryId, forKey: .directoryEntryId)
        try container.encodeIfPresent(self.emailEvents, forKey: .emailEvents)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.pushEvents, forKey: .pushEvents)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.smsEvents, forKey: .smsEvents)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case directoryEntryId = "directory_entry_id"
        case emailEvents = "email_events"
        case orderId = "order_id"
        case pushEvents = "push_events"
        case schemaVersion = "schema_version"
        case smsEvents = "sms_events"
    }
}