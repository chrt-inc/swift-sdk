import Foundation

public struct TaskExpanded: Codable, Hashable, Sendable {
    public let task: Task1
    public let cargos: [Cargo1]?
    public let taskArtifacts: [TaskArtifact1]?
    public let directoryEntries: [DirectoryEntry1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        task: Task1,
        cargos: [Cargo1]? = nil,
        taskArtifacts: [TaskArtifact1]? = nil,
        directoryEntries: [DirectoryEntry1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.task = task
        self.cargos = cargos
        self.taskArtifacts = taskArtifacts
        self.directoryEntries = directoryEntries
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.task = try container.decode(Task1.self, forKey: .task)
        self.cargos = try container.decodeIfPresent([Cargo1].self, forKey: .cargos)
        self.taskArtifacts = try container.decodeIfPresent([TaskArtifact1].self, forKey: .taskArtifacts)
        self.directoryEntries = try container.decodeIfPresent([DirectoryEntry1].self, forKey: .directoryEntries)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.task, forKey: .task)
        try container.encodeIfPresent(self.cargos, forKey: .cargos)
        try container.encodeIfPresent(self.taskArtifacts, forKey: .taskArtifacts)
        try container.encodeIfPresent(self.directoryEntries, forKey: .directoryEntries)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case task
        case cargos
        case taskArtifacts = "task_artifacts"
        case directoryEntries = "directory_entries"
    }
}