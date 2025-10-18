import Foundation

/// Single task group with optional expanded tasks
public struct TaskGroupExpanded: Codable, Hashable, Sendable {
    public let taskGroup: TaskGroup1
    public let tasksExpanded: Nullable<[TaskExpanded]>?
    public let orderOrgCompanyName: Nullable<String>?
    public let orderOrgHandle: Nullable<String>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroup: TaskGroup1,
        tasksExpanded: Nullable<[TaskExpanded]>? = nil,
        orderOrgCompanyName: Nullable<String>? = nil,
        orderOrgHandle: Nullable<String>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroup = taskGroup
        self.tasksExpanded = tasksExpanded
        self.orderOrgCompanyName = orderOrgCompanyName
        self.orderOrgHandle = orderOrgHandle
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroup = try container.decode(TaskGroup1.self, forKey: .taskGroup)
        self.tasksExpanded = try container.decodeNullableIfPresent([TaskExpanded].self, forKey: .tasksExpanded)
        self.orderOrgCompanyName = try container.decodeNullableIfPresent(String.self, forKey: .orderOrgCompanyName)
        self.orderOrgHandle = try container.decodeNullableIfPresent(String.self, forKey: .orderOrgHandle)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroup, forKey: .taskGroup)
        try container.encodeNullableIfPresent(self.tasksExpanded, forKey: .tasksExpanded)
        try container.encodeNullableIfPresent(self.orderOrgCompanyName, forKey: .orderOrgCompanyName)
        try container.encodeNullableIfPresent(self.orderOrgHandle, forKey: .orderOrgHandle)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroup = "task_group"
        case tasksExpanded = "tasks_expanded"
        case orderOrgCompanyName = "order_org_company_name"
        case orderOrgHandle = "order_org_handle"
    }
}