import Foundation

public struct TaskListToApplyToCase1: Codable, Hashable, Sendable {
    public let initialDeadlineTimestamp: Date?
    public let taskListId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        initialDeadlineTimestamp: Date? = nil,
        taskListId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.initialDeadlineTimestamp = initialDeadlineTimestamp
        self.taskListId = taskListId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.initialDeadlineTimestamp = try container.decodeIfPresent(Date.self, forKey: .initialDeadlineTimestamp)
        self.taskListId = try container.decode(String.self, forKey: .taskListId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.initialDeadlineTimestamp, forKey: .initialDeadlineTimestamp)
        try container.encode(self.taskListId, forKey: .taskListId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case initialDeadlineTimestamp = "initial_deadline_timestamp"
        case taskListId = "task_list_id"
    }
}