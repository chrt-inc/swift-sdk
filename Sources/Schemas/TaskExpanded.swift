import Foundation

public struct TaskExpanded: Codable, Hashable, Sendable {
    public let cargos: [Cargo1]?
    public let contacts: [Contact1]?
    public let providedBy: CustodyPartyExpanded?
    public let receivedBy: CustodyPartyExpanded?
    public let task: Task1
    public let taskArtifacts: [TaskArtifact1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cargos: [Cargo1]? = nil,
        contacts: [Contact1]? = nil,
        providedBy: CustodyPartyExpanded? = nil,
        receivedBy: CustodyPartyExpanded? = nil,
        task: Task1,
        taskArtifacts: [TaskArtifact1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cargos = cargos
        self.contacts = contacts
        self.providedBy = providedBy
        self.receivedBy = receivedBy
        self.task = task
        self.taskArtifacts = taskArtifacts
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cargos = try container.decodeIfPresent([Cargo1].self, forKey: .cargos)
        self.contacts = try container.decodeIfPresent([Contact1].self, forKey: .contacts)
        self.providedBy = try container.decodeIfPresent(CustodyPartyExpanded.self, forKey: .providedBy)
        self.receivedBy = try container.decodeIfPresent(CustodyPartyExpanded.self, forKey: .receivedBy)
        self.task = try container.decode(Task1.self, forKey: .task)
        self.taskArtifacts = try container.decodeIfPresent([TaskArtifact1].self, forKey: .taskArtifacts)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.cargos, forKey: .cargos)
        try container.encodeIfPresent(self.contacts, forKey: .contacts)
        try container.encodeIfPresent(self.providedBy, forKey: .providedBy)
        try container.encodeIfPresent(self.receivedBy, forKey: .receivedBy)
        try container.encode(self.task, forKey: .task)
        try container.encodeIfPresent(self.taskArtifacts, forKey: .taskArtifacts)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cargos
        case contacts
        case providedBy = "provided_by"
        case receivedBy = "received_by"
        case task
        case taskArtifacts = "task_artifacts"
    }
}