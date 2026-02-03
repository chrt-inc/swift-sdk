import Foundation

public struct BillingLineItemGroupS3ObjectAddedWebhookPayload: Codable, Hashable, Sendable {
    public let eventType: BillingLineItemGroupS3ObjectAdded?
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    /// Metadata for the S3 object that was added
    public let s3ObjectMetadata: LineItemGroupS3ObjectMetadata1
    /// The line item group the S3 object was added to
    public let lineItemGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventType: BillingLineItemGroupS3ObjectAdded? = nil,
        eventTimestamp: Date,
        s3ObjectMetadata: LineItemGroupS3ObjectMetadata1,
        lineItemGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventType = eventType
        self.eventTimestamp = eventTimestamp
        self.s3ObjectMetadata = s3ObjectMetadata
        self.lineItemGroupId = lineItemGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventType = try container.decodeIfPresent(BillingLineItemGroupS3ObjectAdded.self, forKey: .eventType)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.s3ObjectMetadata = try container.decode(LineItemGroupS3ObjectMetadata1.self, forKey: .s3ObjectMetadata)
        self.lineItemGroupId = try container.decode(String.self, forKey: .lineItemGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encode(self.s3ObjectMetadata, forKey: .s3ObjectMetadata)
        try container.encode(self.lineItemGroupId, forKey: .lineItemGroupId)
    }

    public enum BillingLineItemGroupS3ObjectAdded: String, Codable, Hashable, CaseIterable, Sendable {
        case billingLineItemGroupS3ObjectAdded = "billing.line_item_group.s3_object_added"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType = "event_type"
        case eventTimestamp = "event_timestamp"
        case s3ObjectMetadata = "s3_object_metadata"
        case lineItemGroupId = "line_item_group_id"
    }
}