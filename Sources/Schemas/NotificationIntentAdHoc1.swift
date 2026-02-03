import Foundation

public struct NotificationIntentAdHoc1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let createdAtTimestamp: Date
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let orderId: String
    public let directoryEntryId: String
    public let emailEvents: [NotificationEventsForAdHocEnum]?
    public let pushEvents: [NotificationEventsForAdHocEnum]?
    public let smsEvents: [NotificationEventsForAdHocEnum]?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        createdAtTimestamp: Date,
        createdByOrgId: String,
        createdByUserId: String,
        orderId: String,
        directoryEntryId: String,
        emailEvents: [NotificationEventsForAdHocEnum]? = nil,
        pushEvents: [NotificationEventsForAdHocEnum]? = nil,
        smsEvents: [NotificationEventsForAdHocEnum]? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.orderId = orderId
        self.directoryEntryId = directoryEntryId
        self.emailEvents = emailEvents
        self.pushEvents = pushEvents
        self.smsEvents = smsEvents
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.directoryEntryId = try container.decode(String.self, forKey: .directoryEntryId)
        self.emailEvents = try container.decodeIfPresent([NotificationEventsForAdHocEnum].self, forKey: .emailEvents)
        self.pushEvents = try container.decodeIfPresent([NotificationEventsForAdHocEnum].self, forKey: .pushEvents)
        self.smsEvents = try container.decodeIfPresent([NotificationEventsForAdHocEnum].self, forKey: .smsEvents)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.directoryEntryId, forKey: .directoryEntryId)
        try container.encodeIfPresent(self.emailEvents, forKey: .emailEvents)
        try container.encodeIfPresent(self.pushEvents, forKey: .pushEvents)
        try container.encodeIfPresent(self.smsEvents, forKey: .smsEvents)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case orderId = "order_id"
        case directoryEntryId = "directory_entry_id"
        case emailEvents = "email_events"
        case pushEvents = "push_events"
        case smsEvents = "sms_events"
        case id = "_id"
    }
}