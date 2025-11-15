import Foundation

extension Requests {
    public struct OrderDraftExpandedListReq: Codable, Hashable, Sendable {
        public let expandTaskGroups: Bool?
        public let expandTasks: Bool?
        public let expandTaskArtifacts: Bool?
        public let expandCargos: Bool?
        public let expandShipperContacts: Bool?
        public let expandShipperOrgCompanyName: Bool?
        public let expandShipperOrgHandle: Bool?
        public let expandOffChrtShipperOrgCompanyName: Bool?
        public let expandForwarderOrgCompanyName: Bool?
        public let expandForwarderOrgHandle: Bool?
        public let expandTaskGroupCourierOrgCompanyNames: Bool?
        public let expandTaskGroupCourierOrgHandles: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            expandTaskGroups: Bool? = nil,
            expandTasks: Bool? = nil,
            expandTaskArtifacts: Bool? = nil,
            expandCargos: Bool? = nil,
            expandShipperContacts: Bool? = nil,
            expandShipperOrgCompanyName: Bool? = nil,
            expandShipperOrgHandle: Bool? = nil,
            expandOffChrtShipperOrgCompanyName: Bool? = nil,
            expandForwarderOrgCompanyName: Bool? = nil,
            expandForwarderOrgHandle: Bool? = nil,
            expandTaskGroupCourierOrgCompanyNames: Bool? = nil,
            expandTaskGroupCourierOrgHandles: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.expandTaskGroups = expandTaskGroups
            self.expandTasks = expandTasks
            self.expandTaskArtifacts = expandTaskArtifacts
            self.expandCargos = expandCargos
            self.expandShipperContacts = expandShipperContacts
            self.expandShipperOrgCompanyName = expandShipperOrgCompanyName
            self.expandShipperOrgHandle = expandShipperOrgHandle
            self.expandOffChrtShipperOrgCompanyName = expandOffChrtShipperOrgCompanyName
            self.expandForwarderOrgCompanyName = expandForwarderOrgCompanyName
            self.expandForwarderOrgHandle = expandForwarderOrgHandle
            self.expandTaskGroupCourierOrgCompanyNames = expandTaskGroupCourierOrgCompanyNames
            self.expandTaskGroupCourierOrgHandles = expandTaskGroupCourierOrgHandles
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.expandTaskGroups = try container.decodeIfPresent(Bool.self, forKey: .expandTaskGroups)
            self.expandTasks = try container.decodeIfPresent(Bool.self, forKey: .expandTasks)
            self.expandTaskArtifacts = try container.decodeIfPresent(Bool.self, forKey: .expandTaskArtifacts)
            self.expandCargos = try container.decodeIfPresent(Bool.self, forKey: .expandCargos)
            self.expandShipperContacts = try container.decodeIfPresent(Bool.self, forKey: .expandShipperContacts)
            self.expandShipperOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandShipperOrgCompanyName)
            self.expandShipperOrgHandle = try container.decodeIfPresent(Bool.self, forKey: .expandShipperOrgHandle)
            self.expandOffChrtShipperOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandOffChrtShipperOrgCompanyName)
            self.expandForwarderOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandForwarderOrgCompanyName)
            self.expandForwarderOrgHandle = try container.decodeIfPresent(Bool.self, forKey: .expandForwarderOrgHandle)
            self.expandTaskGroupCourierOrgCompanyNames = try container.decodeIfPresent(Bool.self, forKey: .expandTaskGroupCourierOrgCompanyNames)
            self.expandTaskGroupCourierOrgHandles = try container.decodeIfPresent(Bool.self, forKey: .expandTaskGroupCourierOrgHandles)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.expandTaskGroups, forKey: .expandTaskGroups)
            try container.encodeIfPresent(self.expandTasks, forKey: .expandTasks)
            try container.encodeIfPresent(self.expandTaskArtifacts, forKey: .expandTaskArtifacts)
            try container.encodeIfPresent(self.expandCargos, forKey: .expandCargos)
            try container.encodeIfPresent(self.expandShipperContacts, forKey: .expandShipperContacts)
            try container.encodeIfPresent(self.expandShipperOrgCompanyName, forKey: .expandShipperOrgCompanyName)
            try container.encodeIfPresent(self.expandShipperOrgHandle, forKey: .expandShipperOrgHandle)
            try container.encodeIfPresent(self.expandOffChrtShipperOrgCompanyName, forKey: .expandOffChrtShipperOrgCompanyName)
            try container.encodeIfPresent(self.expandForwarderOrgCompanyName, forKey: .expandForwarderOrgCompanyName)
            try container.encodeIfPresent(self.expandForwarderOrgHandle, forKey: .expandForwarderOrgHandle)
            try container.encodeIfPresent(self.expandTaskGroupCourierOrgCompanyNames, forKey: .expandTaskGroupCourierOrgCompanyNames)
            try container.encodeIfPresent(self.expandTaskGroupCourierOrgHandles, forKey: .expandTaskGroupCourierOrgHandles)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case expandTaskGroups = "expand_task_groups"
            case expandTasks = "expand_tasks"
            case expandTaskArtifacts = "expand_task_artifacts"
            case expandCargos = "expand_cargos"
            case expandShipperContacts = "expand_shipper_contacts"
            case expandShipperOrgCompanyName = "expand_shipper_org_company_name"
            case expandShipperOrgHandle = "expand_shipper_org_handle"
            case expandOffChrtShipperOrgCompanyName = "expand_off_chrt_shipper_org_company_name"
            case expandForwarderOrgCompanyName = "expand_forwarder_org_company_name"
            case expandForwarderOrgHandle = "expand_forwarder_org_handle"
            case expandTaskGroupCourierOrgCompanyNames = "expand_task_group_courier_org_company_names"
            case expandTaskGroupCourierOrgHandles = "expand_task_group_courier_org_handles"
        }
    }
}