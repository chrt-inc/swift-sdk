import Foundation

public struct TaskGroupWithTasks: Codable, Hashable, Sendable {
    public let taskGroup: TaskGroup1
    public let tasks: [Task1]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroup: TaskGroup1,
        tasks: [Task1],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroup = taskGroup
        self.tasks = tasks
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroup = try container.decode(TaskGroup1.self, forKey: .taskGroup)
        self.tasks = try container.decode([Task1].self, forKey: .tasks)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroup, forKey: .taskGroup)
        try container.encode(self.tasks, forKey: .tasks)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroup = "task_group"
        case tasks
    }
}