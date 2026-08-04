import Foundation

extension Requests {
    public struct OrderTemplateNewClientCreate1: Codable, Hashable, Sendable {
        public let cargos: [OrderTemplateNewCargo1]?
        public let coordinatorDepartmentId: String?
        public let coordinatorLabel: String?
        /// Must be a string starting with `org_`
        public let coordinatorOrgId: String?
        public let description: String?
        public let name: String
        /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
        public let offChrtReferenceId: String?
        public let offChrtShipperOrgDataId: String?
        public let schemaVersion: Int
        /// Must be a string starting with `org_`
        public let shipperOrgId: String?
        public let taskGroups: [OrderTemplateNewTaskGroup1]?
        public let taskListsToApplyAtOrderCreation: [TaskListToApplyToOrder1]?
        public let taskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            cargos: [OrderTemplateNewCargo1]? = nil,
            coordinatorDepartmentId: String? = nil,
            coordinatorLabel: String? = nil,
            coordinatorOrgId: String? = nil,
            description: String? = nil,
            name: String,
            offChrtReferenceId: String? = nil,
            offChrtShipperOrgDataId: String? = nil,
            schemaVersion: Int,
            shipperOrgId: String? = nil,
            taskGroups: [OrderTemplateNewTaskGroup1]? = nil,
            taskListsToApplyAtOrderCreation: [TaskListToApplyToOrder1]? = nil,
            taskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.cargos = cargos
            self.coordinatorDepartmentId = coordinatorDepartmentId
            self.coordinatorLabel = coordinatorLabel
            self.coordinatorOrgId = coordinatorOrgId
            self.description = description
            self.name = name
            self.offChrtReferenceId = offChrtReferenceId
            self.offChrtShipperOrgDataId = offChrtShipperOrgDataId
            self.schemaVersion = schemaVersion
            self.shipperOrgId = shipperOrgId
            self.taskGroups = taskGroups
            self.taskListsToApplyAtOrderCreation = taskListsToApplyAtOrderCreation
            self.taskListsToApplyAtOrderStaging = taskListsToApplyAtOrderStaging
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.cargos = try container.decodeIfPresent([OrderTemplateNewCargo1].self, forKey: .cargos)
            self.coordinatorDepartmentId = try container.decodeIfPresent(String.self, forKey: .coordinatorDepartmentId)
            self.coordinatorLabel = try container.decodeIfPresent(String.self, forKey: .coordinatorLabel)
            self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.name = try container.decode(String.self, forKey: .name)
            self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
            self.offChrtShipperOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgDataId)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
            self.taskGroups = try container.decodeIfPresent([OrderTemplateNewTaskGroup1].self, forKey: .taskGroups)
            self.taskListsToApplyAtOrderCreation = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .taskListsToApplyAtOrderCreation)
            self.taskListsToApplyAtOrderStaging = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .taskListsToApplyAtOrderStaging)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.cargos, forKey: .cargos)
            try container.encodeIfPresent(self.coordinatorDepartmentId, forKey: .coordinatorDepartmentId)
            try container.encodeIfPresent(self.coordinatorLabel, forKey: .coordinatorLabel)
            try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
            try container.encodeIfPresent(self.offChrtShipperOrgDataId, forKey: .offChrtShipperOrgDataId)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
            try container.encodeIfPresent(self.taskGroups, forKey: .taskGroups)
            try container.encodeIfPresent(self.taskListsToApplyAtOrderCreation, forKey: .taskListsToApplyAtOrderCreation)
            try container.encodeIfPresent(self.taskListsToApplyAtOrderStaging, forKey: .taskListsToApplyAtOrderStaging)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case cargos
            case coordinatorDepartmentId = "coordinator_department_id"
            case coordinatorLabel = "coordinator_label"
            case coordinatorOrgId = "coordinator_org_id"
            case description
            case name
            case offChrtReferenceId = "off_chrt_reference_id"
            case offChrtShipperOrgDataId = "off_chrt_shipper_org_data_id"
            case schemaVersion = "schema_version"
            case shipperOrgId = "shipper_org_id"
            case taskGroups = "task_groups"
            case taskListsToApplyAtOrderCreation = "task_lists_to_apply_at_order_creation"
            case taskListsToApplyAtOrderStaging = "task_lists_to_apply_at_order_staging"
        }
    }
}