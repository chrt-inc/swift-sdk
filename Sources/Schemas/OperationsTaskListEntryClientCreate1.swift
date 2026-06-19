import Foundation

/// Entry content the client supplies — at list-create time and via the add /
/// edit entry routes. Carries no identity: the server assigns the `uuid`.
public struct OperationsTaskListEntryClientCreate1: Codable, Hashable, Sendable {
    public let taskType: OperationsTaskTypeEnum
    public let title: String
    public let description: String
    public let deadlineAnchor: DeadlineAnchorEnum?
    public let deadlineOffsetSeconds: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskType: OperationsTaskTypeEnum,
        title: String,
        description: String,
        deadlineAnchor: DeadlineAnchorEnum? = nil,
        deadlineOffsetSeconds: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskType = taskType
        self.title = title
        self.description = description
        self.deadlineAnchor = deadlineAnchor
        self.deadlineOffsetSeconds = deadlineOffsetSeconds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskType = try container.decode(OperationsTaskTypeEnum.self, forKey: .taskType)
        self.title = try container.decode(String.self, forKey: .title)
        self.description = try container.decode(String.self, forKey: .description)
        self.deadlineAnchor = try container.decodeIfPresent(DeadlineAnchorEnum.self, forKey: .deadlineAnchor)
        self.deadlineOffsetSeconds = try container.decodeIfPresent(Int.self, forKey: .deadlineOffsetSeconds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskType, forKey: .taskType)
        try container.encode(self.title, forKey: .title)
        try container.encode(self.description, forKey: .description)
        try container.encodeIfPresent(self.deadlineAnchor, forKey: .deadlineAnchor)
        try container.encodeIfPresent(self.deadlineOffsetSeconds, forKey: .deadlineOffsetSeconds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskType = "task_type"
        case title
        case description
        case deadlineAnchor = "deadline_anchor"
        case deadlineOffsetSeconds = "deadline_offset_seconds"
    }
}