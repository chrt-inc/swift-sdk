import Foundation

public struct GetOrderFullRes: Codable, Hashable, Sendable {
    public let order: Order1
    public let taskGroups: [TaskGroup1]
    public let tasks: [Task1]
    public let milestones: [Milestone1]
    public let cargos: [Cargo1]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        order: Order1,
        taskGroups: [TaskGroup1],
        tasks: [Task1],
        milestones: [Milestone1],
        cargos: [Cargo1],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.order = order
        self.taskGroups = taskGroups
        self.tasks = tasks
        self.milestones = milestones
        self.cargos = cargos
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.order = try container.decode(Order1.self, forKey: .order)
        self.taskGroups = try container.decode([TaskGroup1].self, forKey: .taskGroups)
        self.tasks = try container.decode([Task1].self, forKey: .tasks)
        self.milestones = try container.decode([Milestone1].self, forKey: .milestones)
        self.cargos = try container.decode([Cargo1].self, forKey: .cargos)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.order, forKey: .order)
        try container.encode(self.taskGroups, forKey: .taskGroups)
        try container.encode(self.tasks, forKey: .tasks)
        try container.encode(self.milestones, forKey: .milestones)
        try container.encode(self.cargos, forKey: .cargos)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case order
        case taskGroups = "task_groups"
        case tasks
        case milestones
        case cargos
    }
}