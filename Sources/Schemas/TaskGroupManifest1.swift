import Foundation

/// Task group template; scheduled orders currently support CHRT ground only.
public struct TaskGroupManifest1: Codable, Hashable, Sendable {
    public let driverId: String?
    /// Must be a string starting with `org_`
    public let executorOrgId: String?
    public let taskGroupType: ChrtGroundProvider
    public let taskManifests: [TaskManifest1]
    public let vehicleType: VehicleTypeEnum?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        driverId: String? = nil,
        executorOrgId: String? = nil,
        taskGroupType: ChrtGroundProvider,
        taskManifests: [TaskManifest1],
        vehicleType: VehicleTypeEnum? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.driverId = driverId
        self.executorOrgId = executorOrgId
        self.taskGroupType = taskGroupType
        self.taskManifests = taskManifests
        self.vehicleType = vehicleType
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.driverId = try container.decodeIfPresent(String.self, forKey: .driverId)
        self.executorOrgId = try container.decodeIfPresent(String.self, forKey: .executorOrgId)
        self.taskGroupType = try container.decode(ChrtGroundProvider.self, forKey: .taskGroupType)
        self.taskManifests = try container.decode([TaskManifest1].self, forKey: .taskManifests)
        self.vehicleType = try container.decodeIfPresent(VehicleTypeEnum.self, forKey: .vehicleType)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.driverId, forKey: .driverId)
        try container.encodeIfPresent(self.executorOrgId, forKey: .executorOrgId)
        try container.encode(self.taskGroupType, forKey: .taskGroupType)
        try container.encode(self.taskManifests, forKey: .taskManifests)
        try container.encodeIfPresent(self.vehicleType, forKey: .vehicleType)
    }

    public enum ChrtGroundProvider: String, Codable, Hashable, CaseIterable, Sendable {
        case chrtGroundProvider = "chrt_ground_provider"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case driverId = "driver_id"
        case executorOrgId = "executor_org_id"
        case taskGroupType = "task_group_type"
        case taskManifests = "task_manifests"
        case vehicleType = "vehicle_type"
    }
}