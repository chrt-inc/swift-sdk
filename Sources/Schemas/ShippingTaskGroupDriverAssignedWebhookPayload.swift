import Foundation

public struct ShippingTaskGroupDriverAssignedWebhookPayload: Codable, Hashable, Sendable {
    /// The driver that was assigned
    public let driverId: String
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: ShippingTaskGroupDriverAssigned?
    /// The order containing the task group the driver was assigned to
    public let orderId: String
    /// The specific task group the driver was assigned to
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        driverId: String,
        eventTimestamp: Date,
        eventType: ShippingTaskGroupDriverAssigned? = nil,
        orderId: String,
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.driverId = driverId
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.orderId = orderId
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.driverId = try container.decode(String.self, forKey: .driverId)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(ShippingTaskGroupDriverAssigned.self, forKey: .eventType)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.driverId, forKey: .driverId)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    public enum ShippingTaskGroupDriverAssigned: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingTaskGroupDriverAssigned = "shipping.task_group.driver_assigned"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case driverId = "driver_id"
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case orderId = "order_id"
        case taskGroupId = "task_group_id"
    }
}