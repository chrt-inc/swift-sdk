import Foundation

/// One courier milestone at one stop; see "Milestone events" in the module docstring.
public struct ShippingIntegrationOrderMilestoneEvent1: Codable, Hashable, Sendable {
    public let milestoneEventType: ShippingIntegrationOrderMilestoneEventTypeEnum1
    public let notificationSent: Bool
    public let occurredAtTimestamp: Date?
    public let signedByName: String?
    public let stopType: ShippingIntegrationOrderStopTypeEnum1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        milestoneEventType: ShippingIntegrationOrderMilestoneEventTypeEnum1,
        notificationSent: Bool,
        occurredAtTimestamp: Date? = nil,
        signedByName: String? = nil,
        stopType: ShippingIntegrationOrderStopTypeEnum1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.milestoneEventType = milestoneEventType
        self.notificationSent = notificationSent
        self.occurredAtTimestamp = occurredAtTimestamp
        self.signedByName = signedByName
        self.stopType = stopType
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.milestoneEventType = try container.decode(ShippingIntegrationOrderMilestoneEventTypeEnum1.self, forKey: .milestoneEventType)
        self.notificationSent = try container.decode(Bool.self, forKey: .notificationSent)
        self.occurredAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .occurredAtTimestamp)
        self.signedByName = try container.decodeIfPresent(String.self, forKey: .signedByName)
        self.stopType = try container.decodeIfPresent(ShippingIntegrationOrderStopTypeEnum1.self, forKey: .stopType)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.milestoneEventType, forKey: .milestoneEventType)
        try container.encode(self.notificationSent, forKey: .notificationSent)
        try container.encodeIfPresent(self.occurredAtTimestamp, forKey: .occurredAtTimestamp)
        try container.encodeIfPresent(self.signedByName, forKey: .signedByName)
        try container.encodeIfPresent(self.stopType, forKey: .stopType)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case milestoneEventType = "milestone_event_type"
        case notificationSent = "notification_sent"
        case occurredAtTimestamp = "occurred_at_timestamp"
        case signedByName = "signed_by_name"
        case stopType = "stop_type"
    }
}