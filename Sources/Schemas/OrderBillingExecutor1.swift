import Foundation

public struct OrderBillingExecutor1: Codable, Hashable, Sendable {
    public let executorLabels: [String]?
    /// Must be a string starting with `org_`
    public let executorOrgId: String?
    public let name: String?
    public let offChrtExecutorOrgDataId: String?
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        executorLabels: [String]? = nil,
        executorOrgId: String? = nil,
        name: String? = nil,
        offChrtExecutorOrgDataId: String? = nil,
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.executorLabels = executorLabels
        self.executorOrgId = executorOrgId
        self.name = name
        self.offChrtExecutorOrgDataId = offChrtExecutorOrgDataId
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.executorLabels = try container.decodeIfPresent([String].self, forKey: .executorLabels)
        self.executorOrgId = try container.decodeIfPresent(String.self, forKey: .executorOrgId)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.offChrtExecutorOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtExecutorOrgDataId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.executorLabels, forKey: .executorLabels)
        try container.encodeIfPresent(self.executorOrgId, forKey: .executorOrgId)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.offChrtExecutorOrgDataId, forKey: .offChrtExecutorOrgDataId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case executorLabels = "executor_labels"
        case executorOrgId = "executor_org_id"
        case name
        case offChrtExecutorOrgDataId = "off_chrt_executor_org_data_id"
        case taskGroupId = "task_group_id"
    }
}