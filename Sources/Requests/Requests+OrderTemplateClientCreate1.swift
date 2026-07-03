import Foundation

extension Requests {
    public struct OrderTemplateClientCreate1: Codable, Hashable, Sendable {
        public let caseTag: String?
        /// Must be a string starting with `org_`
        public let coordinatorOrgId: String?
        public let departmentId: String?
        public let description: String?
        public let directoryEntryIds: [String]?
        public let driverIds: [String]?
        public let executorOrgIds: [String]?
        public let name: String
        public let offChrtExecutorOrgIds: [String]?
        public let offChrtReferenceIdStr: String?
        public let offChrtShipperOrgId: String?
        public let schemaVersion: Int
        /// Must be a string starting with `org_`
        public let shipperOrgId: String?
        public let taskListIds: [String]?
        public let text: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            caseTag: String? = nil,
            coordinatorOrgId: String? = nil,
            departmentId: String? = nil,
            description: String? = nil,
            directoryEntryIds: [String]? = nil,
            driverIds: [String]? = nil,
            executorOrgIds: [String]? = nil,
            name: String,
            offChrtExecutorOrgIds: [String]? = nil,
            offChrtReferenceIdStr: String? = nil,
            offChrtShipperOrgId: String? = nil,
            schemaVersion: Int,
            shipperOrgId: String? = nil,
            taskListIds: [String]? = nil,
            text: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.caseTag = caseTag
            self.coordinatorOrgId = coordinatorOrgId
            self.departmentId = departmentId
            self.description = description
            self.directoryEntryIds = directoryEntryIds
            self.driverIds = driverIds
            self.executorOrgIds = executorOrgIds
            self.name = name
            self.offChrtExecutorOrgIds = offChrtExecutorOrgIds
            self.offChrtReferenceIdStr = offChrtReferenceIdStr
            self.offChrtShipperOrgId = offChrtShipperOrgId
            self.schemaVersion = schemaVersion
            self.shipperOrgId = shipperOrgId
            self.taskListIds = taskListIds
            self.text = text
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.caseTag = try container.decodeIfPresent(String.self, forKey: .caseTag)
            self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
            self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.directoryEntryIds = try container.decodeIfPresent([String].self, forKey: .directoryEntryIds)
            self.driverIds = try container.decodeIfPresent([String].self, forKey: .driverIds)
            self.executorOrgIds = try container.decodeIfPresent([String].self, forKey: .executorOrgIds)
            self.name = try container.decode(String.self, forKey: .name)
            self.offChrtExecutorOrgIds = try container.decodeIfPresent([String].self, forKey: .offChrtExecutorOrgIds)
            self.offChrtReferenceIdStr = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceIdStr)
            self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
            self.taskListIds = try container.decodeIfPresent([String].self, forKey: .taskListIds)
            self.text = try container.decodeIfPresent(String.self, forKey: .text)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.caseTag, forKey: .caseTag)
            try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
            try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.directoryEntryIds, forKey: .directoryEntryIds)
            try container.encodeIfPresent(self.driverIds, forKey: .driverIds)
            try container.encodeIfPresent(self.executorOrgIds, forKey: .executorOrgIds)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.offChrtExecutorOrgIds, forKey: .offChrtExecutorOrgIds)
            try container.encodeIfPresent(self.offChrtReferenceIdStr, forKey: .offChrtReferenceIdStr)
            try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
            try container.encodeIfPresent(self.taskListIds, forKey: .taskListIds)
            try container.encodeIfPresent(self.text, forKey: .text)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case caseTag = "case_tag"
            case coordinatorOrgId = "coordinator_org_id"
            case departmentId = "department_id"
            case description
            case directoryEntryIds = "directory_entry_ids"
            case driverIds = "driver_ids"
            case executorOrgIds = "executor_org_ids"
            case name
            case offChrtExecutorOrgIds = "off_chrt_executor_org_ids"
            case offChrtReferenceIdStr = "off_chrt_reference_id_str"
            case offChrtShipperOrgId = "off_chrt_shipper_org_id"
            case schemaVersion = "schema_version"
            case shipperOrgId = "shipper_org_id"
            case taskListIds = "task_list_ids"
            case text
        }
    }
}