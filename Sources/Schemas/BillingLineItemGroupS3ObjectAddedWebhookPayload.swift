import Foundation

public struct BillingLineItemGroupS3ObjectAddedWebhookPayload: Codable, Hashable, Sendable {
    public let eventType: BillingLineItemGroupFileAdded?
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    /// The line item group the file was added to
    public let lineItemGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventType: BillingLineItemGroupFileAdded? = nil,
        eventTimestamp: Date,
        lineItemGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventType = eventType
        self.eventTimestamp = eventTimestamp
        self.lineItemGroupId = lineItemGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventType = try container.decodeIfPresent(BillingLineItemGroupFileAdded.self, forKey: .eventType)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.lineItemGroupId = try container.decode(String.self, forKey: .lineItemGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encode(self.lineItemGroupId, forKey: .lineItemGroupId)
    }

    public enum BillingLineItemGroupFileAdded: String, Codable, Hashable, CaseIterable, Sendable {
        case billingLineItemGroupFileAdded = "billing.line_item_group.file_added"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType = "event_type"
        case eventTimestamp = "event_timestamp"
        case lineItemGroupId = "line_item_group_id"
    }
}