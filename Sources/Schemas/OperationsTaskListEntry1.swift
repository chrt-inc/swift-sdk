import Foundation

/// One task declared in a Task List.
/// 
/// Materialized into an `OperationsTask` on apply.
/// 
/// `deadline_offset_seconds` is an OPTIONAL absolute offset from apply time, in
/// seconds. When set, the materialized task's deadline is
/// `apply_time + deadline_offset_seconds`. When left `None` (the default), the
/// entry is staggered by its position in the list at a default 20-min cadence:
/// the Nth entry (1-based) is due at `apply_time + N * 20min`. An apply-time
/// `overall_deadline_timestamp` overrides both.
public struct OperationsTaskListEntry1: Codable, Hashable, Sendable {
    public let id: String?
    public let taskType: OperationsTaskTypeEnum
    public let title: String
    public let description: String
    public let deadlineOffsetSeconds: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String? = nil,
        taskType: OperationsTaskTypeEnum,
        title: String,
        description: String,
        deadlineOffsetSeconds: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.taskType = taskType
        self.title = title
        self.description = description
        self.deadlineOffsetSeconds = deadlineOffsetSeconds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.taskType = try container.decode(OperationsTaskTypeEnum.self, forKey: .taskType)
        self.title = try container.decode(String.self, forKey: .title)
        self.description = try container.decode(String.self, forKey: .description)
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
        try container.encodeIfPresent(self.deadlineOffsetSeconds, forKey: .deadlineOffsetSeconds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case taskType = "task_type"
        case title
        case description
        case deadlineOffsetSeconds = "deadline_offset_seconds"
    }
}