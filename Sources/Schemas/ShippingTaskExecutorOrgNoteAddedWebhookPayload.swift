import Foundation

public struct ShippingTaskExecutorOrgNoteAddedWebhookPayload: Codable, Hashable, Sendable {
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: ShippingTaskExecutorOrgNoteAdded?
    /// The executor organization note that was added
    public let note: TaskExecutorOrgNote1
    /// The order containing the task
    public let orderId: String
    /// The task group containing the task
    public let taskGroupId: String
    /// The task the note was added to
    public let taskId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventTimestamp: Date,
        eventType: ShippingTaskExecutorOrgNoteAdded? = nil,
        note: TaskExecutorOrgNote1,
        orderId: String,
        taskGroupId: String,
        taskId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.note = note
        self.orderId = orderId
        self.taskGroupId = taskGroupId
        self.taskId = taskId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(ShippingTaskExecutorOrgNoteAdded.self, forKey: .eventType)
        self.note = try container.decode(TaskExecutorOrgNote1.self, forKey: .note)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.taskId = try container.decode(String.self, forKey: .taskId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.note, forKey: .note)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.taskId, forKey: .taskId)
    }

    public enum ShippingTaskExecutorOrgNoteAdded: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingTaskExecutorOrgNoteAdded = "shipping.task.executor_org_note_added"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case note
        case orderId = "order_id"
        case taskGroupId = "task_group_id"
        case taskId = "task_id"
    }
}