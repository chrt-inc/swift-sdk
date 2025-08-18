import Foundation

public struct TaskWithDetails: Codable, Hashable, Sendable {
    public let task: Task1
    public let milestones: [Milestone1]
    public let cargos: [Cargo1]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        task: Task1,
        milestones: [Milestone1],
        cargos: [Cargo1],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.task = task
        self.milestones = milestones
        self.cargos = cargos
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.task = try container.decode(Task1.self, forKey: .task)
        self.milestones = try container.decode([Milestone1].self, forKey: .milestones)
        self.cargos = try container.decode([Cargo1].self, forKey: .cargos)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.task, forKey: .task)
        try container.encode(self.milestones, forKey: .milestones)
        try container.encode(self.cargos, forKey: .cargos)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case task
        case milestones
        case cargos
    }
}