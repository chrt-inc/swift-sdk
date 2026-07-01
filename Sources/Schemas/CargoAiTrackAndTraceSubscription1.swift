import Foundation

public struct CargoAiTrackAndTraceSubscription1: Codable, Hashable, Sendable {
    public let id: String
    public let activeUntil: Date
    /// IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
    public let awb: String
    public let createdAt: Date
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let lastUpdateReceivedAt: Date?
    public let schemaVersion: Int
    public let subscribedAt: Date
    public let subscribedEmails: [String]?
    public let trackingUpdateIds: [String]?
    public let updatedAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        activeUntil: Date,
        awb: String,
        createdAt: Date,
        createdByOrgId: String,
        createdByUserId: String,
        lastUpdateReceivedAt: Date? = nil,
        schemaVersion: Int,
        subscribedAt: Date,
        subscribedEmails: [String]? = nil,
        trackingUpdateIds: [String]? = nil,
        updatedAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.activeUntil = activeUntil
        self.awb = awb
        self.createdAt = createdAt
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.lastUpdateReceivedAt = lastUpdateReceivedAt
        self.schemaVersion = schemaVersion
        self.subscribedAt = subscribedAt
        self.subscribedEmails = subscribedEmails
        self.trackingUpdateIds = trackingUpdateIds
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.activeUntil = try container.decode(Date.self, forKey: .activeUntil)
        self.awb = try container.decode(String.self, forKey: .awb)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.lastUpdateReceivedAt = try container.decodeIfPresent(Date.self, forKey: .lastUpdateReceivedAt)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.subscribedAt = try container.decode(Date.self, forKey: .subscribedAt)
        self.subscribedEmails = try container.decodeIfPresent([String].self, forKey: .subscribedEmails)
        self.trackingUpdateIds = try container.decodeIfPresent([String].self, forKey: .trackingUpdateIds)
        self.updatedAt = try container.decode(Date.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.activeUntil, forKey: .activeUntil)
        try container.encode(self.awb, forKey: .awb)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.lastUpdateReceivedAt, forKey: .lastUpdateReceivedAt)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.subscribedAt, forKey: .subscribedAt)
        try container.encodeIfPresent(self.subscribedEmails, forKey: .subscribedEmails)
        try container.encodeIfPresent(self.trackingUpdateIds, forKey: .trackingUpdateIds)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case activeUntil = "active_until"
        case awb
        case createdAt = "created_at"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case lastUpdateReceivedAt = "last_update_received_at"
        case schemaVersion = "schema_version"
        case subscribedAt = "subscribed_at"
        case subscribedEmails = "subscribed_emails"
        case trackingUpdateIds = "tracking_update_ids"
        case updatedAt = "updated_at"
    }
}