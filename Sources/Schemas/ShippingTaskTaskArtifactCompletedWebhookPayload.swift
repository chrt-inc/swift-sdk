import Foundation

public struct ShippingTaskTaskArtifactCompletedWebhookPayload: Codable, Hashable, Sendable {
    public let eventType: ShippingTaskTaskArtifactCompleted?
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    /// The order containing the task
    public let orderId: String
    /// The task group containing the task
    public let taskGroupId: String
    /// The task the artifact belongs to
    public let taskId: String
    /// The task artifact that was completed
    public let taskArtifactId: String
    /// The type of task artifact (e.g., IMAGE, SIGNATURE)
    public let taskArtifactType: TaskArtifactTypeEnum1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventType: ShippingTaskTaskArtifactCompleted? = nil,
        eventTimestamp: Date,
        orderId: String,
        taskGroupId: String,
        taskId: String,
        taskArtifactId: String,
        taskArtifactType: TaskArtifactTypeEnum1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventType = eventType
        self.eventTimestamp = eventTimestamp
        self.orderId = orderId
        self.taskGroupId = taskGroupId
        self.taskId = taskId
        self.taskArtifactId = taskArtifactId
        self.taskArtifactType = taskArtifactType
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventType = try container.decodeIfPresent(ShippingTaskTaskArtifactCompleted.self, forKey: .eventType)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.taskId = try container.decode(String.self, forKey: .taskId)
        self.taskArtifactId = try container.decode(String.self, forKey: .taskArtifactId)
        self.taskArtifactType = try container.decode(TaskArtifactTypeEnum1.self, forKey: .taskArtifactType)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.taskId, forKey: .taskId)
        try container.encode(self.taskArtifactId, forKey: .taskArtifactId)
        try container.encode(self.taskArtifactType, forKey: .taskArtifactType)
    }

    public enum ShippingTaskTaskArtifactCompleted: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingTaskTaskArtifactCompleted = "shipping.task.task_artifact_completed"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType = "event_type"
        case eventTimestamp = "event_timestamp"
        case orderId = "order_id"
        case taskGroupId = "task_group_id"
        case taskId = "task_id"
        case taskArtifactId = "task_artifact_id"
        case taskArtifactType = "task_artifact_type"
    }
}