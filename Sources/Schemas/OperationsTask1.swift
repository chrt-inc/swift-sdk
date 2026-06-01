import Foundation

public struct OperationsTask1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let orderId: String
    public let taskType: OperationsTaskTypeEnum
    public let title: String
    public let description: String
    public let deadlineTimestamp: Date?
    public let tags: [String]?
    public let assignedUserIds: [String]?
    public let id: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let departmentId: String?
    public let sourceTaskListId: String?
    public let status: OperationsTaskStatusEnum?
    public let completedAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let completedByUserId: String?
    public let comments: [OperationsTaskComment1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        orderId: String,
        taskType: OperationsTaskTypeEnum,
        title: String,
        description: String,
        deadlineTimestamp: Date? = nil,
        tags: [String]? = nil,
        assignedUserIds: [String]? = nil,
        id: String,
        orgId: String,
        departmentId: String? = nil,
        sourceTaskListId: String? = nil,
        status: OperationsTaskStatusEnum? = nil,
        completedAtTimestamp: Date? = nil,
        completedByUserId: String? = nil,
        comments: [OperationsTaskComment1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.orderId = orderId
        self.taskType = taskType
        self.title = title
        self.description = description
        self.deadlineTimestamp = deadlineTimestamp
        self.tags = tags
        self.assignedUserIds = assignedUserIds
        self.id = id
        self.orgId = orgId
        self.departmentId = departmentId
        self.sourceTaskListId = sourceTaskListId
        self.status = status
        self.completedAtTimestamp = completedAtTimestamp
        self.completedByUserId = completedByUserId
        self.comments = comments
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskType = try container.decode(OperationsTaskTypeEnum.self, forKey: .taskType)
        self.title = try container.decode(String.self, forKey: .title)
        self.description = try container.decode(String.self, forKey: .description)
        self.deadlineTimestamp = try container.decodeIfPresent(Date.self, forKey: .deadlineTimestamp)
        self.tags = try container.decodeIfPresent([String].self, forKey: .tags)
        self.assignedUserIds = try container.decodeIfPresent([String].self, forKey: .assignedUserIds)
        self.id = try container.decode(String.self, forKey: .id)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
        self.sourceTaskListId = try container.decodeIfPresent(String.self, forKey: .sourceTaskListId)
        self.status = try container.decodeIfPresent(OperationsTaskStatusEnum.self, forKey: .status)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.completedByUserId = try container.decodeIfPresent(String.self, forKey: .completedByUserId)
        self.comments = try container.decodeIfPresent([OperationsTaskComment1].self, forKey: .comments)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.taskType, forKey: .taskType)
        try container.encode(self.title, forKey: .title)
        try container.encode(self.description, forKey: .description)
        try container.encodeIfPresent(self.deadlineTimestamp, forKey: .deadlineTimestamp)
        try container.encodeIfPresent(self.tags, forKey: .tags)
        try container.encodeIfPresent(self.assignedUserIds, forKey: .assignedUserIds)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
        try container.encodeIfPresent(self.sourceTaskListId, forKey: .sourceTaskListId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encodeIfPresent(self.completedByUserId, forKey: .completedByUserId)
        try container.encodeIfPresent(self.comments, forKey: .comments)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case orderId = "order_id"
        case taskType = "task_type"
        case title
        case description
        case deadlineTimestamp = "deadline_timestamp"
        case tags
        case assignedUserIds = "assigned_user_ids"
        case id = "_id"
        case orgId = "org_id"
        case departmentId = "department_id"
        case sourceTaskListId = "source_task_list_id"
        case status
        case completedAtTimestamp = "completed_at_timestamp"
        case completedByUserId = "completed_by_user_id"
        case comments
    }
}