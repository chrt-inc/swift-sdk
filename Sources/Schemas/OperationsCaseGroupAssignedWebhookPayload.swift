import Foundation

public struct OperationsCaseGroupAssignedWebhookPayload: Codable, Hashable, Sendable {
    public let eventType: OperationsCaseGroupAssigned?
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    /// The case that was assigned to a group
    public let caseId: String
    /// The order associated with the case
    public let orderId: String
    /// The department the case was assigned to
    public let departmentId: String
    /// Operators in the assigned department
    public let operatorUserIds: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventType: OperationsCaseGroupAssigned? = nil,
        eventTimestamp: Date,
        caseId: String,
        orderId: String,
        departmentId: String,
        operatorUserIds: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventType = eventType
        self.eventTimestamp = eventTimestamp
        self.caseId = caseId
        self.orderId = orderId
        self.departmentId = departmentId
        self.operatorUserIds = operatorUserIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventType = try container.decodeIfPresent(OperationsCaseGroupAssigned.self, forKey: .eventType)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.caseId = try container.decode(String.self, forKey: .caseId)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.departmentId = try container.decode(String.self, forKey: .departmentId)
        self.operatorUserIds = try container.decode([String].self, forKey: .operatorUserIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encode(self.caseId, forKey: .caseId)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.departmentId, forKey: .departmentId)
        try container.encode(self.operatorUserIds, forKey: .operatorUserIds)
    }

    public enum OperationsCaseGroupAssigned: String, Codable, Hashable, CaseIterable, Sendable {
        case operationsCaseGroupAssigned = "operations.case.group_assigned"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType = "event_type"
        case eventTimestamp = "event_timestamp"
        case caseId = "case_id"
        case orderId = "order_id"
        case departmentId = "department_id"
        case operatorUserIds = "operator_user_ids"
    }
}