import Foundation

public struct ShippingTaskGroupTasksOrderingUpdatedWebhookPayload: Codable, Hashable, Sendable {
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: ShippingTaskGroupTasksOrderingUpdated?
    /// The order containing the task group
    public let orderId: String
    /// The task group whose task ordering was updated
    public let taskGroupId: String
    /// The new ordered list of task IDs
    public let taskIds: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventTimestamp: Date,
        eventType: ShippingTaskGroupTasksOrderingUpdated? = nil,
        orderId: String,
        taskGroupId: String,
        taskIds: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.orderId = orderId
        self.taskGroupId = taskGroupId
        self.taskIds = taskIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(ShippingTaskGroupTasksOrderingUpdated.self, forKey: .eventType)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.taskIds = try container.decode([String].self, forKey: .taskIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.taskIds, forKey: .taskIds)
    }

    public enum ShippingTaskGroupTasksOrderingUpdated: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingTaskGroupTasksOrderingUpdated = "shipping.task_group.tasks_ordering_updated"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case orderId = "order_id"
        case taskGroupId = "task_group_id"
        case taskIds = "task_ids"
    }
}