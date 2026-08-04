import Foundation

extension Requests {
    public struct OrderTemplateNewTaskGroupClientCreate1: Codable, Hashable, Sendable {
        public let coordinatorSetupNotes: String?
        public let driverId: String?
        /// Must be a string starting with `org_`
        public let executorOrgId: String?
        public let offChrtExecutorOrgDataId: String?
        public let taskGroupType: TaskGroupTypeEnum1
        public let vehicleType: VehicleTypeEnum?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            coordinatorSetupNotes: String? = nil,
            driverId: String? = nil,
            executorOrgId: String? = nil,
            offChrtExecutorOrgDataId: String? = nil,
            taskGroupType: TaskGroupTypeEnum1,
            vehicleType: VehicleTypeEnum? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.coordinatorSetupNotes = coordinatorSetupNotes
            self.driverId = driverId
            self.executorOrgId = executorOrgId
            self.offChrtExecutorOrgDataId = offChrtExecutorOrgDataId
            self.taskGroupType = taskGroupType
            self.vehicleType = vehicleType
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.coordinatorSetupNotes = try container.decodeIfPresent(String.self, forKey: .coordinatorSetupNotes)
            self.driverId = try container.decodeIfPresent(String.self, forKey: .driverId)
            self.executorOrgId = try container.decodeIfPresent(String.self, forKey: .executorOrgId)
            self.offChrtExecutorOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtExecutorOrgDataId)
            self.taskGroupType = try container.decode(TaskGroupTypeEnum1.self, forKey: .taskGroupType)
            self.vehicleType = try container.decodeIfPresent(VehicleTypeEnum.self, forKey: .vehicleType)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.coordinatorSetupNotes, forKey: .coordinatorSetupNotes)
            try container.encodeIfPresent(self.driverId, forKey: .driverId)
            try container.encodeIfPresent(self.executorOrgId, forKey: .executorOrgId)
            try container.encodeIfPresent(self.offChrtExecutorOrgDataId, forKey: .offChrtExecutorOrgDataId)
            try container.encode(self.taskGroupType, forKey: .taskGroupType)
            try container.encodeIfPresent(self.vehicleType, forKey: .vehicleType)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case coordinatorSetupNotes = "coordinator_setup_notes"
            case driverId = "driver_id"
            case executorOrgId = "executor_org_id"
            case offChrtExecutorOrgDataId = "off_chrt_executor_org_data_id"
            case taskGroupType = "task_group_type"
            case vehicleType = "vehicle_type"
        }
    }
}