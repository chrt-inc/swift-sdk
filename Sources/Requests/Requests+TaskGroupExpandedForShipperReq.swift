import Foundation

extension Requests {
    public struct TaskGroupExpandedForShipperReq: Codable, Hashable, Sendable {
        public let expandTasks: Bool?
        public let expandCargos: Bool?
        public let expandMilestones: Bool?
        public let expandShipperContactInfo: Bool?
        public let expandCourierOrgCompanyName: Bool?
        public let expandCourierOrgHandle: Bool?
        public let expandTaskGroupMileage: Bool?
        public let expandDriver: Bool?
        public let expandShipperPayCourierLineItemGroups: Bool?
        public let expandShipperPayCourierRateSheet: Bool?
        public let expandShipperPayCourierPayment: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            expandTasks: Bool? = nil,
            expandCargos: Bool? = nil,
            expandMilestones: Bool? = nil,
            expandShipperContactInfo: Bool? = nil,
            expandCourierOrgCompanyName: Bool? = nil,
            expandCourierOrgHandle: Bool? = nil,
            expandTaskGroupMileage: Bool? = nil,
            expandDriver: Bool? = nil,
            expandShipperPayCourierLineItemGroups: Bool? = nil,
            expandShipperPayCourierRateSheet: Bool? = nil,
            expandShipperPayCourierPayment: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.expandTasks = expandTasks
            self.expandCargos = expandCargos
            self.expandMilestones = expandMilestones
            self.expandShipperContactInfo = expandShipperContactInfo
            self.expandCourierOrgCompanyName = expandCourierOrgCompanyName
            self.expandCourierOrgHandle = expandCourierOrgHandle
            self.expandTaskGroupMileage = expandTaskGroupMileage
            self.expandDriver = expandDriver
            self.expandShipperPayCourierLineItemGroups = expandShipperPayCourierLineItemGroups
            self.expandShipperPayCourierRateSheet = expandShipperPayCourierRateSheet
            self.expandShipperPayCourierPayment = expandShipperPayCourierPayment
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.expandTasks = try container.decodeIfPresent(Bool.self, forKey: .expandTasks)
            self.expandCargos = try container.decodeIfPresent(Bool.self, forKey: .expandCargos)
            self.expandMilestones = try container.decodeIfPresent(Bool.self, forKey: .expandMilestones)
            self.expandShipperContactInfo = try container.decodeIfPresent(Bool.self, forKey: .expandShipperContactInfo)
            self.expandCourierOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandCourierOrgCompanyName)
            self.expandCourierOrgHandle = try container.decodeIfPresent(Bool.self, forKey: .expandCourierOrgHandle)
            self.expandTaskGroupMileage = try container.decodeIfPresent(Bool.self, forKey: .expandTaskGroupMileage)
            self.expandDriver = try container.decodeIfPresent(Bool.self, forKey: .expandDriver)
            self.expandShipperPayCourierLineItemGroups = try container.decodeIfPresent(Bool.self, forKey: .expandShipperPayCourierLineItemGroups)
            self.expandShipperPayCourierRateSheet = try container.decodeIfPresent(Bool.self, forKey: .expandShipperPayCourierRateSheet)
            self.expandShipperPayCourierPayment = try container.decodeIfPresent(Bool.self, forKey: .expandShipperPayCourierPayment)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.expandTasks, forKey: .expandTasks)
            try container.encodeIfPresent(self.expandCargos, forKey: .expandCargos)
            try container.encodeIfPresent(self.expandMilestones, forKey: .expandMilestones)
            try container.encodeIfPresent(self.expandShipperContactInfo, forKey: .expandShipperContactInfo)
            try container.encodeIfPresent(self.expandCourierOrgCompanyName, forKey: .expandCourierOrgCompanyName)
            try container.encodeIfPresent(self.expandCourierOrgHandle, forKey: .expandCourierOrgHandle)
            try container.encodeIfPresent(self.expandTaskGroupMileage, forKey: .expandTaskGroupMileage)
            try container.encodeIfPresent(self.expandDriver, forKey: .expandDriver)
            try container.encodeIfPresent(self.expandShipperPayCourierLineItemGroups, forKey: .expandShipperPayCourierLineItemGroups)
            try container.encodeIfPresent(self.expandShipperPayCourierRateSheet, forKey: .expandShipperPayCourierRateSheet)
            try container.encodeIfPresent(self.expandShipperPayCourierPayment, forKey: .expandShipperPayCourierPayment)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case expandTasks = "expand_tasks"
            case expandCargos = "expand_cargos"
            case expandMilestones = "expand_milestones"
            case expandShipperContactInfo = "expand_shipper_contact_info"
            case expandCourierOrgCompanyName = "expand_courier_org_company_name"
            case expandCourierOrgHandle = "expand_courier_org_handle"
            case expandTaskGroupMileage = "expand_task_group_mileage"
            case expandDriver = "expand_driver"
            case expandShipperPayCourierLineItemGroups = "expand_shipper_pay_courier_line_item_groups"
            case expandShipperPayCourierRateSheet = "expand_shipper_pay_courier_rate_sheet"
            case expandShipperPayCourierPayment = "expand_shipper_pay_courier_payment"
        }
    }
}