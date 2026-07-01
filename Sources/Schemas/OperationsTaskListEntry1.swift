import Foundation

/// A stored Task List entry: client content plus a server-assigned stable
/// `uuid`. The `uuid` keys the edit / remove / reorder routes (entries are not
/// unique by `task_type` — a list can repeat a type).
public struct OperationsTaskListEntry1: Codable, Hashable, Sendable {
    public let deadlineAnchor: DeadlineAnchorEnum?
    public let deadlineOffsetSeconds: Int?
    public let description: String
    public let taskType: OperationsTaskTypeEnum
    public let title: String
    public let uuid: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        deadlineAnchor: DeadlineAnchorEnum? = nil,
        deadlineOffsetSeconds: Int? = nil,
        description: String,
        taskType: OperationsTaskTypeEnum,
        title: String,
        uuid: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.deadlineAnchor = deadlineAnchor
        self.deadlineOffsetSeconds = deadlineOffsetSeconds
        self.description = description
        self.taskType = taskType
        self.title = title
        self.uuid = uuid
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.deadlineAnchor = try container.decodeIfPresent(DeadlineAnchorEnum.self, forKey: .deadlineAnchor)
        self.deadlineOffsetSeconds = try container.decodeIfPresent(Int.self, forKey: .deadlineOffsetSeconds)
        self.description = try container.decode(String.self, forKey: .description)
        self.taskType = try container.decode(OperationsTaskTypeEnum.self, forKey: .taskType)
        self.title = try container.decode(String.self, forKey: .title)
        self.uuid = try container.decodeIfPresent(String.self, forKey: .uuid)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.deadlineAnchor, forKey: .deadlineAnchor)
        try container.encodeIfPresent(self.deadlineOffsetSeconds, forKey: .deadlineOffsetSeconds)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.taskType, forKey: .taskType)
        try container.encode(self.title, forKey: .title)
        try container.encodeIfPresent(self.uuid, forKey: .uuid)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case deadlineAnchor = "deadline_anchor"
        case deadlineOffsetSeconds = "deadline_offset_seconds"
        case description
        case taskType = "task_type"
        case title
        case uuid
    }
}