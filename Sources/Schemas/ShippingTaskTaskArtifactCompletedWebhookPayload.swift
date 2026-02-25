import Foundation

public struct ShippingTaskTaskArtifactCompletedWebhookPayload: Codable, Hashable, Sendable {
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: ShippingTaskTaskArtifactCompleted?
    /// The order containing the task
    public let orderId: String
    /// The task artifact that was completed
    public let taskArtifactId: String
    /// The type of task artifact (e.g., IMAGE, SIGNATURE)
    public let taskArtifactType: TaskArtifactTypeEnum1
    /// The task group containing the task
    public let taskGroupId: String
    /// The task the artifact belongs to
    public let taskId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventTimestamp: Date,
        eventType: ShippingTaskTaskArtifactCompleted? = nil,
        orderId: String,
        taskArtifactId: String,
        taskArtifactType: TaskArtifactTypeEnum1,
        taskGroupId: String,
        taskId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.orderId = orderId
        self.taskArtifactId = taskArtifactId
        self.taskArtifactType = taskArtifactType
        self.taskGroupId = taskGroupId
        self.taskId = taskId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(ShippingTaskTaskArtifactCompleted.self, forKey: .eventType)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskArtifactId = try container.decode(String.self, forKey: .taskArtifactId)
        self.taskArtifactType = try container.decode(TaskArtifactTypeEnum1.self, forKey: .taskArtifactType)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.taskId = try container.decode(String.self, forKey: .taskId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.taskArtifactId, forKey: .taskArtifactId)
        try container.encode(self.taskArtifactType, forKey: .taskArtifactType)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.taskId, forKey: .taskId)
    }

    public enum ShippingTaskTaskArtifactCompleted: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingTaskTaskArtifactCompleted = "shipping.task.task_artifact_completed"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case orderId = "order_id"
        case taskArtifactId = "task_artifact_id"
        case taskArtifactType = "task_artifact_type"
        case taskGroupId = "task_group_id"
        case taskId = "task_id"
    }
}