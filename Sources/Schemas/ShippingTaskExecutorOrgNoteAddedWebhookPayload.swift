import Foundation

public struct ShippingTaskExecutorOrgNoteAddedWebhookPayload: Codable, Hashable, Sendable {
    public let eventType: ShippingTaskExecutorOrgNoteAdded?
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    /// The order containing the task
    public let orderId: String
    /// The task group containing the task
    public let taskGroupId: String
    /// The task the note was added to
    public let taskId: String
    /// The executor organization note that was added
    public let note: TaskExecutorOrgNote1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventType: ShippingTaskExecutorOrgNoteAdded? = nil,
        eventTimestamp: Date,
        orderId: String,
        taskGroupId: String,
        taskId: String,
        note: TaskExecutorOrgNote1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventType = eventType
        self.eventTimestamp = eventTimestamp
        self.orderId = orderId
        self.taskGroupId = taskGroupId
        self.taskId = taskId
        self.note = note
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventType = try container.decodeIfPresent(ShippingTaskExecutorOrgNoteAdded.self, forKey: .eventType)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.taskId = try container.decode(String.self, forKey: .taskId)
        self.note = try container.decode(TaskExecutorOrgNote1.self, forKey: .note)
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
        try container.encode(self.note, forKey: .note)
    }

    public enum ShippingTaskExecutorOrgNoteAdded: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingTaskExecutorOrgNoteAdded = "shipping.task.executor_org_note_added"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType = "event_type"
        case eventTimestamp = "event_timestamp"
        case orderId = "order_id"
        case taskGroupId = "task_group_id"
        case taskId = "task_id"
        case note
    }
}