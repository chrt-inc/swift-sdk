import Foundation

public struct ShippingTaskSkippedWebhookPayload: Codable, Hashable, Sendable {
    public let eventType: ShippingTaskSkipped?
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    /// The order containing the task
    public let orderId: String
    /// The task group containing the task
    public let taskGroupId: String
    /// The task that was skipped
    public let task: Task1Input
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventType: ShippingTaskSkipped? = nil,
        eventTimestamp: Date,
        orderId: String,
        taskGroupId: String,
        task: Task1Input,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventType = eventType
        self.eventTimestamp = eventTimestamp
        self.orderId = orderId
        self.taskGroupId = taskGroupId
        self.task = task
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventType = try container.decodeIfPresent(ShippingTaskSkipped.self, forKey: .eventType)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.task = try container.decode(Task1Input.self, forKey: .task)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.task, forKey: .task)
    }

    public enum ShippingTaskSkipped: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingTaskSkipped = "shipping.task.skipped"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType = "event_type"
        case eventTimestamp = "event_timestamp"
        case orderId = "order_id"
        case taskGroupId = "task_group_id"
        case task
    }
}