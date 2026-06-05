import Foundation

public struct CargoAiTrackAndTraceSubscription1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let id: String
    /// IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
    public let awb: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    public let subscribedEmails: [String]?
    public let trackingUpdateIds: [String]?
    public let subscribedAt: Date
    public let activeUntil: Date
    public let lastUpdateReceivedAt: Date?
    public let createdAt: Date
    public let updatedAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        id: String,
        awb: String,
        createdByUserId: String,
        createdByOrgId: String,
        subscribedEmails: [String]? = nil,
        trackingUpdateIds: [String]? = nil,
        subscribedAt: Date,
        activeUntil: Date,
        lastUpdateReceivedAt: Date? = nil,
        createdAt: Date,
        updatedAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.id = id
        self.awb = awb
        self.createdByUserId = createdByUserId
        self.createdByOrgId = createdByOrgId
        self.subscribedEmails = subscribedEmails
        self.trackingUpdateIds = trackingUpdateIds
        self.subscribedAt = subscribedAt
        self.activeUntil = activeUntil
        self.lastUpdateReceivedAt = lastUpdateReceivedAt
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.id = try container.decode(String.self, forKey: .id)
        self.awb = try container.decode(String.self, forKey: .awb)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.subscribedEmails = try container.decodeIfPresent([String].self, forKey: .subscribedEmails)
        self.trackingUpdateIds = try container.decodeIfPresent([String].self, forKey: .trackingUpdateIds)
        self.subscribedAt = try container.decode(Date.self, forKey: .subscribedAt)
        self.activeUntil = try container.decode(Date.self, forKey: .activeUntil)
        self.lastUpdateReceivedAt = try container.decodeIfPresent(Date.self, forKey: .lastUpdateReceivedAt)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.updatedAt = try container.decode(Date.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.awb, forKey: .awb)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encodeIfPresent(self.subscribedEmails, forKey: .subscribedEmails)
        try container.encodeIfPresent(self.trackingUpdateIds, forKey: .trackingUpdateIds)
        try container.encode(self.subscribedAt, forKey: .subscribedAt)
        try container.encode(self.activeUntil, forKey: .activeUntil)
        try container.encodeIfPresent(self.lastUpdateReceivedAt, forKey: .lastUpdateReceivedAt)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case id = "_id"
        case awb
        case createdByUserId = "created_by_user_id"
        case createdByOrgId = "created_by_org_id"
        case subscribedEmails = "subscribed_emails"
        case trackingUpdateIds = "tracking_update_ids"
        case subscribedAt = "subscribed_at"
        case activeUntil = "active_until"
        case lastUpdateReceivedAt = "last_update_received_at"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
}