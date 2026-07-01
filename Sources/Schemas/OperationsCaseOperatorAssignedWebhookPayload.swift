import Foundation

public struct OperationsCaseOperatorAssignedWebhookPayload: Codable, Hashable, Sendable {
    /// The case that was assigned
    public let caseId: String
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: OperationsCaseOperatorAssigned?
    /// Operators assigned to the case
    public let operatorUserIds: [String]
    /// The order associated with the case
    public let orderId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        caseId: String,
        eventTimestamp: Date,
        eventType: OperationsCaseOperatorAssigned? = nil,
        operatorUserIds: [String],
        orderId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.caseId = caseId
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.operatorUserIds = operatorUserIds
        self.orderId = orderId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.caseId = try container.decode(String.self, forKey: .caseId)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(OperationsCaseOperatorAssigned.self, forKey: .eventType)
        self.operatorUserIds = try container.decode([String].self, forKey: .operatorUserIds)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.caseId, forKey: .caseId)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.operatorUserIds, forKey: .operatorUserIds)
        try container.encode(self.orderId, forKey: .orderId)
    }

    public enum OperationsCaseOperatorAssigned: String, Codable, Hashable, CaseIterable, Sendable {
        case operationsCaseOperatorAssigned = "operations.case.operator_assigned"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case caseId = "case_id"
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case operatorUserIds = "operator_user_ids"
        case orderId = "order_id"
    }
}