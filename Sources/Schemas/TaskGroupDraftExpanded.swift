import Foundation

public struct TaskGroupDraftExpanded: Codable, Hashable, Sendable {
    public let taskGroup: TaskGroup1
    public let tasksExpanded: [TaskDraftExpanded]?
    public let courierOrgCompanyName: String?
    public let courierOrgHandle: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroup: TaskGroup1,
        tasksExpanded: [TaskDraftExpanded]? = nil,
        courierOrgCompanyName: String? = nil,
        courierOrgHandle: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroup = taskGroup
        self.tasksExpanded = tasksExpanded
        self.courierOrgCompanyName = courierOrgCompanyName
        self.courierOrgHandle = courierOrgHandle
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroup = try container.decode(TaskGroup1.self, forKey: .taskGroup)
        self.tasksExpanded = try container.decodeIfPresent([TaskDraftExpanded].self, forKey: .tasksExpanded)
        self.courierOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .courierOrgCompanyName)
        self.courierOrgHandle = try container.decodeIfPresent(String.self, forKey: .courierOrgHandle)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroup, forKey: .taskGroup)
        try container.encodeIfPresent(self.tasksExpanded, forKey: .tasksExpanded)
        try container.encodeIfPresent(self.courierOrgCompanyName, forKey: .courierOrgCompanyName)
        try container.encodeIfPresent(self.courierOrgHandle, forKey: .courierOrgHandle)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroup = "task_group"
        case tasksExpanded = "tasks_expanded"
        case courierOrgCompanyName = "courier_org_company_name"
        case courierOrgHandle = "courier_org_handle"
    }
}