import Foundation

public struct BillingLineItemS3ObjectAddedWebhookPayload: Codable, Hashable, Sendable {
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: BillingLineItemFileAdded?
    /// The parent line item group for the line item
    public let lineItemGroupId: String
    /// The line item the file was added to
    public let lineItemId: String
    /// The S3 object metadata document that was added to the line item
    public let lineItemS3ObjectMetadataId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventTimestamp: Date,
        eventType: BillingLineItemFileAdded? = nil,
        lineItemGroupId: String,
        lineItemId: String,
        lineItemS3ObjectMetadataId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.lineItemGroupId = lineItemGroupId
        self.lineItemId = lineItemId
        self.lineItemS3ObjectMetadataId = lineItemS3ObjectMetadataId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(BillingLineItemFileAdded.self, forKey: .eventType)
        self.lineItemGroupId = try container.decode(String.self, forKey: .lineItemGroupId)
        self.lineItemId = try container.decode(String.self, forKey: .lineItemId)
        self.lineItemS3ObjectMetadataId = try container.decode(String.self, forKey: .lineItemS3ObjectMetadataId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.lineItemGroupId, forKey: .lineItemGroupId)
        try container.encode(self.lineItemId, forKey: .lineItemId)
        try container.encode(self.lineItemS3ObjectMetadataId, forKey: .lineItemS3ObjectMetadataId)
    }

    public enum BillingLineItemFileAdded: String, Codable, Hashable, CaseIterable, Sendable {
        case billingLineItemFileAdded = "billing.line_item.file_added"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case lineItemGroupId = "line_item_group_id"
        case lineItemId = "line_item_id"
        case lineItemS3ObjectMetadataId = "line_item_s3_object_metadata_id"
    }
}