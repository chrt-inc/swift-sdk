import Foundation

public struct ShippingTaskGroupProviderAssignedWebhookPayload: Codable, Hashable, Sendable {
    public let eventType: ShippingTaskGroupProviderAssigned?
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    /// The order containing the task group
    public let orderId: String
    /// The task group the provider was assigned to
    public let taskGroupId: String
    /// The provider organization that was assigned
    public let providerOrgId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventType: ShippingTaskGroupProviderAssigned? = nil,
        eventTimestamp: Date,
        orderId: String,
        taskGroupId: String,
        providerOrgId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventType = eventType
        self.eventTimestamp = eventTimestamp
        self.orderId = orderId
        self.taskGroupId = taskGroupId
        self.providerOrgId = providerOrgId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventType = try container.decodeIfPresent(ShippingTaskGroupProviderAssigned.self, forKey: .eventType)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.providerOrgId = try container.decode(String.self, forKey: .providerOrgId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.providerOrgId, forKey: .providerOrgId)
    }

    public enum ShippingTaskGroupProviderAssigned: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingTaskGroupProviderAssigned = "shipping.task_group.provider_assigned"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType = "event_type"
        case eventTimestamp = "event_timestamp"
        case orderId = "order_id"
        case taskGroupId = "task_group_id"
        case providerOrgId = "provider_org_id"
    }
}