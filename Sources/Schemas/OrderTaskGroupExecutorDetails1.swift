import Foundation

public struct OrderTaskGroupExecutorDetails1: Codable, Hashable, Sendable {
    public let executorAssignedUserIds: [String]?
    public let executorDepartmentId: String?
    public let executorLabel: String?
    /// Must be a string starting with `org_`
    public let executorOrgId: String?
    public let offChrtExecutorOrgId: String?
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        executorAssignedUserIds: [String]? = nil,
        executorDepartmentId: String? = nil,
        executorLabel: String? = nil,
        executorOrgId: String? = nil,
        offChrtExecutorOrgId: String? = nil,
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.executorAssignedUserIds = executorAssignedUserIds
        self.executorDepartmentId = executorDepartmentId
        self.executorLabel = executorLabel
        self.executorOrgId = executorOrgId
        self.offChrtExecutorOrgId = offChrtExecutorOrgId
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.executorAssignedUserIds = try container.decodeIfPresent([String].self, forKey: .executorAssignedUserIds)
        self.executorDepartmentId = try container.decodeIfPresent(String.self, forKey: .executorDepartmentId)
        self.executorLabel = try container.decodeIfPresent(String.self, forKey: .executorLabel)
        self.executorOrgId = try container.decodeIfPresent(String.self, forKey: .executorOrgId)
        self.offChrtExecutorOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtExecutorOrgId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.executorAssignedUserIds, forKey: .executorAssignedUserIds)
        try container.encodeIfPresent(self.executorDepartmentId, forKey: .executorDepartmentId)
        try container.encodeIfPresent(self.executorLabel, forKey: .executorLabel)
        try container.encodeIfPresent(self.executorOrgId, forKey: .executorOrgId)
        try container.encodeIfPresent(self.offChrtExecutorOrgId, forKey: .offChrtExecutorOrgId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case executorAssignedUserIds = "executor_assigned_user_ids"
        case executorDepartmentId = "executor_department_id"
        case executorLabel = "executor_label"
        case executorOrgId = "executor_org_id"
        case offChrtExecutorOrgId = "off_chrt_executor_org_id"
        case taskGroupId = "task_group_id"
    }
}