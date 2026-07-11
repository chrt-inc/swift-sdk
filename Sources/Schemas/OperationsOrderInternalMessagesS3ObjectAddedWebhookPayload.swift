import Foundation

public struct OperationsOrderInternalMessagesS3ObjectAddedWebhookPayload: Codable, Hashable, Sendable {
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: OperationsOrderInternalMessagesFileAdded?
    /// The order associated with the notes
    public let orderId: String
    /// The S3 object metadata document that was added
    public let orderInternalMessageS3ObjectMetadataId: String
    /// The order internal messages document the file was added to
    public let orderInternalMessagesId: String
    /// The org that owns these notes
    public let orgId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventTimestamp: Date,
        eventType: OperationsOrderInternalMessagesFileAdded? = nil,
        orderId: String,
        orderInternalMessageS3ObjectMetadataId: String,
        orderInternalMessagesId: String,
        orgId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.orderId = orderId
        self.orderInternalMessageS3ObjectMetadataId = orderInternalMessageS3ObjectMetadataId
        self.orderInternalMessagesId = orderInternalMessagesId
        self.orgId = orgId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(OperationsOrderInternalMessagesFileAdded.self, forKey: .eventType)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderInternalMessageS3ObjectMetadataId = try container.decode(String.self, forKey: .orderInternalMessageS3ObjectMetadataId)
        self.orderInternalMessagesId = try container.decode(String.self, forKey: .orderInternalMessagesId)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderInternalMessageS3ObjectMetadataId, forKey: .orderInternalMessageS3ObjectMetadataId)
        try container.encode(self.orderInternalMessagesId, forKey: .orderInternalMessagesId)
        try container.encode(self.orgId, forKey: .orgId)
    }

    public enum OperationsOrderInternalMessagesFileAdded: String, Codable, Hashable, CaseIterable, Sendable {
        case operationsOrderInternalMessagesFileAdded = "operations.order_internal_messages.file_added"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case orderId = "order_id"
        case orderInternalMessageS3ObjectMetadataId = "order_internal_message_s3_object_metadata_id"
        case orderInternalMessagesId = "order_internal_messages_id"
        case orgId = "org_id"
    }
}