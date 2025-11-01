import Foundation

/// Response for courier administrator list endpoint.
public struct TaskGroupsExpandedForCourierAdministratorRes: Codable, Hashable, Sendable {
    public let taskGroupsExpanded: [TaskGroupExpandedForCourierAdministrator]
    public let totalCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroupsExpanded: [TaskGroupExpandedForCourierAdministrator],
        totalCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroupsExpanded = taskGroupsExpanded
        self.totalCount = totalCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroupsExpanded = try container.decode([TaskGroupExpandedForCourierAdministrator].self, forKey: .taskGroupsExpanded)
        self.totalCount = try container.decode(Int.self, forKey: .totalCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroupsExpanded, forKey: .taskGroupsExpanded)
        try container.encode(self.totalCount, forKey: .totalCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroupsExpanded = "task_groups_expanded"
        case totalCount = "total_count"
    }
}