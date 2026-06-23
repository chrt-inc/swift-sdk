import Foundation

public struct OperationsTaskDeadlineUpdate1: Codable, Hashable, Sendable {
    public let taskId: String
    public let deadlineTimestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskId: String,
        deadlineTimestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskId = taskId
        self.deadlineTimestamp = deadlineTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskId = try container.decode(String.self, forKey: .taskId)
        self.deadlineTimestamp = try container.decode(Date.self, forKey: .deadlineTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskId, forKey: .taskId)
        try container.encode(self.deadlineTimestamp, forKey: .deadlineTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskId = "task_id"
        case deadlineTimestamp = "deadline_timestamp"
    }
}