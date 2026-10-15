import Foundation

public struct ShippingTaskGroupTrackingSharingUpdatedWebhookPayload: Codable, Hashable, Sendable {
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: ShippingTaskGroupTrackingSharingUpdated?
    /// The order containing the task group
    public let orderId: String
    /// Whether the driver's live tracking for the task group is now publicly shared
    public let `public`: Bool
    /// The task group whose driver tracking sharing changed
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventTimestamp: Date,
        eventType: ShippingTaskGroupTrackingSharingUpdated? = nil,
        orderId: String,
        public: Bool,
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.orderId = orderId
        self.public = `public`
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(ShippingTaskGroupTrackingSharingUpdated.self, forKey: .eventType)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.public = try container.decode(Bool.self, forKey: .public)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.public, forKey: .public)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    public enum ShippingTaskGroupTrackingSharingUpdated: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingTaskGroupTrackingSharingUpdated = "shipping.task_group.tracking_sharing_updated"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case orderId = "order_id"
        case `public`
        case taskGroupId = "task_group_id"
    }
}