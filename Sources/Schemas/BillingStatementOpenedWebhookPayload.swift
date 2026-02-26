import Foundation

public struct BillingStatementOpenedWebhookPayload: Codable, Hashable, Sendable {
    public let eventType: BillingStatementOpened?
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    /// The statement that was opened
    public let statementId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventType: BillingStatementOpened? = nil,
        eventTimestamp: Date,
        statementId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventType = eventType
        self.eventTimestamp = eventTimestamp
        self.statementId = statementId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventType = try container.decodeIfPresent(BillingStatementOpened.self, forKey: .eventType)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.statementId = try container.decode(String.self, forKey: .statementId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encode(self.statementId, forKey: .statementId)
    }

    public enum BillingStatementOpened: String, Codable, Hashable, CaseIterable, Sendable {
        case billingStatementOpened = "billing.statement.opened"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType = "event_type"
        case eventTimestamp = "event_timestamp"
        case statementId = "statement_id"
    }
}