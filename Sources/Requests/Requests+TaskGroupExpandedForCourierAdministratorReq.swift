import Foundation

extension Requests {
    public struct TaskGroupExpandedForCourierAdministratorReq: Codable, Hashable, Sendable {
        public let sortCreatedAtDesc: Bool?
        public let page: Int?
        public let pageSize: Int?
        public let createdAtGte: Nullable<Date>?
        public let createdAtLte: Nullable<Date>?
        public let startedAtGte: Nullable<Date>?
        public let startedAtLte: Nullable<Date>?
        public let completedAtGte: Nullable<Date>?
        public let completedAtLte: Nullable<Date>?
        public let orderCancelled: Nullable<Bool>?
        public let statuses: Nullable<[TaskGroupStatusEnum1]>?
        public let completed: Nullable<Bool>?
        public let paused: Nullable<Bool>?
        public let expandTasks: Bool?
        public let expandCargos: Bool?
        public let expandMilestones: Bool?
        public let expandShipperContactInfo: Bool?
        public let expandShipperOrgCompanyName: Bool?
        public let expandShipperOrgHandle: Bool?
        public let expandTaskGroupMileage: Bool?
        public let expandDriver: Bool?
        public let expandCourierPayDriverLineItemGroups: Bool?
        public let expandCourierPayDriverRateSheet: Bool?
        public let expandCourierPayDriverPayout: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            sortCreatedAtDesc: Bool? = nil,
            page: Int? = nil,
            pageSize: Int? = nil,
            createdAtGte: Nullable<Date>? = nil,
            createdAtLte: Nullable<Date>? = nil,
            startedAtGte: Nullable<Date>? = nil,
            startedAtLte: Nullable<Date>? = nil,
            completedAtGte: Nullable<Date>? = nil,
            completedAtLte: Nullable<Date>? = nil,
            orderCancelled: Nullable<Bool>? = nil,
            statuses: Nullable<[TaskGroupStatusEnum1]>? = nil,
            completed: Nullable<Bool>? = nil,
            paused: Nullable<Bool>? = nil,
            expandTasks: Bool? = nil,
            expandCargos: Bool? = nil,
            expandMilestones: Bool? = nil,
            expandShipperContactInfo: Bool? = nil,
            expandShipperOrgCompanyName: Bool? = nil,
            expandShipperOrgHandle: Bool? = nil,
            expandTaskGroupMileage: Bool? = nil,
            expandDriver: Bool? = nil,
            expandCourierPayDriverLineItemGroups: Bool? = nil,
            expandCourierPayDriverRateSheet: Bool? = nil,
            expandCourierPayDriverPayout: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.sortCreatedAtDesc = sortCreatedAtDesc
            self.page = page
            self.pageSize = pageSize
            self.createdAtGte = createdAtGte
            self.createdAtLte = createdAtLte
            self.startedAtGte = startedAtGte
            self.startedAtLte = startedAtLte
            self.completedAtGte = completedAtGte
            self.completedAtLte = completedAtLte
            self.orderCancelled = orderCancelled
            self.statuses = statuses
            self.completed = completed
            self.paused = paused
            self.expandTasks = expandTasks
            self.expandCargos = expandCargos
            self.expandMilestones = expandMilestones
            self.expandShipperContactInfo = expandShipperContactInfo
            self.expandShipperOrgCompanyName = expandShipperOrgCompanyName
            self.expandShipperOrgHandle = expandShipperOrgHandle
            self.expandTaskGroupMileage = expandTaskGroupMileage
            self.expandDriver = expandDriver
            self.expandCourierPayDriverLineItemGroups = expandCourierPayDriverLineItemGroups
            self.expandCourierPayDriverRateSheet = expandCourierPayDriverRateSheet
            self.expandCourierPayDriverPayout = expandCourierPayDriverPayout
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.sortCreatedAtDesc = try container.decodeIfPresent(Bool.self, forKey: .sortCreatedAtDesc)
            self.page = try container.decodeIfPresent(Int.self, forKey: .page)
            self.pageSize = try container.decodeIfPresent(Int.self, forKey: .pageSize)
            self.createdAtGte = try container.decodeNullableIfPresent(Date.self, forKey: .createdAtGte)
            self.createdAtLte = try container.decodeNullableIfPresent(Date.self, forKey: .createdAtLte)
            self.startedAtGte = try container.decodeNullableIfPresent(Date.self, forKey: .startedAtGte)
            self.startedAtLte = try container.decodeNullableIfPresent(Date.self, forKey: .startedAtLte)
            self.completedAtGte = try container.decodeNullableIfPresent(Date.self, forKey: .completedAtGte)
            self.completedAtLte = try container.decodeNullableIfPresent(Date.self, forKey: .completedAtLte)
            self.orderCancelled = try container.decodeNullableIfPresent(Bool.self, forKey: .orderCancelled)
            self.statuses = try container.decodeNullableIfPresent([TaskGroupStatusEnum1].self, forKey: .statuses)
            self.completed = try container.decodeNullableIfPresent(Bool.self, forKey: .completed)
            self.paused = try container.decodeNullableIfPresent(Bool.self, forKey: .paused)
            self.expandTasks = try container.decodeIfPresent(Bool.self, forKey: .expandTasks)
            self.expandCargos = try container.decodeIfPresent(Bool.self, forKey: .expandCargos)
            self.expandMilestones = try container.decodeIfPresent(Bool.self, forKey: .expandMilestones)
            self.expandShipperContactInfo = try container.decodeIfPresent(Bool.self, forKey: .expandShipperContactInfo)
            self.expandShipperOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandShipperOrgCompanyName)
            self.expandShipperOrgHandle = try container.decodeIfPresent(Bool.self, forKey: .expandShipperOrgHandle)
            self.expandTaskGroupMileage = try container.decodeIfPresent(Bool.self, forKey: .expandTaskGroupMileage)
            self.expandDriver = try container.decodeIfPresent(Bool.self, forKey: .expandDriver)
            self.expandCourierPayDriverLineItemGroups = try container.decodeIfPresent(Bool.self, forKey: .expandCourierPayDriverLineItemGroups)
            self.expandCourierPayDriverRateSheet = try container.decodeIfPresent(Bool.self, forKey: .expandCourierPayDriverRateSheet)
            self.expandCourierPayDriverPayout = try container.decodeIfPresent(Bool.self, forKey: .expandCourierPayDriverPayout)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.sortCreatedAtDesc, forKey: .sortCreatedAtDesc)
            try container.encodeIfPresent(self.page, forKey: .page)
            try container.encodeIfPresent(self.pageSize, forKey: .pageSize)
            try container.encodeNullableIfPresent(self.createdAtGte, forKey: .createdAtGte)
            try container.encodeNullableIfPresent(self.createdAtLte, forKey: .createdAtLte)
            try container.encodeNullableIfPresent(self.startedAtGte, forKey: .startedAtGte)
            try container.encodeNullableIfPresent(self.startedAtLte, forKey: .startedAtLte)
            try container.encodeNullableIfPresent(self.completedAtGte, forKey: .completedAtGte)
            try container.encodeNullableIfPresent(self.completedAtLte, forKey: .completedAtLte)
            try container.encodeNullableIfPresent(self.orderCancelled, forKey: .orderCancelled)
            try container.encodeNullableIfPresent(self.statuses, forKey: .statuses)
            try container.encodeNullableIfPresent(self.completed, forKey: .completed)
            try container.encodeNullableIfPresent(self.paused, forKey: .paused)
            try container.encodeIfPresent(self.expandTasks, forKey: .expandTasks)
            try container.encodeIfPresent(self.expandCargos, forKey: .expandCargos)
            try container.encodeIfPresent(self.expandMilestones, forKey: .expandMilestones)
            try container.encodeIfPresent(self.expandShipperContactInfo, forKey: .expandShipperContactInfo)
            try container.encodeIfPresent(self.expandShipperOrgCompanyName, forKey: .expandShipperOrgCompanyName)
            try container.encodeIfPresent(self.expandShipperOrgHandle, forKey: .expandShipperOrgHandle)
            try container.encodeIfPresent(self.expandTaskGroupMileage, forKey: .expandTaskGroupMileage)
            try container.encodeIfPresent(self.expandDriver, forKey: .expandDriver)
            try container.encodeIfPresent(self.expandCourierPayDriverLineItemGroups, forKey: .expandCourierPayDriverLineItemGroups)
            try container.encodeIfPresent(self.expandCourierPayDriverRateSheet, forKey: .expandCourierPayDriverRateSheet)
            try container.encodeIfPresent(self.expandCourierPayDriverPayout, forKey: .expandCourierPayDriverPayout)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case sortCreatedAtDesc = "sort_created_at_desc"
            case page
            case pageSize = "page_size"
            case createdAtGte = "created_at_gte"
            case createdAtLte = "created_at_lte"
            case startedAtGte = "started_at_gte"
            case startedAtLte = "started_at_lte"
            case completedAtGte = "completed_at_gte"
            case completedAtLte = "completed_at_lte"
            case orderCancelled = "order_cancelled"
            case statuses
            case completed
            case paused
            case expandTasks = "expand_tasks"
            case expandCargos = "expand_cargos"
            case expandMilestones = "expand_milestones"
            case expandShipperContactInfo = "expand_shipper_contact_info"
            case expandShipperOrgCompanyName = "expand_shipper_org_company_name"
            case expandShipperOrgHandle = "expand_shipper_org_handle"
            case expandTaskGroupMileage = "expand_task_group_mileage"
            case expandDriver = "expand_driver"
            case expandCourierPayDriverLineItemGroups = "expand_courier_pay_driver_line_item_groups"
            case expandCourierPayDriverRateSheet = "expand_courier_pay_driver_rate_sheet"
            case expandCourierPayDriverPayout = "expand_courier_pay_driver_payout"
        }
    }
}