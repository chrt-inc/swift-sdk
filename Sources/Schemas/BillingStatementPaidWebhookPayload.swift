import Foundation

public struct BillingStatementPaidWebhookPayload: Codable, Hashable, Sendable {
    public let eventType: BillingStatementPaid?
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    /// The statement that was paid
    public let statement: Statement1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventType: BillingStatementPaid? = nil,
        eventTimestamp: Date,
        statement: Statement1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventType = eventType
        self.eventTimestamp = eventTimestamp
        self.statement = statement
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventType = try container.decodeIfPresent(BillingStatementPaid.self, forKey: .eventType)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.statement = try container.decode(Statement1.self, forKey: .statement)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encode(self.statement, forKey: .statement)
    }

    public enum BillingStatementPaid: String, Codable, Hashable, CaseIterable, Sendable {
        case billingStatementPaid = "billing.statement.paid"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType = "event_type"
        case eventTimestamp = "event_timestamp"
        case statement
    }
}