import Foundation

public struct TaskListToApplyToOrderExpanded: Codable, Hashable, Sendable {
    public let operationsTaskList: OperationsTaskList1?
    public let taskListToApply: TaskListToApplyToOrder1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        operationsTaskList: OperationsTaskList1? = nil,
        taskListToApply: TaskListToApplyToOrder1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.operationsTaskList = operationsTaskList
        self.taskListToApply = taskListToApply
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.operationsTaskList = try container.decodeIfPresent(OperationsTaskList1.self, forKey: .operationsTaskList)
        self.taskListToApply = try container.decode(TaskListToApplyToOrder1.self, forKey: .taskListToApply)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.operationsTaskList, forKey: .operationsTaskList)
        try container.encode(self.taskListToApply, forKey: .taskListToApply)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case operationsTaskList = "operations_task_list"
        case taskListToApply = "task_list_to_apply"
    }
}