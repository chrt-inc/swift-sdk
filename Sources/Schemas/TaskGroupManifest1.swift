import Foundation

/// Task group template; scheduled orders currently support CHRT ground only.
public struct TaskGroupManifest1: Codable, Hashable, Sendable {
    public let taskGroupType: ChrtGroundProvider
    public let vehicleType: VehicleTypeEnum?
    /// Must be a string starting with `org_`
    public let executorOrgId: String?
    public let driverId: String?
    public let tasks: [TaskManifest1]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroupType: ChrtGroundProvider,
        vehicleType: VehicleTypeEnum? = nil,
        executorOrgId: String? = nil,
        driverId: String? = nil,
        tasks: [TaskManifest1],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroupType = taskGroupType
        self.vehicleType = vehicleType
        self.executorOrgId = executorOrgId
        self.driverId = driverId
        self.tasks = tasks
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroupType = try container.decode(ChrtGroundProvider.self, forKey: .taskGroupType)
        self.vehicleType = try container.decodeIfPresent(VehicleTypeEnum.self, forKey: .vehicleType)
        self.executorOrgId = try container.decodeIfPresent(String.self, forKey: .executorOrgId)
        self.driverId = try container.decodeIfPresent(String.self, forKey: .driverId)
        self.tasks = try container.decode([TaskManifest1].self, forKey: .tasks)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroupType, forKey: .taskGroupType)
        try container.encodeIfPresent(self.vehicleType, forKey: .vehicleType)
        try container.encodeIfPresent(self.executorOrgId, forKey: .executorOrgId)
        try container.encodeIfPresent(self.driverId, forKey: .driverId)
        try container.encode(self.tasks, forKey: .tasks)
    }

    public enum ChrtGroundProvider: String, Codable, Hashable, CaseIterable, Sendable {
        case chrtGroundProvider = "chrt_ground_provider"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroupType = "task_group_type"
        case vehicleType = "vehicle_type"
        case executorOrgId = "executor_org_id"
        case driverId = "driver_id"
        case tasks
    }
}