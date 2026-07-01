import Foundation

public struct TaskExpanded: Codable, Hashable, Sendable {
    public let cargos: [Cargo1]?
    public let directoryEntries: [DirectoryEntry1]?
    public let task: Task1
    public let taskArtifacts: [TaskArtifact1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cargos: [Cargo1]? = nil,
        directoryEntries: [DirectoryEntry1]? = nil,
        task: Task1,
        taskArtifacts: [TaskArtifact1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cargos = cargos
        self.directoryEntries = directoryEntries
        self.task = task
        self.taskArtifacts = taskArtifacts
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cargos = try container.decodeIfPresent([Cargo1].self, forKey: .cargos)
        self.directoryEntries = try container.decodeIfPresent([DirectoryEntry1].self, forKey: .directoryEntries)
        self.task = try container.decode(Task1.self, forKey: .task)
        self.taskArtifacts = try container.decodeIfPresent([TaskArtifact1].self, forKey: .taskArtifacts)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.cargos, forKey: .cargos)
        try container.encodeIfPresent(self.directoryEntries, forKey: .directoryEntries)
        try container.encode(self.task, forKey: .task)
        try container.encodeIfPresent(self.taskArtifacts, forKey: .taskArtifacts)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cargos
        case directoryEntries = "directory_entries"
        case task
        case taskArtifacts = "task_artifacts"
    }
}