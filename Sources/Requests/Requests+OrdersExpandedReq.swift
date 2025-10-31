import Foundation

extension Requests {
    public struct OrdersExpandedReq: Codable, Hashable, Sendable {
        public let orderIdOrShortId: String
        public let expandTaskGroups: Bool?
        public let expandTasks: Bool?
        public let expandMilestones: Bool?
        public let expandCargos: Bool?
        public let expandShipperContactInfos: Bool?
        public let expandCourierOrgCompanyName: Bool?
        public let expandCourierOrgCompanyHandle: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orderIdOrShortId: String,
            expandTaskGroups: Bool? = nil,
            expandTasks: Bool? = nil,
            expandMilestones: Bool? = nil,
            expandCargos: Bool? = nil,
            expandShipperContactInfos: Bool? = nil,
            expandCourierOrgCompanyName: Bool? = nil,
            expandCourierOrgCompanyHandle: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orderIdOrShortId = orderIdOrShortId
            self.expandTaskGroups = expandTaskGroups
            self.expandTasks = expandTasks
            self.expandMilestones = expandMilestones
            self.expandCargos = expandCargos
            self.expandShipperContactInfos = expandShipperContactInfos
            self.expandCourierOrgCompanyName = expandCourierOrgCompanyName
            self.expandCourierOrgCompanyHandle = expandCourierOrgCompanyHandle
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orderIdOrShortId = try container.decode(String.self, forKey: .orderIdOrShortId)
            self.expandTaskGroups = try container.decodeIfPresent(Bool.self, forKey: .expandTaskGroups)
            self.expandTasks = try container.decodeIfPresent(Bool.self, forKey: .expandTasks)
            self.expandMilestones = try container.decodeIfPresent(Bool.self, forKey: .expandMilestones)
            self.expandCargos = try container.decodeIfPresent(Bool.self, forKey: .expandCargos)
            self.expandShipperContactInfos = try container.decodeIfPresent(Bool.self, forKey: .expandShipperContactInfos)
            self.expandCourierOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandCourierOrgCompanyName)
            self.expandCourierOrgCompanyHandle = try container.decodeIfPresent(Bool.self, forKey: .expandCourierOrgCompanyHandle)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.orderIdOrShortId, forKey: .orderIdOrShortId)
            try container.encodeIfPresent(self.expandTaskGroups, forKey: .expandTaskGroups)
            try container.encodeIfPresent(self.expandTasks, forKey: .expandTasks)
            try container.encodeIfPresent(self.expandMilestones, forKey: .expandMilestones)
            try container.encodeIfPresent(self.expandCargos, forKey: .expandCargos)
            try container.encodeIfPresent(self.expandShipperContactInfos, forKey: .expandShipperContactInfos)
            try container.encodeIfPresent(self.expandCourierOrgCompanyName, forKey: .expandCourierOrgCompanyName)
            try container.encodeIfPresent(self.expandCourierOrgCompanyHandle, forKey: .expandCourierOrgCompanyHandle)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orderIdOrShortId = "order_id_or_short_id"
            case expandTaskGroups = "expand_task_groups"
            case expandTasks = "expand_tasks"
            case expandMilestones = "expand_milestones"
            case expandCargos = "expand_cargos"
            case expandShipperContactInfos = "expand_shipper_contact_infos"
            case expandCourierOrgCompanyName = "expand_courier_org_company_name"
            case expandCourierOrgCompanyHandle = "expand_courier_org_company_handle"
        }
    }
}