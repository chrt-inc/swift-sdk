import Foundation

public struct OrderTaskGroupSharedDetails1: Codable, Hashable, Sendable {
    /// Must be a string starting with `org_`
    public let executorOrgId: String?
    public let offChrtExecutorOrgDataId: String?
    public let taskGroupId: String
    public let taskGroupType: TaskGroupTypeEnum1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        executorOrgId: String? = nil,
        offChrtExecutorOrgDataId: String? = nil,
        taskGroupId: String,
        taskGroupType: TaskGroupTypeEnum1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.executorOrgId = executorOrgId
        self.offChrtExecutorOrgDataId = offChrtExecutorOrgDataId
        self.taskGroupId = taskGroupId
        self.taskGroupType = taskGroupType
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.executorOrgId = try container.decodeIfPresent(String.self, forKey: .executorOrgId)
        self.offChrtExecutorOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtExecutorOrgDataId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.taskGroupType = try container.decode(TaskGroupTypeEnum1.self, forKey: .taskGroupType)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.executorOrgId, forKey: .executorOrgId)
        try container.encodeIfPresent(self.offChrtExecutorOrgDataId, forKey: .offChrtExecutorOrgDataId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.taskGroupType, forKey: .taskGroupType)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case executorOrgId = "executor_org_id"
        case offChrtExecutorOrgDataId = "off_chrt_executor_org_data_id"
        case taskGroupId = "task_group_id"
        case taskGroupType = "task_group_type"
    }
}