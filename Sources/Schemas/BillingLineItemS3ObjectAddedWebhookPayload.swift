import Foundation

public struct BillingLineItemS3ObjectAddedWebhookPayload: Codable, Hashable, Sendable {
    public let eventType: BillingLineItemFileAdded?
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    /// The line item the file was added to
    public let lineItemId: String
    /// The parent line item group for the line item
    public let lineItemGroupId: String
    /// The S3 object metadata document that was added to the line item
    public let lineItemS3ObjectMetadataId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventType: BillingLineItemFileAdded? = nil,
        eventTimestamp: Date,
        lineItemId: String,
        lineItemGroupId: String,
        lineItemS3ObjectMetadataId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventType = eventType
        self.eventTimestamp = eventTimestamp
        self.lineItemId = lineItemId
        self.lineItemGroupId = lineItemGroupId
        self.lineItemS3ObjectMetadataId = lineItemS3ObjectMetadataId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventType = try container.decodeIfPresent(BillingLineItemFileAdded.self, forKey: .eventType)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.lineItemId = try container.decode(String.self, forKey: .lineItemId)
        self.lineItemGroupId = try container.decode(String.self, forKey: .lineItemGroupId)
        self.lineItemS3ObjectMetadataId = try container.decode(String.self, forKey: .lineItemS3ObjectMetadataId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encode(self.lineItemId, forKey: .lineItemId)
        try container.encode(self.lineItemGroupId, forKey: .lineItemGroupId)
        try container.encode(self.lineItemS3ObjectMetadataId, forKey: .lineItemS3ObjectMetadataId)
    }

    public enum BillingLineItemFileAdded: String, Codable, Hashable, CaseIterable, Sendable {
        case billingLineItemFileAdded = "billing.line_item.file_added"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType = "event_type"
        case eventTimestamp = "event_timestamp"
        case lineItemId = "line_item_id"
        case lineItemGroupId = "line_item_group_id"
        case lineItemS3ObjectMetadataId = "line_item_s3_object_metadata_id"
    }
}