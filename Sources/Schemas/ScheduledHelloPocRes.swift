import Foundation

public struct ScheduledHelloPocRes: Codable, Hashable, Sendable {
    public let scheduleId: String
    public let orderId: String
    public let driverName: String
    public let workflowName: String
    public let workflowId: String
    public let taskQueue: String
    public let scheduleSpec: ScheduleSpec
    public let catchupWindowSeconds: Int
    public let created: Bool
    public let nextActionTimes: [Date]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        scheduleId: String,
        orderId: String,
        driverName: String,
        workflowName: String,
        workflowId: String,
        taskQueue: String,
        scheduleSpec: ScheduleSpec,
        catchupWindowSeconds: Int,
        created: Bool,
        nextActionTimes: [Date],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.scheduleId = scheduleId
        self.orderId = orderId
        self.driverName = driverName
        self.workflowName = workflowName
        self.workflowId = workflowId
        self.taskQueue = taskQueue
        self.scheduleSpec = scheduleSpec
        self.catchupWindowSeconds = catchupWindowSeconds
        self.created = created
        self.nextActionTimes = nextActionTimes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.scheduleId = try container.decode(String.self, forKey: .scheduleId)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.driverName = try container.decode(String.self, forKey: .driverName)
        self.workflowName = try container.decode(String.self, forKey: .workflowName)
        self.workflowId = try container.decode(String.self, forKey: .workflowId)
        self.taskQueue = try container.decode(String.self, forKey: .taskQueue)
        self.scheduleSpec = try container.decode(ScheduleSpec.self, forKey: .scheduleSpec)
        self.catchupWindowSeconds = try container.decode(Int.self, forKey: .catchupWindowSeconds)
        self.created = try container.decode(Bool.self, forKey: .created)
        self.nextActionTimes = try container.decode([Date].self, forKey: .nextActionTimes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.scheduleId, forKey: .scheduleId)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.driverName, forKey: .driverName)
        try container.encode(self.workflowName, forKey: .workflowName)
        try container.encode(self.workflowId, forKey: .workflowId)
        try container.encode(self.taskQueue, forKey: .taskQueue)
        try container.encode(self.scheduleSpec, forKey: .scheduleSpec)
        try container.encode(self.catchupWindowSeconds, forKey: .catchupWindowSeconds)
        try container.encode(self.created, forKey: .created)
        try container.encode(self.nextActionTimes, forKey: .nextActionTimes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case scheduleId = "schedule_id"
        case orderId = "order_id"
        case driverName = "driver_name"
        case workflowName = "workflow_name"
        case workflowId = "workflow_id"
        case taskQueue = "task_queue"
        case scheduleSpec = "schedule_spec"
        case catchupWindowSeconds = "catchup_window_seconds"
        case created
        case nextActionTimes = "next_action_times"
    }
}