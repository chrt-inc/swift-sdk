import Foundation

public struct OrderTemplateNewTaskGroup1: Codable, Hashable, Sendable {
    public let coordinatorSetupNotes: String?
    public let driverId: String?
    public let executorAssignedUserIds: [String]?
    /// Must be a string starting with `org_`
    public let executorOrgId: String?
    public let offChrtExecutorOrgDataId: String?
    public let taskGroupKey: String
    public let taskGroupType: TaskGroupTypeEnum1
    public let tasks: [OrderTemplateNewTask1]?
    public let vehicleType: VehicleTypeEnum?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        coordinatorSetupNotes: String? = nil,
        driverId: String? = nil,
        executorAssignedUserIds: [String]? = nil,
        executorOrgId: String? = nil,
        offChrtExecutorOrgDataId: String? = nil,
        taskGroupKey: String,
        taskGroupType: TaskGroupTypeEnum1,
        tasks: [OrderTemplateNewTask1]? = nil,
        vehicleType: VehicleTypeEnum? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.coordinatorSetupNotes = coordinatorSetupNotes
        self.driverId = driverId
        self.executorAssignedUserIds = executorAssignedUserIds
        self.executorOrgId = executorOrgId
        self.offChrtExecutorOrgDataId = offChrtExecutorOrgDataId
        self.taskGroupKey = taskGroupKey
        self.taskGroupType = taskGroupType
        self.tasks = tasks
        self.vehicleType = vehicleType
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.coordinatorSetupNotes = try container.decodeIfPresent(String.self, forKey: .coordinatorSetupNotes)
        self.driverId = try container.decodeIfPresent(String.self, forKey: .driverId)
        self.executorAssignedUserIds = try container.decodeIfPresent([String].self, forKey: .executorAssignedUserIds)
        self.executorOrgId = try container.decodeIfPresent(String.self, forKey: .executorOrgId)
        self.offChrtExecutorOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtExecutorOrgDataId)
        self.taskGroupKey = try container.decode(String.self, forKey: .taskGroupKey)
        self.taskGroupType = try container.decode(TaskGroupTypeEnum1.self, forKey: .taskGroupType)
        self.tasks = try container.decodeIfPresent([OrderTemplateNewTask1].self, forKey: .tasks)
        self.vehicleType = try container.decodeIfPresent(VehicleTypeEnum.self, forKey: .vehicleType)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.coordinatorSetupNotes, forKey: .coordinatorSetupNotes)
        try container.encodeIfPresent(self.driverId, forKey: .driverId)
        try container.encodeIfPresent(self.executorAssignedUserIds, forKey: .executorAssignedUserIds)
        try container.encodeIfPresent(self.executorOrgId, forKey: .executorOrgId)
        try container.encodeIfPresent(self.offChrtExecutorOrgDataId, forKey: .offChrtExecutorOrgDataId)
        try container.encode(self.taskGroupKey, forKey: .taskGroupKey)
        try container.encode(self.taskGroupType, forKey: .taskGroupType)
        try container.encodeIfPresent(self.tasks, forKey: .tasks)
        try container.encodeIfPresent(self.vehicleType, forKey: .vehicleType)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case coordinatorSetupNotes = "coordinator_setup_notes"
        case driverId = "driver_id"
        case executorAssignedUserIds = "executor_assigned_user_ids"
        case executorOrgId = "executor_org_id"
        case offChrtExecutorOrgDataId = "off_chrt_executor_org_data_id"
        case taskGroupKey = "task_group_key"
        case taskGroupType = "task_group_type"
        case tasks
        case vehicleType = "vehicle_type"
    }
}