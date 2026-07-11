import Foundation

public struct OperationsOrderDepartmentAssignedWebhookPayload: Codable, Hashable, Sendable {
    /// The department the order was assigned to
    public let departmentId: String
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: OperationsOrderDepartmentAssigned?
    /// Operators in the assigned department
    public let operatorUserIds: [String]
    /// The order that was assigned to a department
    public let orderId: String
    /// The org whose department was set (coordinator or executor)
    public let orgId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        departmentId: String,
        eventTimestamp: Date,
        eventType: OperationsOrderDepartmentAssigned? = nil,
        operatorUserIds: [String],
        orderId: String,
        orgId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.departmentId = departmentId
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.operatorUserIds = operatorUserIds
        self.orderId = orderId
        self.orgId = orgId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.departmentId = try container.decode(String.self, forKey: .departmentId)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(OperationsOrderDepartmentAssigned.self, forKey: .eventType)
        self.operatorUserIds = try container.decode([String].self, forKey: .operatorUserIds)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.departmentId, forKey: .departmentId)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.operatorUserIds, forKey: .operatorUserIds)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orgId, forKey: .orgId)
    }

    public enum OperationsOrderDepartmentAssigned: String, Codable, Hashable, CaseIterable, Sendable {
        case operationsOrderDepartmentAssigned = "operations.order.department_assigned"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case departmentId = "department_id"
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case operatorUserIds = "operator_user_ids"
        case orderId = "order_id"
        case orgId = "org_id"
    }
}