import Foundation

extension Requests {
    public struct OrderTemplateNewClientUpdate1: Codable, Hashable, Sendable {
        public let coordinatorDepartmentId: String?
        public let coordinatorDepartmentIdSetToNone: Bool?
        public let coordinatorLabel: String?
        public let coordinatorLabelSetToNone: Bool?
        /// Must be a string starting with `org_`
        public let coordinatorOrgId: String?
        public let coordinatorOrgIdSetToNone: Bool?
        public let coordinatorShipperAccountIds: [String]?
        public let description: String?
        public let descriptionSetToNone: Bool?
        public let name: String?
        /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
        public let offChrtReferenceId: String?
        public let offChrtReferenceIdSetToNone: Bool?
        public let offChrtShipperOrgDataId: String?
        public let offChrtShipperOrgDataIdSetToNone: Bool?
        /// Must be a string starting with `org_`
        public let shipperOrgId: String?
        public let shipperOrgIdSetToNone: Bool?
        public let taskListsToApplyAtOrderCreation: [TaskListToApplyToOrder1]?
        public let taskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            coordinatorDepartmentId: String? = nil,
            coordinatorDepartmentIdSetToNone: Bool? = nil,
            coordinatorLabel: String? = nil,
            coordinatorLabelSetToNone: Bool? = nil,
            coordinatorOrgId: String? = nil,
            coordinatorOrgIdSetToNone: Bool? = nil,
            coordinatorShipperAccountIds: [String]? = nil,
            description: String? = nil,
            descriptionSetToNone: Bool? = nil,
            name: String? = nil,
            offChrtReferenceId: String? = nil,
            offChrtReferenceIdSetToNone: Bool? = nil,
            offChrtShipperOrgDataId: String? = nil,
            offChrtShipperOrgDataIdSetToNone: Bool? = nil,
            shipperOrgId: String? = nil,
            shipperOrgIdSetToNone: Bool? = nil,
            taskListsToApplyAtOrderCreation: [TaskListToApplyToOrder1]? = nil,
            taskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.coordinatorDepartmentId = coordinatorDepartmentId
            self.coordinatorDepartmentIdSetToNone = coordinatorDepartmentIdSetToNone
            self.coordinatorLabel = coordinatorLabel
            self.coordinatorLabelSetToNone = coordinatorLabelSetToNone
            self.coordinatorOrgId = coordinatorOrgId
            self.coordinatorOrgIdSetToNone = coordinatorOrgIdSetToNone
            self.coordinatorShipperAccountIds = coordinatorShipperAccountIds
            self.description = description
            self.descriptionSetToNone = descriptionSetToNone
            self.name = name
            self.offChrtReferenceId = offChrtReferenceId
            self.offChrtReferenceIdSetToNone = offChrtReferenceIdSetToNone
            self.offChrtShipperOrgDataId = offChrtShipperOrgDataId
            self.offChrtShipperOrgDataIdSetToNone = offChrtShipperOrgDataIdSetToNone
            self.shipperOrgId = shipperOrgId
            self.shipperOrgIdSetToNone = shipperOrgIdSetToNone
            self.taskListsToApplyAtOrderCreation = taskListsToApplyAtOrderCreation
            self.taskListsToApplyAtOrderStaging = taskListsToApplyAtOrderStaging
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.coordinatorDepartmentId = try container.decodeIfPresent(String.self, forKey: .coordinatorDepartmentId)
            self.coordinatorDepartmentIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .coordinatorDepartmentIdSetToNone)
            self.coordinatorLabel = try container.decodeIfPresent(String.self, forKey: .coordinatorLabel)
            self.coordinatorLabelSetToNone = try container.decodeIfPresent(Bool.self, forKey: .coordinatorLabelSetToNone)
            self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
            self.coordinatorOrgIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .coordinatorOrgIdSetToNone)
            self.coordinatorShipperAccountIds = try container.decodeIfPresent([String].self, forKey: .coordinatorShipperAccountIds)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.descriptionSetToNone = try container.decodeIfPresent(Bool.self, forKey: .descriptionSetToNone)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
            self.offChrtReferenceIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .offChrtReferenceIdSetToNone)
            self.offChrtShipperOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgDataId)
            self.offChrtShipperOrgDataIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .offChrtShipperOrgDataIdSetToNone)
            self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
            self.shipperOrgIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .shipperOrgIdSetToNone)
            self.taskListsToApplyAtOrderCreation = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .taskListsToApplyAtOrderCreation)
            self.taskListsToApplyAtOrderStaging = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .taskListsToApplyAtOrderStaging)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.coordinatorDepartmentId, forKey: .coordinatorDepartmentId)
            try container.encodeIfPresent(self.coordinatorDepartmentIdSetToNone, forKey: .coordinatorDepartmentIdSetToNone)
            try container.encodeIfPresent(self.coordinatorLabel, forKey: .coordinatorLabel)
            try container.encodeIfPresent(self.coordinatorLabelSetToNone, forKey: .coordinatorLabelSetToNone)
            try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
            try container.encodeIfPresent(self.coordinatorOrgIdSetToNone, forKey: .coordinatorOrgIdSetToNone)
            try container.encodeIfPresent(self.coordinatorShipperAccountIds, forKey: .coordinatorShipperAccountIds)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.descriptionSetToNone, forKey: .descriptionSetToNone)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
            try container.encodeIfPresent(self.offChrtReferenceIdSetToNone, forKey: .offChrtReferenceIdSetToNone)
            try container.encodeIfPresent(self.offChrtShipperOrgDataId, forKey: .offChrtShipperOrgDataId)
            try container.encodeIfPresent(self.offChrtShipperOrgDataIdSetToNone, forKey: .offChrtShipperOrgDataIdSetToNone)
            try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
            try container.encodeIfPresent(self.shipperOrgIdSetToNone, forKey: .shipperOrgIdSetToNone)
            try container.encodeIfPresent(self.taskListsToApplyAtOrderCreation, forKey: .taskListsToApplyAtOrderCreation)
            try container.encodeIfPresent(self.taskListsToApplyAtOrderStaging, forKey: .taskListsToApplyAtOrderStaging)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case coordinatorDepartmentId = "coordinator_department_id"
            case coordinatorDepartmentIdSetToNone = "coordinator_department_id__set_to_None"
            case coordinatorLabel = "coordinator_label"
            case coordinatorLabelSetToNone = "coordinator_label__set_to_None"
            case coordinatorOrgId = "coordinator_org_id"
            case coordinatorOrgIdSetToNone = "coordinator_org_id__set_to_None"
            case coordinatorShipperAccountIds = "coordinator_shipper_account_ids"
            case description
            case descriptionSetToNone = "description__set_to_None"
            case name
            case offChrtReferenceId = "off_chrt_reference_id"
            case offChrtReferenceIdSetToNone = "off_chrt_reference_id__set_to_None"
            case offChrtShipperOrgDataId = "off_chrt_shipper_org_data_id"
            case offChrtShipperOrgDataIdSetToNone = "off_chrt_shipper_org_data_id__set_to_None"
            case shipperOrgId = "shipper_org_id"
            case shipperOrgIdSetToNone = "shipper_org_id__set_to_None"
            case taskListsToApplyAtOrderCreation = "task_lists_to_apply_at_order_creation"
            case taskListsToApplyAtOrderStaging = "task_lists_to_apply_at_order_staging"
        }
    }
}