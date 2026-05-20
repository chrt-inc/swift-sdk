import Foundation

public struct OperationsCaseMessageWebhookPayload: Codable, Hashable, Sendable {
    public let eventType: OperationsCaseMessage?
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    /// The case the message was added to
    public let caseId: String
    /// The order associated with the case
    public let orderId: String
    /// The message that was added to the case
    public let message: CaseMessage1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventType: OperationsCaseMessage? = nil,
        eventTimestamp: Date,
        caseId: String,
        orderId: String,
        message: CaseMessage1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventType = eventType
        self.eventTimestamp = eventTimestamp
        self.caseId = caseId
        self.orderId = orderId
        self.message = message
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventType = try container.decodeIfPresent(OperationsCaseMessage.self, forKey: .eventType)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.caseId = try container.decode(String.self, forKey: .caseId)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.message = try container.decode(CaseMessage1.self, forKey: .message)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encode(self.caseId, forKey: .caseId)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.message, forKey: .message)
    }

    public enum OperationsCaseMessage: String, Codable, Hashable, CaseIterable, Sendable {
        case operationsCaseMessage = "operations.case.message"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType = "event_type"
        case eventTimestamp = "event_timestamp"
        case caseId = "case_id"
        case orderId = "order_id"
        case message
    }
}