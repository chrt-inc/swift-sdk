import Foundation

/// Request payload for courier driver persona.
public struct TaskGroupExpandedForCourierDriverReq: Codable, Hashable, Sendable {
    public let expandTasks: Bool?
    public let expandCargos: Bool?
    public let expandMilestones: Bool?
    public let expandShipperContactInfo: Bool?
    public let expandShipperOrgCompanyName: Bool?
    public let expandShipperOrgHandle: Bool?
    public let expandTaskGroupMileage: Bool?
    public let expandDriver: Bool?
    public let expandCourierPayDriverLineItemGroup: Bool?
    public let expandCourierPayDriverRateSheet: Bool?
    public let expandCourierPayDriverPayout: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        expandTasks: Bool? = nil,
        expandCargos: Bool? = nil,
        expandMilestones: Bool? = nil,
        expandShipperContactInfo: Bool? = nil,
        expandShipperOrgCompanyName: Bool? = nil,
        expandShipperOrgHandle: Bool? = nil,
        expandTaskGroupMileage: Bool? = nil,
        expandDriver: Bool? = nil,
        expandCourierPayDriverLineItemGroup: Bool? = nil,
        expandCourierPayDriverRateSheet: Bool? = nil,
        expandCourierPayDriverPayout: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.expandTasks = expandTasks
        self.expandCargos = expandCargos
        self.expandMilestones = expandMilestones
        self.expandShipperContactInfo = expandShipperContactInfo
        self.expandShipperOrgCompanyName = expandShipperOrgCompanyName
        self.expandShipperOrgHandle = expandShipperOrgHandle
        self.expandTaskGroupMileage = expandTaskGroupMileage
        self.expandDriver = expandDriver
        self.expandCourierPayDriverLineItemGroup = expandCourierPayDriverLineItemGroup
        self.expandCourierPayDriverRateSheet = expandCourierPayDriverRateSheet
        self.expandCourierPayDriverPayout = expandCourierPayDriverPayout
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.expandTasks = try container.decodeIfPresent(Bool.self, forKey: .expandTasks)
        self.expandCargos = try container.decodeIfPresent(Bool.self, forKey: .expandCargos)
        self.expandMilestones = try container.decodeIfPresent(Bool.self, forKey: .expandMilestones)
        self.expandShipperContactInfo = try container.decodeIfPresent(Bool.self, forKey: .expandShipperContactInfo)
        self.expandShipperOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandShipperOrgCompanyName)
        self.expandShipperOrgHandle = try container.decodeIfPresent(Bool.self, forKey: .expandShipperOrgHandle)
        self.expandTaskGroupMileage = try container.decodeIfPresent(Bool.self, forKey: .expandTaskGroupMileage)
        self.expandDriver = try container.decodeIfPresent(Bool.self, forKey: .expandDriver)
        self.expandCourierPayDriverLineItemGroup = try container.decodeIfPresent(Bool.self, forKey: .expandCourierPayDriverLineItemGroup)
        self.expandCourierPayDriverRateSheet = try container.decodeIfPresent(Bool.self, forKey: .expandCourierPayDriverRateSheet)
        self.expandCourierPayDriverPayout = try container.decodeIfPresent(Bool.self, forKey: .expandCourierPayDriverPayout)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.expandTasks, forKey: .expandTasks)
        try container.encodeIfPresent(self.expandCargos, forKey: .expandCargos)
        try container.encodeIfPresent(self.expandMilestones, forKey: .expandMilestones)
        try container.encodeIfPresent(self.expandShipperContactInfo, forKey: .expandShipperContactInfo)
        try container.encodeIfPresent(self.expandShipperOrgCompanyName, forKey: .expandShipperOrgCompanyName)
        try container.encodeIfPresent(self.expandShipperOrgHandle, forKey: .expandShipperOrgHandle)
        try container.encodeIfPresent(self.expandTaskGroupMileage, forKey: .expandTaskGroupMileage)
        try container.encodeIfPresent(self.expandDriver, forKey: .expandDriver)
        try container.encodeIfPresent(self.expandCourierPayDriverLineItemGroup, forKey: .expandCourierPayDriverLineItemGroup)
        try container.encodeIfPresent(self.expandCourierPayDriverRateSheet, forKey: .expandCourierPayDriverRateSheet)
        try container.encodeIfPresent(self.expandCourierPayDriverPayout, forKey: .expandCourierPayDriverPayout)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case expandTasks = "expand_tasks"
        case expandCargos = "expand_cargos"
        case expandMilestones = "expand_milestones"
        case expandShipperContactInfo = "expand_shipper_contact_info"
        case expandShipperOrgCompanyName = "expand_shipper_org_company_name"
        case expandShipperOrgHandle = "expand_shipper_org_handle"
        case expandTaskGroupMileage = "expand_task_group_mileage"
        case expandDriver = "expand_driver"
        case expandCourierPayDriverLineItemGroup = "expand_courier_pay_driver_line_item_group"
        case expandCourierPayDriverRateSheet = "expand_courier_pay_driver_rate_sheet"
        case expandCourierPayDriverPayout = "expand_courier_pay_driver_payout"
    }
}