import Foundation

extension Requests {
    public struct TaskGroupsExpandedReq: Codable, Hashable, Sendable {
        public let taskGroupStatuses: [TaskGroupStatusEnum1]
        public let driverId: Nullable<String>?
        public let expandTasks: Bool?
        public let expandCargos: Bool?
        public let expandMilestones: Bool?
        public let expandShipperContactInfo: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            taskGroupStatuses: [TaskGroupStatusEnum1],
            driverId: Nullable<String>? = nil,
            expandTasks: Bool? = nil,
            expandCargos: Bool? = nil,
            expandMilestones: Bool? = nil,
            expandShipperContactInfo: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.taskGroupStatuses = taskGroupStatuses
            self.driverId = driverId
            self.expandTasks = expandTasks
            self.expandCargos = expandCargos
            self.expandMilestones = expandMilestones
            self.expandShipperContactInfo = expandShipperContactInfo
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.taskGroupStatuses = try container.decode([TaskGroupStatusEnum1].self, forKey: .taskGroupStatuses)
            self.driverId = try container.decodeNullableIfPresent(String.self, forKey: .driverId)
            self.expandTasks = try container.decodeIfPresent(Bool.self, forKey: .expandTasks)
            self.expandCargos = try container.decodeIfPresent(Bool.self, forKey: .expandCargos)
            self.expandMilestones = try container.decodeIfPresent(Bool.self, forKey: .expandMilestones)
            self.expandShipperContactInfo = try container.decodeIfPresent(Bool.self, forKey: .expandShipperContactInfo)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.taskGroupStatuses, forKey: .taskGroupStatuses)
            try container.encodeNullableIfPresent(self.driverId, forKey: .driverId)
            try container.encodeIfPresent(self.expandTasks, forKey: .expandTasks)
            try container.encodeIfPresent(self.expandCargos, forKey: .expandCargos)
            try container.encodeIfPresent(self.expandMilestones, forKey: .expandMilestones)
            try container.encodeIfPresent(self.expandShipperContactInfo, forKey: .expandShipperContactInfo)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case taskGroupStatuses = "task_group_statuses"
            case driverId = "driver_id"
            case expandTasks = "expand_tasks"
            case expandCargos = "expand_cargos"
            case expandMilestones = "expand_milestones"
            case expandShipperContactInfo = "expand_shipper_contact_info"
        }
    }
}