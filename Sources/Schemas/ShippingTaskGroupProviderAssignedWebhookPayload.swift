import Foundation

public struct ShippingTaskGroupProviderAssignedWebhookPayload: Codable, Hashable, Sendable {
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: ShippingTaskGroupProviderAssigned?
    /// The order containing the task group
    public let orderId: String
    /// The provider organization that was assigned
    public let providerOrgId: String
    /// The task group the provider was assigned to
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventTimestamp: Date,
        eventType: ShippingTaskGroupProviderAssigned? = nil,
        orderId: String,
        providerOrgId: String,
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.orderId = orderId
        self.providerOrgId = providerOrgId
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(ShippingTaskGroupProviderAssigned.self, forKey: .eventType)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.providerOrgId = try container.decode(String.self, forKey: .providerOrgId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.providerOrgId, forKey: .providerOrgId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    public enum ShippingTaskGroupProviderAssigned: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingTaskGroupProviderAssigned = "shipping.task_group.provider_assigned"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case orderId = "order_id"
        case providerOrgId = "provider_org_id"
        case taskGroupId = "task_group_id"
    }
}