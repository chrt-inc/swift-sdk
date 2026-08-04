import Foundation

extension Requests {
    public struct OrderTemplateNewTaskGroupClientUpdate1: Codable, Hashable, Sendable {
        public let coordinatorSetupNotes: String?
        public let coordinatorSetupNotesSetToNone: Bool?
        public let driverId: String?
        public let driverIdSetToNone: Bool?
        /// Must be a string starting with `org_`
        public let executorOrgId: String?
        public let executorOrgIdSetToNone: Bool?
        public let offChrtExecutorOrgDataId: String?
        public let offChrtExecutorOrgDataIdSetToNone: Bool?
        public let taskGroupType: TaskGroupTypeEnum1?
        public let vehicleType: VehicleTypeEnum?
        public let vehicleTypeSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            coordinatorSetupNotes: String? = nil,
            coordinatorSetupNotesSetToNone: Bool? = nil,
            driverId: String? = nil,
            driverIdSetToNone: Bool? = nil,
            executorOrgId: String? = nil,
            executorOrgIdSetToNone: Bool? = nil,
            offChrtExecutorOrgDataId: String? = nil,
            offChrtExecutorOrgDataIdSetToNone: Bool? = nil,
            taskGroupType: TaskGroupTypeEnum1? = nil,
            vehicleType: VehicleTypeEnum? = nil,
            vehicleTypeSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.coordinatorSetupNotes = coordinatorSetupNotes
            self.coordinatorSetupNotesSetToNone = coordinatorSetupNotesSetToNone
            self.driverId = driverId
            self.driverIdSetToNone = driverIdSetToNone
            self.executorOrgId = executorOrgId
            self.executorOrgIdSetToNone = executorOrgIdSetToNone
            self.offChrtExecutorOrgDataId = offChrtExecutorOrgDataId
            self.offChrtExecutorOrgDataIdSetToNone = offChrtExecutorOrgDataIdSetToNone
            self.taskGroupType = taskGroupType
            self.vehicleType = vehicleType
            self.vehicleTypeSetToNone = vehicleTypeSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.coordinatorSetupNotes = try container.decodeIfPresent(String.self, forKey: .coordinatorSetupNotes)
            self.coordinatorSetupNotesSetToNone = try container.decodeIfPresent(Bool.self, forKey: .coordinatorSetupNotesSetToNone)
            self.driverId = try container.decodeIfPresent(String.self, forKey: .driverId)
            self.driverIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .driverIdSetToNone)
            self.executorOrgId = try container.decodeIfPresent(String.self, forKey: .executorOrgId)
            self.executorOrgIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .executorOrgIdSetToNone)
            self.offChrtExecutorOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtExecutorOrgDataId)
            self.offChrtExecutorOrgDataIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .offChrtExecutorOrgDataIdSetToNone)
            self.taskGroupType = try container.decodeIfPresent(TaskGroupTypeEnum1.self, forKey: .taskGroupType)
            self.vehicleType = try container.decodeIfPresent(VehicleTypeEnum.self, forKey: .vehicleType)
            self.vehicleTypeSetToNone = try container.decodeIfPresent(Bool.self, forKey: .vehicleTypeSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.coordinatorSetupNotes, forKey: .coordinatorSetupNotes)
            try container.encodeIfPresent(self.coordinatorSetupNotesSetToNone, forKey: .coordinatorSetupNotesSetToNone)
            try container.encodeIfPresent(self.driverId, forKey: .driverId)
            try container.encodeIfPresent(self.driverIdSetToNone, forKey: .driverIdSetToNone)
            try container.encodeIfPresent(self.executorOrgId, forKey: .executorOrgId)
            try container.encodeIfPresent(self.executorOrgIdSetToNone, forKey: .executorOrgIdSetToNone)
            try container.encodeIfPresent(self.offChrtExecutorOrgDataId, forKey: .offChrtExecutorOrgDataId)
            try container.encodeIfPresent(self.offChrtExecutorOrgDataIdSetToNone, forKey: .offChrtExecutorOrgDataIdSetToNone)
            try container.encodeIfPresent(self.taskGroupType, forKey: .taskGroupType)
            try container.encodeIfPresent(self.vehicleType, forKey: .vehicleType)
            try container.encodeIfPresent(self.vehicleTypeSetToNone, forKey: .vehicleTypeSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case coordinatorSetupNotes = "coordinator_setup_notes"
            case coordinatorSetupNotesSetToNone = "coordinator_setup_notes__set_to_None"
            case driverId = "driver_id"
            case driverIdSetToNone = "driver_id__set_to_None"
            case executorOrgId = "executor_org_id"
            case executorOrgIdSetToNone = "executor_org_id__set_to_None"
            case offChrtExecutorOrgDataId = "off_chrt_executor_org_data_id"
            case offChrtExecutorOrgDataIdSetToNone = "off_chrt_executor_org_data_id__set_to_None"
            case taskGroupType = "task_group_type"
            case vehicleType = "vehicle_type"
            case vehicleTypeSetToNone = "vehicle_type__set_to_None"
        }
    }
}