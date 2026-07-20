import Foundation

extension Requests {
    public struct OrderTemplateClientUpdate1: Codable, Hashable, Sendable {
        public let contactIds: [String]?
        public let coordinatorLabel: String?
        public let coordinatorLabelSetToNone: Bool?
        /// Must be a string starting with `org_`
        public let coordinatorOrgId: String?
        public let coordinatorOrgIdSetToNone: Bool?
        public let coordinatorShipperAccountIds: [String]?
        public let departmentId: String?
        public let departmentIdSetToNone: Bool?
        public let description: String?
        public let descriptionSetToNone: Bool?
        public let driverIds: [String]?
        public let executorOrgIds: [String]?
        public let name: String?
        public let offChrtExecutorOrgDataIds: [String]?
        public let offChrtReferenceIdStr: String?
        public let offChrtReferenceIdStrSetToNone: Bool?
        public let offChrtShipperOrgDataId: String?
        public let offChrtShipperOrgDataIdSetToNone: Bool?
        /// Must be a string starting with `org_`
        public let shipperOrgId: String?
        public let shipperOrgIdSetToNone: Bool?
        public let taskListsToApplyAtOrderCreation: [TaskListToApplyToOrder1]?
        public let taskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]?
        public let text: String?
        public let textSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            contactIds: [String]? = nil,
            coordinatorLabel: String? = nil,
            coordinatorLabelSetToNone: Bool? = nil,
            coordinatorOrgId: String? = nil,
            coordinatorOrgIdSetToNone: Bool? = nil,
            coordinatorShipperAccountIds: [String]? = nil,
            departmentId: String? = nil,
            departmentIdSetToNone: Bool? = nil,
            description: String? = nil,
            descriptionSetToNone: Bool? = nil,
            driverIds: [String]? = nil,
            executorOrgIds: [String]? = nil,
            name: String? = nil,
            offChrtExecutorOrgDataIds: [String]? = nil,
            offChrtReferenceIdStr: String? = nil,
            offChrtReferenceIdStrSetToNone: Bool? = nil,
            offChrtShipperOrgDataId: String? = nil,
            offChrtShipperOrgDataIdSetToNone: Bool? = nil,
            shipperOrgId: String? = nil,
            shipperOrgIdSetToNone: Bool? = nil,
            taskListsToApplyAtOrderCreation: [TaskListToApplyToOrder1]? = nil,
            taskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]? = nil,
            text: String? = nil,
            textSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.contactIds = contactIds
            self.coordinatorLabel = coordinatorLabel
            self.coordinatorLabelSetToNone = coordinatorLabelSetToNone
            self.coordinatorOrgId = coordinatorOrgId
            self.coordinatorOrgIdSetToNone = coordinatorOrgIdSetToNone
            self.coordinatorShipperAccountIds = coordinatorShipperAccountIds
            self.departmentId = departmentId
            self.departmentIdSetToNone = departmentIdSetToNone
            self.description = description
            self.descriptionSetToNone = descriptionSetToNone
            self.driverIds = driverIds
            self.executorOrgIds = executorOrgIds
            self.name = name
            self.offChrtExecutorOrgDataIds = offChrtExecutorOrgDataIds
            self.offChrtReferenceIdStr = offChrtReferenceIdStr
            self.offChrtReferenceIdStrSetToNone = offChrtReferenceIdStrSetToNone
            self.offChrtShipperOrgDataId = offChrtShipperOrgDataId
            self.offChrtShipperOrgDataIdSetToNone = offChrtShipperOrgDataIdSetToNone
            self.shipperOrgId = shipperOrgId
            self.shipperOrgIdSetToNone = shipperOrgIdSetToNone
            self.taskListsToApplyAtOrderCreation = taskListsToApplyAtOrderCreation
            self.taskListsToApplyAtOrderStaging = taskListsToApplyAtOrderStaging
            self.text = text
            self.textSetToNone = textSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.contactIds = try container.decodeIfPresent([String].self, forKey: .contactIds)
            self.coordinatorLabel = try container.decodeIfPresent(String.self, forKey: .coordinatorLabel)
            self.coordinatorLabelSetToNone = try container.decodeIfPresent(Bool.self, forKey: .coordinatorLabelSetToNone)
            self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
            self.coordinatorOrgIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .coordinatorOrgIdSetToNone)
            self.coordinatorShipperAccountIds = try container.decodeIfPresent([String].self, forKey: .coordinatorShipperAccountIds)
            self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
            self.departmentIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .departmentIdSetToNone)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.descriptionSetToNone = try container.decodeIfPresent(Bool.self, forKey: .descriptionSetToNone)
            self.driverIds = try container.decodeIfPresent([String].self, forKey: .driverIds)
            self.executorOrgIds = try container.decodeIfPresent([String].self, forKey: .executorOrgIds)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.offChrtExecutorOrgDataIds = try container.decodeIfPresent([String].self, forKey: .offChrtExecutorOrgDataIds)
            self.offChrtReferenceIdStr = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceIdStr)
            self.offChrtReferenceIdStrSetToNone = try container.decodeIfPresent(Bool.self, forKey: .offChrtReferenceIdStrSetToNone)
            self.offChrtShipperOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgDataId)
            self.offChrtShipperOrgDataIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .offChrtShipperOrgDataIdSetToNone)
            self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
            self.shipperOrgIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .shipperOrgIdSetToNone)
            self.taskListsToApplyAtOrderCreation = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .taskListsToApplyAtOrderCreation)
            self.taskListsToApplyAtOrderStaging = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .taskListsToApplyAtOrderStaging)
            self.text = try container.decodeIfPresent(String.self, forKey: .text)
            self.textSetToNone = try container.decodeIfPresent(Bool.self, forKey: .textSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.contactIds, forKey: .contactIds)
            try container.encodeIfPresent(self.coordinatorLabel, forKey: .coordinatorLabel)
            try container.encodeIfPresent(self.coordinatorLabelSetToNone, forKey: .coordinatorLabelSetToNone)
            try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
            try container.encodeIfPresent(self.coordinatorOrgIdSetToNone, forKey: .coordinatorOrgIdSetToNone)
            try container.encodeIfPresent(self.coordinatorShipperAccountIds, forKey: .coordinatorShipperAccountIds)
            try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
            try container.encodeIfPresent(self.departmentIdSetToNone, forKey: .departmentIdSetToNone)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.descriptionSetToNone, forKey: .descriptionSetToNone)
            try container.encodeIfPresent(self.driverIds, forKey: .driverIds)
            try container.encodeIfPresent(self.executorOrgIds, forKey: .executorOrgIds)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.offChrtExecutorOrgDataIds, forKey: .offChrtExecutorOrgDataIds)
            try container.encodeIfPresent(self.offChrtReferenceIdStr, forKey: .offChrtReferenceIdStr)
            try container.encodeIfPresent(self.offChrtReferenceIdStrSetToNone, forKey: .offChrtReferenceIdStrSetToNone)
            try container.encodeIfPresent(self.offChrtShipperOrgDataId, forKey: .offChrtShipperOrgDataId)
            try container.encodeIfPresent(self.offChrtShipperOrgDataIdSetToNone, forKey: .offChrtShipperOrgDataIdSetToNone)
            try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
            try container.encodeIfPresent(self.shipperOrgIdSetToNone, forKey: .shipperOrgIdSetToNone)
            try container.encodeIfPresent(self.taskListsToApplyAtOrderCreation, forKey: .taskListsToApplyAtOrderCreation)
            try container.encodeIfPresent(self.taskListsToApplyAtOrderStaging, forKey: .taskListsToApplyAtOrderStaging)
            try container.encodeIfPresent(self.text, forKey: .text)
            try container.encodeIfPresent(self.textSetToNone, forKey: .textSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case contactIds = "contact_ids"
            case coordinatorLabel = "coordinator_label"
            case coordinatorLabelSetToNone = "coordinator_label__set_to_None"
            case coordinatorOrgId = "coordinator_org_id"
            case coordinatorOrgIdSetToNone = "coordinator_org_id__set_to_None"
            case coordinatorShipperAccountIds = "coordinator_shipper_account_ids"
            case departmentId = "department_id"
            case departmentIdSetToNone = "department_id__set_to_None"
            case description
            case descriptionSetToNone = "description__set_to_None"
            case driverIds = "driver_ids"
            case executorOrgIds = "executor_org_ids"
            case name
            case offChrtExecutorOrgDataIds = "off_chrt_executor_org_data_ids"
            case offChrtReferenceIdStr = "off_chrt_reference_id_str"
            case offChrtReferenceIdStrSetToNone = "off_chrt_reference_id_str__set_to_None"
            case offChrtShipperOrgDataId = "off_chrt_shipper_org_data_id"
            case offChrtShipperOrgDataIdSetToNone = "off_chrt_shipper_org_data_id__set_to_None"
            case shipperOrgId = "shipper_org_id"
            case shipperOrgIdSetToNone = "shipper_org_id__set_to_None"
            case taskListsToApplyAtOrderCreation = "task_lists_to_apply_at_order_creation"
            case taskListsToApplyAtOrderStaging = "task_lists_to_apply_at_order_staging"
            case text
            case textSetToNone = "text__set_to_None"
        }
    }
}