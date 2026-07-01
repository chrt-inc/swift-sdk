import Foundation

public struct OperationsCaseMessageWebhookPayload: Codable, Hashable, Sendable {
    /// The case the message was added to
    public let caseId: String
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: OperationsCaseMessage?
    /// The message that was added to the case
    public let message: CaseMessage1
    /// The order associated with the case
    public let orderId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        caseId: String,
        eventTimestamp: Date,
        eventType: OperationsCaseMessage? = nil,
        message: CaseMessage1,
        orderId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.caseId = caseId
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.message = message
        self.orderId = orderId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.caseId = try container.decode(String.self, forKey: .caseId)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(OperationsCaseMessage.self, forKey: .eventType)
        self.message = try container.decode(CaseMessage1.self, forKey: .message)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.caseId, forKey: .caseId)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.message, forKey: .message)
        try container.encode(self.orderId, forKey: .orderId)
    }

    public enum OperationsCaseMessage: String, Codable, Hashable, CaseIterable, Sendable {
        case operationsCaseMessage = "operations.case.message"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case caseId = "case_id"
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case message
        case orderId = "order_id"
    }
}