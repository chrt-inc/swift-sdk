import Foundation

extension Requests {
    public struct OrderTemplateClientCreate1: Codable, Hashable, Sendable {
        public let coordinatorLabel: String?
        /// Must be a string starting with `org_`
        public let coordinatorOrgId: String?
        public let departmentId: String?
        public let description: String?
        public let directoryEntryIds: [String]?
        public let driverIds: [String]?
        public let executorOrgIds: [String]?
        public let name: String
        public let offChrtExecutorOrgDataIds: [String]?
        public let offChrtReferenceIdStr: String?
        public let offChrtShipperOrgDataId: String?
        public let schemaVersion: Int
        /// Must be a string starting with `org_`
        public let shipperOrgId: String?
        public let taskListsToApplyAtOrderCreation: [TaskListToApplyToOrder1]?
        public let taskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]?
        public let text: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            coordinatorLabel: String? = nil,
            coordinatorOrgId: String? = nil,
            departmentId: String? = nil,
            description: String? = nil,
            directoryEntryIds: [String]? = nil,
            driverIds: [String]? = nil,
            executorOrgIds: [String]? = nil,
            name: String,
            offChrtExecutorOrgDataIds: [String]? = nil,
            offChrtReferenceIdStr: String? = nil,
            offChrtShipperOrgDataId: String? = nil,
            schemaVersion: Int,
            shipperOrgId: String? = nil,
            taskListsToApplyAtOrderCreation: [TaskListToApplyToOrder1]? = nil,
            taskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]? = nil,
            text: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.coordinatorLabel = coordinatorLabel
            self.coordinatorOrgId = coordinatorOrgId
            self.departmentId = departmentId
            self.description = description
            self.directoryEntryIds = directoryEntryIds
            self.driverIds = driverIds
            self.executorOrgIds = executorOrgIds
            self.name = name
            self.offChrtExecutorOrgDataIds = offChrtExecutorOrgDataIds
            self.offChrtReferenceIdStr = offChrtReferenceIdStr
            self.offChrtShipperOrgDataId = offChrtShipperOrgDataId
            self.schemaVersion = schemaVersion
            self.shipperOrgId = shipperOrgId
            self.taskListsToApplyAtOrderCreation = taskListsToApplyAtOrderCreation
            self.taskListsToApplyAtOrderStaging = taskListsToApplyAtOrderStaging
            self.text = text
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.coordinatorLabel = try container.decodeIfPresent(String.self, forKey: .coordinatorLabel)
            self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
            self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.directoryEntryIds = try container.decodeIfPresent([String].self, forKey: .directoryEntryIds)
            self.driverIds = try container.decodeIfPresent([String].self, forKey: .driverIds)
            self.executorOrgIds = try container.decodeIfPresent([String].self, forKey: .executorOrgIds)
            self.name = try container.decode(String.self, forKey: .name)
            self.offChrtExecutorOrgDataIds = try container.decodeIfPresent([String].self, forKey: .offChrtExecutorOrgDataIds)
            self.offChrtReferenceIdStr = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceIdStr)
            self.offChrtShipperOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgDataId)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
            self.taskListsToApplyAtOrderCreation = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .taskListsToApplyAtOrderCreation)
            self.taskListsToApplyAtOrderStaging = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .taskListsToApplyAtOrderStaging)
            self.text = try container.decodeIfPresent(String.self, forKey: .text)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.coordinatorLabel, forKey: .coordinatorLabel)
            try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
            try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.directoryEntryIds, forKey: .directoryEntryIds)
            try container.encodeIfPresent(self.driverIds, forKey: .driverIds)
            try container.encodeIfPresent(self.executorOrgIds, forKey: .executorOrgIds)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.offChrtExecutorOrgDataIds, forKey: .offChrtExecutorOrgDataIds)
            try container.encodeIfPresent(self.offChrtReferenceIdStr, forKey: .offChrtReferenceIdStr)
            try container.encodeIfPresent(self.offChrtShipperOrgDataId, forKey: .offChrtShipperOrgDataId)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
            try container.encodeIfPresent(self.taskListsToApplyAtOrderCreation, forKey: .taskListsToApplyAtOrderCreation)
            try container.encodeIfPresent(self.taskListsToApplyAtOrderStaging, forKey: .taskListsToApplyAtOrderStaging)
            try container.encodeIfPresent(self.text, forKey: .text)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case coordinatorLabel = "coordinator_label"
            case coordinatorOrgId = "coordinator_org_id"
            case departmentId = "department_id"
            case description
            case directoryEntryIds = "directory_entry_ids"
            case driverIds = "driver_ids"
            case executorOrgIds = "executor_org_ids"
            case name
            case offChrtExecutorOrgDataIds = "off_chrt_executor_org_data_ids"
            case offChrtReferenceIdStr = "off_chrt_reference_id_str"
            case offChrtShipperOrgDataId = "off_chrt_shipper_org_data_id"
            case schemaVersion = "schema_version"
            case shipperOrgId = "shipper_org_id"
            case taskListsToApplyAtOrderCreation = "task_lists_to_apply_at_order_creation"
            case taskListsToApplyAtOrderStaging = "task_lists_to_apply_at_order_staging"
            case text
        }
    }
}