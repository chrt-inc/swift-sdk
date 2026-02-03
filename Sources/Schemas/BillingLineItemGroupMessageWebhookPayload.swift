import Foundation

public struct BillingLineItemGroupMessageWebhookPayload: Codable, Hashable, Sendable {
    public let eventType: BillingLineItemGroupMessage?
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    /// The line item group the message was added to
    public let lineItemGroupId: String
    /// The message that was added to the line item group
    public let message: LineItemGroupMessage1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventType: BillingLineItemGroupMessage? = nil,
        eventTimestamp: Date,
        lineItemGroupId: String,
        message: LineItemGroupMessage1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventType = eventType
        self.eventTimestamp = eventTimestamp
        self.lineItemGroupId = lineItemGroupId
        self.message = message
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventType = try container.decodeIfPresent(BillingLineItemGroupMessage.self, forKey: .eventType)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.lineItemGroupId = try container.decode(String.self, forKey: .lineItemGroupId)
        self.message = try container.decode(LineItemGroupMessage1.self, forKey: .message)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encode(self.lineItemGroupId, forKey: .lineItemGroupId)
        try container.encode(self.message, forKey: .message)
    }

    public enum BillingLineItemGroupMessage: String, Codable, Hashable, CaseIterable, Sendable {
        case billingLineItemGroupMessage = "billing.line_item_group.message"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType = "event_type"
        case eventTimestamp = "event_timestamp"
        case lineItemGroupId = "line_item_group_id"
        case message
    }
}