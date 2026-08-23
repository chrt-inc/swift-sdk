import Foundation

public struct OrderEventEntity1: Codable, Hashable, Sendable {
    public let account: Account1?
    public let cargo: Cargo1?
    public let contact: Contact1?
    public let modification: [String: JSONValue]?
    public let order: Order1?
    public let task: Task1?
    public let taskArtifact: TaskArtifact1?
    public let taskArtifactS3ObjectMetadata: TaskArtifactS3ObjectMetadata1?
    public let taskGroup: TaskGroup1?
    public let taskGroupS3ObjectMetadata: TaskGroupS3ObjectMetadata1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        account: Account1? = nil,
        cargo: Cargo1? = nil,
        contact: Contact1? = nil,
        modification: [String: JSONValue]? = nil,
        order: Order1? = nil,
        task: Task1? = nil,
        taskArtifact: TaskArtifact1? = nil,
        taskArtifactS3ObjectMetadata: TaskArtifactS3ObjectMetadata1? = nil,
        taskGroup: TaskGroup1? = nil,
        taskGroupS3ObjectMetadata: TaskGroupS3ObjectMetadata1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.account = account
        self.cargo = cargo
        self.contact = contact
        self.modification = modification
        self.order = order
        self.task = task
        self.taskArtifact = taskArtifact
        self.taskArtifactS3ObjectMetadata = taskArtifactS3ObjectMetadata
        self.taskGroup = taskGroup
        self.taskGroupS3ObjectMetadata = taskGroupS3ObjectMetadata
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.account = try container.decodeIfPresent(Account1.self, forKey: .account)
        self.cargo = try container.decodeIfPresent(Cargo1.self, forKey: .cargo)
        self.contact = try container.decodeIfPresent(Contact1.self, forKey: .contact)
        self.modification = try container.decodeIfPresent([String: JSONValue].self, forKey: .modification)
        self.order = try container.decodeIfPresent(Order1.self, forKey: .order)
        self.task = try container.decodeIfPresent(Task1.self, forKey: .task)
        self.taskArtifact = try container.decodeIfPresent(TaskArtifact1.self, forKey: .taskArtifact)
        self.taskArtifactS3ObjectMetadata = try container.decodeIfPresent(TaskArtifactS3ObjectMetadata1.self, forKey: .taskArtifactS3ObjectMetadata)
        self.taskGroup = try container.decodeIfPresent(TaskGroup1.self, forKey: .taskGroup)
        self.taskGroupS3ObjectMetadata = try container.decodeIfPresent(TaskGroupS3ObjectMetadata1.self, forKey: .taskGroupS3ObjectMetadata)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.account, forKey: .account)
        try container.encodeIfPresent(self.cargo, forKey: .cargo)
        try container.encodeIfPresent(self.contact, forKey: .contact)
        try container.encodeIfPresent(self.modification, forKey: .modification)
        try container.encodeIfPresent(self.order, forKey: .order)
        try container.encodeIfPresent(self.task, forKey: .task)
        try container.encodeIfPresent(self.taskArtifact, forKey: .taskArtifact)
        try container.encodeIfPresent(self.taskArtifactS3ObjectMetadata, forKey: .taskArtifactS3ObjectMetadata)
        try container.encodeIfPresent(self.taskGroup, forKey: .taskGroup)
        try container.encodeIfPresent(self.taskGroupS3ObjectMetadata, forKey: .taskGroupS3ObjectMetadata)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case account
        case cargo
        case contact
        case modification
        case order
        case task
        case taskArtifact = "task_artifact"
        case taskArtifactS3ObjectMetadata = "task_artifact_s3_object_metadata"
        case taskGroup = "task_group"
        case taskGroupS3ObjectMetadata = "task_group_s3_object_metadata"
    }
}