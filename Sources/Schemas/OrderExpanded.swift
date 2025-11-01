import Foundation

/// Single order with optional expanded data
public struct OrderExpanded: Codable, Hashable, Sendable {
    public let order: Order1
    public let taskGroupsExpanded: [TaskGroupExpanded]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        order: Order1,
        taskGroupsExpanded: [TaskGroupExpanded]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.order = order
        self.taskGroupsExpanded = taskGroupsExpanded
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.order = try container.decode(Order1.self, forKey: .order)
        self.taskGroupsExpanded = try container.decodeIfPresent([TaskGroupExpanded].self, forKey: .taskGroupsExpanded)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.order, forKey: .order)
        try container.encodeIfPresent(self.taskGroupsExpanded, forKey: .taskGroupsExpanded)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case order
        case taskGroupsExpanded = "task_groups_expanded"
    }
}