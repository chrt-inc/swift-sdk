import Foundation

public struct ShippingTaskGroupDriverAssignedWebhookPayload: Codable, Hashable, Sendable {
    public let eventType: ShippingTaskGroupDriverAssigned?
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    /// The order containing the task group the driver was assigned to
    public let orderId: String
    /// The specific task group the driver was assigned to
    public let taskGroupId: String
    /// The driver that was assigned
    public let driver: Driver1Input
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventType: ShippingTaskGroupDriverAssigned? = nil,
        eventTimestamp: Date,
        orderId: String,
        taskGroupId: String,
        driver: Driver1Input,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventType = eventType
        self.eventTimestamp = eventTimestamp
        self.orderId = orderId
        self.taskGroupId = taskGroupId
        self.driver = driver
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventType = try container.decodeIfPresent(ShippingTaskGroupDriverAssigned.self, forKey: .eventType)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.driver = try container.decode(Driver1Input.self, forKey: .driver)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.driver, forKey: .driver)
    }

    public enum ShippingTaskGroupDriverAssigned: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingTaskGroupDriverAssigned = "shipping.task_group.driver_assigned"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType = "event_type"
        case eventTimestamp = "event_timestamp"
        case orderId = "order_id"
        case taskGroupId = "task_group_id"
        case driver
    }
}