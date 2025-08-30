import Foundation

/// Response containing list of task groups with expanded data
public struct TaskGroupsExpandedRes: Codable, Hashable, Sendable {
    public let taskGroupsExpanded: [TaskGroupExpanded]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroupsExpanded: [TaskGroupExpanded],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroupsExpanded = taskGroupsExpanded
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroupsExpanded = try container.decode([TaskGroupExpanded].self, forKey: .taskGroupsExpanded)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroupsExpanded, forKey: .taskGroupsExpanded)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroupsExpanded = "task_groups_expanded"
    }
}