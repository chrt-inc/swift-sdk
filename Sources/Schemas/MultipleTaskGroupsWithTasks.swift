import Foundation

public struct MultipleTaskGroupsWithTasks: Codable, Hashable, Sendable {
    public let taskGroups: [TaskGroupWithTasks]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroups: [TaskGroupWithTasks],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroups = taskGroups
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroups = try container.decode([TaskGroupWithTasks].self, forKey: .taskGroups)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroups, forKey: .taskGroups)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroups = "task_groups"
    }
}