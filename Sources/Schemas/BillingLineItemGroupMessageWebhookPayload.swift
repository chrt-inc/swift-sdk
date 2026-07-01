import Foundation

public struct BillingLineItemGroupMessageWebhookPayload: Codable, Hashable, Sendable {
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: BillingLineItemGroupMessage?
    /// The line item group the message was added to
    public let lineItemGroupId: String
    /// The message that was added to the line item group
    public let message: LineItemGroupMessage1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventTimestamp: Date,
        eventType: BillingLineItemGroupMessage? = nil,
        lineItemGroupId: String,
        message: LineItemGroupMessage1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.lineItemGroupId = lineItemGroupId
        self.message = message
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(BillingLineItemGroupMessage.self, forKey: .eventType)
        self.lineItemGroupId = try container.decode(String.self, forKey: .lineItemGroupId)
        self.message = try container.decode(LineItemGroupMessage1.self, forKey: .message)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.lineItemGroupId, forKey: .lineItemGroupId)
        try container.encode(self.message, forKey: .message)
    }

    public enum BillingLineItemGroupMessage: String, Codable, Hashable, CaseIterable, Sendable {
        case billingLineItemGroupMessage = "billing.line_item_group.message"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case lineItemGroupId = "line_item_group_id"
        case message
    }
}