import Foundation

extension Requests {
    public struct OrderTemplateClientUpdate1: Codable, Hashable, Sendable {
        public let caseTag: String?
        public let caseTagSetToNone: Bool?
        /// Must be a string starting with `org_`
        public let coordinatorOrgId: String?
        public let coordinatorOrgIdSetToNone: Bool?
        public let departmentId: String?
        public let departmentIdSetToNone: Bool?
        public let description: String?
        public let descriptionSetToNone: Bool?
        public let directoryEntryIds: [String]?
        public let driverIds: [String]?
        public let executorOrgIds: [String]?
        public let name: String?
        public let offChrtExecutorOrgIds: [String]?
        public let offChrtReferenceIdStr: String?
        public let offChrtReferenceIdStrSetToNone: Bool?
        public let offChrtShipperOrgId: String?
        public let offChrtShipperOrgIdSetToNone: Bool?
        /// Must be a string starting with `org_`
        public let shipperOrgId: String?
        public let shipperOrgIdSetToNone: Bool?
        public let taskListsToApplyAtOrderCreation: [TaskListToApplyToCase1]?
        public let taskListsToApplyAtOrderStaging: [TaskListToApplyToCase1]?
        public let text: String?
        public let textSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            caseTag: String? = nil,
            caseTagSetToNone: Bool? = nil,
            coordinatorOrgId: String? = nil,
            coordinatorOrgIdSetToNone: Bool? = nil,
            departmentId: String? = nil,
            departmentIdSetToNone: Bool? = nil,
            description: String? = nil,
            descriptionSetToNone: Bool? = nil,
            directoryEntryIds: [String]? = nil,
            driverIds: [String]? = nil,
            executorOrgIds: [String]? = nil,
            name: String? = nil,
            offChrtExecutorOrgIds: [String]? = nil,
            offChrtReferenceIdStr: String? = nil,
            offChrtReferenceIdStrSetToNone: Bool? = nil,
            offChrtShipperOrgId: String? = nil,
            offChrtShipperOrgIdSetToNone: Bool? = nil,
            shipperOrgId: String? = nil,
            shipperOrgIdSetToNone: Bool? = nil,
            taskListsToApplyAtOrderCreation: [TaskListToApplyToCase1]? = nil,
            taskListsToApplyAtOrderStaging: [TaskListToApplyToCase1]? = nil,
            text: String? = nil,
            textSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.caseTag = caseTag
            self.caseTagSetToNone = caseTagSetToNone
            self.coordinatorOrgId = coordinatorOrgId
            self.coordinatorOrgIdSetToNone = coordinatorOrgIdSetToNone
            self.departmentId = departmentId
            self.departmentIdSetToNone = departmentIdSetToNone
            self.description = description
            self.descriptionSetToNone = descriptionSetToNone
            self.directoryEntryIds = directoryEntryIds
            self.driverIds = driverIds
            self.executorOrgIds = executorOrgIds
            self.name = name
            self.offChrtExecutorOrgIds = offChrtExecutorOrgIds
            self.offChrtReferenceIdStr = offChrtReferenceIdStr
            self.offChrtReferenceIdStrSetToNone = offChrtReferenceIdStrSetToNone
            self.offChrtShipperOrgId = offChrtShipperOrgId
            self.offChrtShipperOrgIdSetToNone = offChrtShipperOrgIdSetToNone
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
            self.caseTag = try container.decodeIfPresent(String.self, forKey: .caseTag)
            self.caseTagSetToNone = try container.decodeIfPresent(Bool.self, forKey: .caseTagSetToNone)
            self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
            self.coordinatorOrgIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .coordinatorOrgIdSetToNone)
            self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
            self.departmentIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .departmentIdSetToNone)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.descriptionSetToNone = try container.decodeIfPresent(Bool.self, forKey: .descriptionSetToNone)
            self.directoryEntryIds = try container.decodeIfPresent([String].self, forKey: .directoryEntryIds)
            self.driverIds = try container.decodeIfPresent([String].self, forKey: .driverIds)
            self.executorOrgIds = try container.decodeIfPresent([String].self, forKey: .executorOrgIds)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.offChrtExecutorOrgIds = try container.decodeIfPresent([String].self, forKey: .offChrtExecutorOrgIds)
            self.offChrtReferenceIdStr = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceIdStr)
            self.offChrtReferenceIdStrSetToNone = try container.decodeIfPresent(Bool.self, forKey: .offChrtReferenceIdStrSetToNone)
            self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
            self.offChrtShipperOrgIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .offChrtShipperOrgIdSetToNone)
            self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
            self.shipperOrgIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .shipperOrgIdSetToNone)
            self.taskListsToApplyAtOrderCreation = try container.decodeIfPresent([TaskListToApplyToCase1].self, forKey: .taskListsToApplyAtOrderCreation)
            self.taskListsToApplyAtOrderStaging = try container.decodeIfPresent([TaskListToApplyToCase1].self, forKey: .taskListsToApplyAtOrderStaging)
            self.text = try container.decodeIfPresent(String.self, forKey: .text)
            self.textSetToNone = try container.decodeIfPresent(Bool.self, forKey: .textSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.caseTag, forKey: .caseTag)
            try container.encodeIfPresent(self.caseTagSetToNone, forKey: .caseTagSetToNone)
            try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
            try container.encodeIfPresent(self.coordinatorOrgIdSetToNone, forKey: .coordinatorOrgIdSetToNone)
            try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
            try container.encodeIfPresent(self.departmentIdSetToNone, forKey: .departmentIdSetToNone)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.descriptionSetToNone, forKey: .descriptionSetToNone)
            try container.encodeIfPresent(self.directoryEntryIds, forKey: .directoryEntryIds)
            try container.encodeIfPresent(self.driverIds, forKey: .driverIds)
            try container.encodeIfPresent(self.executorOrgIds, forKey: .executorOrgIds)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.offChrtExecutorOrgIds, forKey: .offChrtExecutorOrgIds)
            try container.encodeIfPresent(self.offChrtReferenceIdStr, forKey: .offChrtReferenceIdStr)
            try container.encodeIfPresent(self.offChrtReferenceIdStrSetToNone, forKey: .offChrtReferenceIdStrSetToNone)
            try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
            try container.encodeIfPresent(self.offChrtShipperOrgIdSetToNone, forKey: .offChrtShipperOrgIdSetToNone)
            try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
            try container.encodeIfPresent(self.shipperOrgIdSetToNone, forKey: .shipperOrgIdSetToNone)
            try container.encodeIfPresent(self.taskListsToApplyAtOrderCreation, forKey: .taskListsToApplyAtOrderCreation)
            try container.encodeIfPresent(self.taskListsToApplyAtOrderStaging, forKey: .taskListsToApplyAtOrderStaging)
            try container.encodeIfPresent(self.text, forKey: .text)
            try container.encodeIfPresent(self.textSetToNone, forKey: .textSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case caseTag = "case_tag"
            case caseTagSetToNone = "case_tag__set_to_None"
            case coordinatorOrgId = "coordinator_org_id"
            case coordinatorOrgIdSetToNone = "coordinator_org_id__set_to_None"
            case departmentId = "department_id"
            case departmentIdSetToNone = "department_id__set_to_None"
            case description
            case descriptionSetToNone = "description__set_to_None"
            case directoryEntryIds = "directory_entry_ids"
            case driverIds = "driver_ids"
            case executorOrgIds = "executor_org_ids"
            case name
            case offChrtExecutorOrgIds = "off_chrt_executor_org_ids"
            case offChrtReferenceIdStr = "off_chrt_reference_id_str"
            case offChrtReferenceIdStrSetToNone = "off_chrt_reference_id_str__set_to_None"
            case offChrtShipperOrgId = "off_chrt_shipper_org_id"
            case offChrtShipperOrgIdSetToNone = "off_chrt_shipper_org_id__set_to_None"
            case shipperOrgId = "shipper_org_id"
            case shipperOrgIdSetToNone = "shipper_org_id__set_to_None"
            case taskListsToApplyAtOrderCreation = "task_lists_to_apply_at_order_creation"
            case taskListsToApplyAtOrderStaging = "task_lists_to_apply_at_order_staging"
            case text
            case textSetToNone = "text__set_to_None"
        }
    }
}