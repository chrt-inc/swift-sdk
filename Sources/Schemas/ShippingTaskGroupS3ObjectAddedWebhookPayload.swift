import Foundation

public struct ShippingTaskGroupS3ObjectAddedWebhookPayload: Codable, Hashable, Sendable {
    public let eventType: ShippingTaskGroupS3ObjectAdded?
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    /// The order containing the task group
    public let orderId: String
    /// The task group the S3 object was added to
    public let taskGroupId: String
    /// Metadata for the S3 object that was added
    public let s3ObjectMetadata: TaskGroupS3ObjectMetadata1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventType: ShippingTaskGroupS3ObjectAdded? = nil,
        eventTimestamp: Date,
        orderId: String,
        taskGroupId: String,
        s3ObjectMetadata: TaskGroupS3ObjectMetadata1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventType = eventType
        self.eventTimestamp = eventTimestamp
        self.orderId = orderId
        self.taskGroupId = taskGroupId
        self.s3ObjectMetadata = s3ObjectMetadata
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventType = try container.decodeIfPresent(ShippingTaskGroupS3ObjectAdded.self, forKey: .eventType)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.s3ObjectMetadata = try container.decode(TaskGroupS3ObjectMetadata1.self, forKey: .s3ObjectMetadata)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.s3ObjectMetadata, forKey: .s3ObjectMetadata)
    }

    public enum ShippingTaskGroupS3ObjectAdded: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingTaskGroupS3ObjectAdded = "shipping.task_group.s3_object_added"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType = "event_type"
        case eventTimestamp = "event_timestamp"
        case orderId = "order_id"
        case taskGroupId = "task_group_id"
        case s3ObjectMetadata = "s3_object_metadata"
    }
}