import Foundation

public struct OperationsTaskDeadlineUpdate1: Codable, Hashable, Sendable {
    public let deadlineTimestamp: Date
    public let taskId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        deadlineTimestamp: Date,
        taskId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.deadlineTimestamp = deadlineTimestamp
        self.taskId = taskId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.deadlineTimestamp = try container.decode(Date.self, forKey: .deadlineTimestamp)
        self.taskId = try container.decode(String.self, forKey: .taskId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.deadlineTimestamp, forKey: .deadlineTimestamp)
        try container.encode(self.taskId, forKey: .taskId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case deadlineTimestamp = "deadline_timestamp"
        case taskId = "task_id"
    }
}