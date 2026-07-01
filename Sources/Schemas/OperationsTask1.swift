import Foundation

public struct OperationsTask1: Codable, Hashable, Sendable {
    public let id: String
    public let assignedUserIds: [String]?
    public let comments: [OperationsTaskComment1]?
    public let completedAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let completedByUserId: String?
    public let deadlineTimestamp: Date?
    public let departmentId: String?
    public let description: String
    public let orderId: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let schemaVersion: Int
    public let sourceTaskListId: String?
    public let status: OperationsTaskStatusEnum?
    public let tags: [String]?
    public let taskType: OperationsTaskTypeEnum
    public let title: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        assignedUserIds: [String]? = nil,
        comments: [OperationsTaskComment1]? = nil,
        completedAtTimestamp: Date? = nil,
        completedByUserId: String? = nil,
        deadlineTimestamp: Date? = nil,
        departmentId: String? = nil,
        description: String,
        orderId: String,
        orgId: String,
        schemaVersion: Int,
        sourceTaskListId: String? = nil,
        status: OperationsTaskStatusEnum? = nil,
        tags: [String]? = nil,
        taskType: OperationsTaskTypeEnum,
        title: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.assignedUserIds = assignedUserIds
        self.comments = comments
        self.completedAtTimestamp = completedAtTimestamp
        self.completedByUserId = completedByUserId
        self.deadlineTimestamp = deadlineTimestamp
        self.departmentId = departmentId
        self.description = description
        self.orderId = orderId
        self.orgId = orgId
        self.schemaVersion = schemaVersion
        self.sourceTaskListId = sourceTaskListId
        self.status = status
        self.tags = tags
        self.taskType = taskType
        self.title = title
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.assignedUserIds = try container.decodeIfPresent([String].self, forKey: .assignedUserIds)
        self.comments = try container.decodeIfPresent([OperationsTaskComment1].self, forKey: .comments)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.completedByUserId = try container.decodeIfPresent(String.self, forKey: .completedByUserId)
        self.deadlineTimestamp = try container.decodeIfPresent(Date.self, forKey: .deadlineTimestamp)
        self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
        self.description = try container.decode(String.self, forKey: .description)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.sourceTaskListId = try container.decodeIfPresent(String.self, forKey: .sourceTaskListId)
        self.status = try container.decodeIfPresent(OperationsTaskStatusEnum.self, forKey: .status)
        self.tags = try container.decodeIfPresent([String].self, forKey: .tags)
        self.taskType = try container.decode(OperationsTaskTypeEnum.self, forKey: .taskType)
        self.title = try container.decode(String.self, forKey: .title)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.assignedUserIds, forKey: .assignedUserIds)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encodeIfPresent(self.completedByUserId, forKey: .completedByUserId)
        try container.encodeIfPresent(self.deadlineTimestamp, forKey: .deadlineTimestamp)
        try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.sourceTaskListId, forKey: .sourceTaskListId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.tags, forKey: .tags)
        try container.encode(self.taskType, forKey: .taskType)
        try container.encode(self.title, forKey: .title)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case assignedUserIds = "assigned_user_ids"
        case comments
        case completedAtTimestamp = "completed_at_timestamp"
        case completedByUserId = "completed_by_user_id"
        case deadlineTimestamp = "deadline_timestamp"
        case departmentId = "department_id"
        case description
        case orderId = "order_id"
        case orgId = "org_id"
        case schemaVersion = "schema_version"
        case sourceTaskListId = "source_task_list_id"
        case status
        case tags
        case taskType = "task_type"
        case title
    }
}