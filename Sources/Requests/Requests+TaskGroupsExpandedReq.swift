import Foundation

extension Requests {
    public struct TaskGroupsExpandedReq: Codable, Hashable, Sendable {
        public let taskGroupStatuses: [TaskGroupStatusEnum1]
        public let driverId: Nullable<String>?
        public let expandTasks: Bool?
        public let expandCargos: Bool?
        public let expandMilestones: Bool?
        public let expandShipperContactInfo: Bool?
        public let expandOrderOrgCompanyName: Bool?
        public let expandOrderOrgHandle: Bool?
        public let expandTaskGroupMileage: Bool?
        public let expandCourierPayDriverLineItemGroups: Bool?
        public let expandCourierPayDriverRateSheet: Bool?
        public let expandCourierPayDriverPayout: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            taskGroupStatuses: [TaskGroupStatusEnum1],
            driverId: Nullable<String>? = nil,
            expandTasks: Bool? = nil,
            expandCargos: Bool? = nil,
            expandMilestones: Bool? = nil,
            expandShipperContactInfo: Bool? = nil,
            expandOrderOrgCompanyName: Bool? = nil,
            expandOrderOrgHandle: Bool? = nil,
            expandTaskGroupMileage: Bool? = nil,
            expandCourierPayDriverLineItemGroups: Bool? = nil,
            expandCourierPayDriverRateSheet: Bool? = nil,
            expandCourierPayDriverPayout: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.taskGroupStatuses = taskGroupStatuses
            self.driverId = driverId
            self.expandTasks = expandTasks
            self.expandCargos = expandCargos
            self.expandMilestones = expandMilestones
            self.expandShipperContactInfo = expandShipperContactInfo
            self.expandOrderOrgCompanyName = expandOrderOrgCompanyName
            self.expandOrderOrgHandle = expandOrderOrgHandle
            self.expandTaskGroupMileage = expandTaskGroupMileage
            self.expandCourierPayDriverLineItemGroups = expandCourierPayDriverLineItemGroups
            self.expandCourierPayDriverRateSheet = expandCourierPayDriverRateSheet
            self.expandCourierPayDriverPayout = expandCourierPayDriverPayout
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
            self.expandOrderOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandOrderOrgCompanyName)
            self.expandOrderOrgHandle = try container.decodeIfPresent(Bool.self, forKey: .expandOrderOrgHandle)
            self.expandTaskGroupMileage = try container.decodeIfPresent(Bool.self, forKey: .expandTaskGroupMileage)
            self.expandCourierPayDriverLineItemGroups = try container.decodeIfPresent(Bool.self, forKey: .expandCourierPayDriverLineItemGroups)
            self.expandCourierPayDriverRateSheet = try container.decodeIfPresent(Bool.self, forKey: .expandCourierPayDriverRateSheet)
            self.expandCourierPayDriverPayout = try container.decodeIfPresent(Bool.self, forKey: .expandCourierPayDriverPayout)
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
            try container.encodeIfPresent(self.expandOrderOrgCompanyName, forKey: .expandOrderOrgCompanyName)
            try container.encodeIfPresent(self.expandOrderOrgHandle, forKey: .expandOrderOrgHandle)
            try container.encodeIfPresent(self.expandTaskGroupMileage, forKey: .expandTaskGroupMileage)
            try container.encodeIfPresent(self.expandCourierPayDriverLineItemGroups, forKey: .expandCourierPayDriverLineItemGroups)
            try container.encodeIfPresent(self.expandCourierPayDriverRateSheet, forKey: .expandCourierPayDriverRateSheet)
            try container.encodeIfPresent(self.expandCourierPayDriverPayout, forKey: .expandCourierPayDriverPayout)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case taskGroupStatuses = "task_group_statuses"
            case driverId = "driver_id"
            case expandTasks = "expand_tasks"
            case expandCargos = "expand_cargos"
            case expandMilestones = "expand_milestones"
            case expandShipperContactInfo = "expand_shipper_contact_info"
            case expandOrderOrgCompanyName = "expand_order_org_company_name"
            case expandOrderOrgHandle = "expand_order_org_handle"
            case expandTaskGroupMileage = "expand_task_group_mileage"
            case expandCourierPayDriverLineItemGroups = "expand_courier_pay_driver_line_item_groups"
            case expandCourierPayDriverRateSheet = "expand_courier_pay_driver_rate_sheet"
            case expandCourierPayDriverPayout = "expand_courier_pay_driver_payout"
        }
    }
}