import Foundation

public struct ShippingTaskCompletedWebhookPayload: Codable, Hashable, Sendable {
    /// The task action type (e.g., PICKUP, DELIVER)
    public let action: Action?
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: ShippingTaskCompleted?
    /// The location where the task was performed
    public let location: LocationFeature?
    /// The order containing the task
    public let orderId: String
    /// The task group containing the task
    public let taskGroupId: String
    /// The type of task group (CHRT_GROUND_COURIER, FLIGHT, ONBOARD_COURIER)
    public let taskGroupType: TaskGroupTypeEnum1
    /// The task that was completed
    public let taskId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        action: Action? = nil,
        eventTimestamp: Date,
        eventType: ShippingTaskCompleted? = nil,
        location: LocationFeature? = nil,
        orderId: String,
        taskGroupId: String,
        taskGroupType: TaskGroupTypeEnum1,
        taskId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.action = action
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.location = location
        self.orderId = orderId
        self.taskGroupId = taskGroupId
        self.taskGroupType = taskGroupType
        self.taskId = taskId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.action = try container.decodeIfPresent(Action.self, forKey: .action)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(ShippingTaskCompleted.self, forKey: .eventType)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.taskGroupType = try container.decode(TaskGroupTypeEnum1.self, forKey: .taskGroupType)
        self.taskId = try container.decode(String.self, forKey: .taskId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.action, forKey: .action)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.taskGroupType, forKey: .taskGroupType)
        try container.encode(self.taskId, forKey: .taskId)
    }

    public enum ShippingTaskCompleted: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingTaskCompleted = "shipping.task.completed"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case action
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case location
        case orderId = "order_id"
        case taskGroupId = "task_group_id"
        case taskGroupType = "task_group_type"
        case taskId = "task_id"
    }
}