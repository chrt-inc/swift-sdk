import Foundation

public struct OperationsTaskExpandedListItem: Codable, Hashable, Sendable {
    public let assignedUsers: [OrgMemberDetails]
    public let department: Department1?
    public let operationsTask: OperationsTask1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        assignedUsers: [OrgMemberDetails],
        department: Department1? = nil,
        operationsTask: OperationsTask1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.assignedUsers = assignedUsers
        self.department = department
        self.operationsTask = operationsTask
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.assignedUsers = try container.decode([OrgMemberDetails].self, forKey: .assignedUsers)
        self.department = try container.decodeIfPresent(Department1.self, forKey: .department)
        self.operationsTask = try container.decode(OperationsTask1.self, forKey: .operationsTask)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.assignedUsers, forKey: .assignedUsers)
        try container.encodeIfPresent(self.department, forKey: .department)
        try container.encode(self.operationsTask, forKey: .operationsTask)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case assignedUsers = "assigned_users"
        case department
        case operationsTask = "operations_task"
    }
}