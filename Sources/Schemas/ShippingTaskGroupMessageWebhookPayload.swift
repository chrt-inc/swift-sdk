import Foundation

public struct ShippingTaskGroupMessageWebhookPayload: Codable, Hashable, Sendable {
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: ShippingTaskGroupMessage?
    /// The message that was added to the task group
    public let message: TaskGroupMessage1
    /// The order containing the task group
    public let orderId: String
    /// The task group the message was added to
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventTimestamp: Date,
        eventType: ShippingTaskGroupMessage? = nil,
        message: TaskGroupMessage1,
        orderId: String,
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.message = message
        self.orderId = orderId
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(ShippingTaskGroupMessage.self, forKey: .eventType)
        self.message = try container.decode(TaskGroupMessage1.self, forKey: .message)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.message, forKey: .message)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    public enum ShippingTaskGroupMessage: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingTaskGroupMessage = "shipping.task_group.message"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case message
        case orderId = "order_id"
        case taskGroupId = "task_group_id"
    }
}