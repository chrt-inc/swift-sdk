import Foundation

/// One task declared in a Task List.
/// 
/// Materialized into an `OperationsTask` on apply.
/// 
/// The deadline is computed from (`deadline_anchor`, `deadline_offset_seconds`):
/// `FROM_FIRST_TASK` => the first entry's resolved deadline + offset;
/// `FROM_PREVIOUS_TASK` => the previous entry's resolved deadline + offset (the
/// first entry's "previous" is `apply_time`). The first entry itself anchors to
/// `apply_time` (or the apply-time `initial_deadline_timestamp` pin). Defaults to
/// `FROM_PREVIOUS_TASK` + 1200s, which reproduces the 20-min positional stagger.
/// `deadline_offset_seconds` may be negative.
public struct OperationsTaskListEntry1: Codable, Hashable, Sendable {
    public let id: String?
    public let taskType: OperationsTaskTypeEnum
    public let title: String
    public let description: String
    public let deadlineAnchor: DeadlineAnchorEnum?
    public let deadlineOffsetSeconds: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String? = nil,
        taskType: OperationsTaskTypeEnum,
        title: String,
        description: String,
        deadlineAnchor: DeadlineAnchorEnum? = nil,
        deadlineOffsetSeconds: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.taskType = taskType
        self.title = title
        self.description = description
        self.deadlineAnchor = deadlineAnchor
        self.deadlineOffsetSeconds = deadlineOffsetSeconds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
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
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encode(self.taskType, forKey: .taskType)
        try container.encode(self.title, forKey: .title)
        try container.encode(self.description, forKey: .description)
        try container.encodeIfPresent(self.deadlineAnchor, forKey: .deadlineAnchor)
        try container.encodeIfPresent(self.deadlineOffsetSeconds, forKey: .deadlineOffsetSeconds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case taskType = "task_type"
        case title
        case description
        case deadlineAnchor = "deadline_anchor"
        case deadlineOffsetSeconds = "deadline_offset_seconds"
    }
}