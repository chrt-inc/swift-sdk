import Foundation

public struct OperationsOrderOperatorAssignedWebhookPayload: Codable, Hashable, Sendable {
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: OperationsOrderOperatorAssigned?
    /// Operators assigned to the order for this org
    public let operatorUserIds: [String]
    /// The order operators were assigned to
    public let orderId: String
    /// The org whose assignees were updated (coordinator or executor)
    public let orgId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventTimestamp: Date,
        eventType: OperationsOrderOperatorAssigned? = nil,
        operatorUserIds: [String],
        orderId: String,
        orgId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.operatorUserIds = operatorUserIds
        self.orderId = orderId
        self.orgId = orgId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(OperationsOrderOperatorAssigned.self, forKey: .eventType)
        self.operatorUserIds = try container.decode([String].self, forKey: .operatorUserIds)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.operatorUserIds, forKey: .operatorUserIds)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orgId, forKey: .orgId)
    }

    public enum OperationsOrderOperatorAssigned: String, Codable, Hashable, CaseIterable, Sendable {
        case operationsOrderOperatorAssigned = "operations.order.operator_assigned"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case operatorUserIds = "operator_user_ids"
        case orderId = "order_id"
        case orgId = "org_id"
    }
}