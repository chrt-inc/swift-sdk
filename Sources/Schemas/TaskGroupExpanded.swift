import Foundation

/// Single task group with optional expanded tasks
public struct TaskGroupExpanded: Codable, Hashable, Sendable {
    public let taskGroup: TaskGroup1
    public let tasksExpanded: Nullable<[TaskExpanded]>?
    public let courierOrgCompanyName: Nullable<String>?
    public let courierOrgCompanyHandle: Nullable<String>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroup: TaskGroup1,
        tasksExpanded: Nullable<[TaskExpanded]>? = nil,
        courierOrgCompanyName: Nullable<String>? = nil,
        courierOrgCompanyHandle: Nullable<String>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroup = taskGroup
        self.tasksExpanded = tasksExpanded
        self.courierOrgCompanyName = courierOrgCompanyName
        self.courierOrgCompanyHandle = courierOrgCompanyHandle
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroup = try container.decode(TaskGroup1.self, forKey: .taskGroup)
        self.tasksExpanded = try container.decodeNullableIfPresent([TaskExpanded].self, forKey: .tasksExpanded)
        self.courierOrgCompanyName = try container.decodeNullableIfPresent(String.self, forKey: .courierOrgCompanyName)
        self.courierOrgCompanyHandle = try container.decodeNullableIfPresent(String.self, forKey: .courierOrgCompanyHandle)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroup, forKey: .taskGroup)
        try container.encodeNullableIfPresent(self.tasksExpanded, forKey: .tasksExpanded)
        try container.encodeNullableIfPresent(self.courierOrgCompanyName, forKey: .courierOrgCompanyName)
        try container.encodeNullableIfPresent(self.courierOrgCompanyHandle, forKey: .courierOrgCompanyHandle)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroup = "task_group"
        case tasksExpanded = "tasks_expanded"
        case courierOrgCompanyName = "courier_org_company_name"
        case courierOrgCompanyHandle = "courier_org_company_handle"
    }
}