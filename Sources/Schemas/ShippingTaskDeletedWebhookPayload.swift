import Foundation

public struct ShippingTaskDeletedWebhookPayload: Codable, Hashable, Sendable {
    public let eventType: ShippingTaskDeleted?
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    /// The order containing the task group
    public let orderId: String
    /// The task group the task was deleted from
    public let taskGroupId: String
    /// The ID of the task that was deleted
    public let taskId: String
    /// The task action type (e.g., PICKUP, DELIVER)
    public let action: Action?
    /// The location where the task was to be performed
    public let location: LocationFeature?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventType: ShippingTaskDeleted? = nil,
        eventTimestamp: Date,
        orderId: String,
        taskGroupId: String,
        taskId: String,
        action: Action? = nil,
        location: LocationFeature? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventType = eventType
        self.eventTimestamp = eventTimestamp
        self.orderId = orderId
        self.taskGroupId = taskGroupId
        self.taskId = taskId
        self.action = action
        self.location = location
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventType = try container.decodeIfPresent(ShippingTaskDeleted.self, forKey: .eventType)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.taskId = try container.decode(String.self, forKey: .taskId)
        self.action = try container.decodeIfPresent(Action.self, forKey: .action)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.taskId, forKey: .taskId)
        try container.encodeIfPresent(self.action, forKey: .action)
        try container.encodeIfPresent(self.location, forKey: .location)
    }

    public enum ShippingTaskDeleted: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingTaskDeleted = "shipping.task.deleted"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType = "event_type"
        case eventTimestamp = "event_timestamp"
        case orderId = "order_id"
        case taskGroupId = "task_group_id"
        case taskId = "task_id"
        case action
        case location
    }
}