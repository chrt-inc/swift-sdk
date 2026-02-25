import Foundation

public struct ShippingTaskGroupCourierOrgAssignedWebhookPayload: Codable, Hashable, Sendable {
    /// The courier organization that was assigned
    public let courierOrgId: String
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: ShippingTaskGroupCourierOrgAssigned?
    /// The order containing the task group
    public let orderId: String
    /// The task group the courier org was assigned to
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        courierOrgId: String,
        eventTimestamp: Date,
        eventType: ShippingTaskGroupCourierOrgAssigned? = nil,
        orderId: String,
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.courierOrgId = courierOrgId
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.orderId = orderId
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.courierOrgId = try container.decode(String.self, forKey: .courierOrgId)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(ShippingTaskGroupCourierOrgAssigned.self, forKey: .eventType)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.courierOrgId, forKey: .courierOrgId)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    public enum ShippingTaskGroupCourierOrgAssigned: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingTaskGroupCourierOrgAssigned = "shipping.task_group.courier_org_assigned"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case courierOrgId = "courier_org_id"
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case orderId = "order_id"
        case taskGroupId = "task_group_id"
    }
}