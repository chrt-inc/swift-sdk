import Foundation

public struct StatementExpandedListItem: Codable, Hashable, Sendable {
    public let lineItemGroups: [LineItemGroup1]
    public let statement: Statement1
    public let taskGroups: [TaskGroup1]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        lineItemGroups: [LineItemGroup1],
        statement: Statement1,
        taskGroups: [TaskGroup1],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.lineItemGroups = lineItemGroups
        self.statement = statement
        self.taskGroups = taskGroups
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.lineItemGroups = try container.decode([LineItemGroup1].self, forKey: .lineItemGroups)
        self.statement = try container.decode(Statement1.self, forKey: .statement)
        self.taskGroups = try container.decode([TaskGroup1].self, forKey: .taskGroups)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.lineItemGroups, forKey: .lineItemGroups)
        try container.encode(self.statement, forKey: .statement)
        try container.encode(self.taskGroups, forKey: .taskGroups)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case lineItemGroups = "line_item_groups"
        case statement
        case taskGroups = "task_groups"
    }
}