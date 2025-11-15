import Foundation

/// Expanded task group payload for courier drivers.
public struct TaskGroupExpandedForCourierDriver: Codable, Hashable, Sendable {
    public let taskGroup: TaskGroup1
    public let tasksExpanded: [TaskExpanded]?
    public let shipperOrgCompanyName: String?
    public let shipperOrgHandle: String?
    public let taskGroupMileage: Double?
    public let driver: Driver1?
    public let courierPayDriverLineItemGroup: CourierPayDriverLineItemGroup1?
    public let courierPayDriverRateSheet: CourierPayDriverRateSheet1?
    public let courierPayDriverPayout: CourierPayDriverStatement1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroup: TaskGroup1,
        tasksExpanded: [TaskExpanded]? = nil,
        shipperOrgCompanyName: String? = nil,
        shipperOrgHandle: String? = nil,
        taskGroupMileage: Double? = nil,
        driver: Driver1? = nil,
        courierPayDriverLineItemGroup: CourierPayDriverLineItemGroup1? = nil,
        courierPayDriverRateSheet: CourierPayDriverRateSheet1? = nil,
        courierPayDriverPayout: CourierPayDriverStatement1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroup = taskGroup
        self.tasksExpanded = tasksExpanded
        self.shipperOrgCompanyName = shipperOrgCompanyName
        self.shipperOrgHandle = shipperOrgHandle
        self.taskGroupMileage = taskGroupMileage
        self.driver = driver
        self.courierPayDriverLineItemGroup = courierPayDriverLineItemGroup
        self.courierPayDriverRateSheet = courierPayDriverRateSheet
        self.courierPayDriverPayout = courierPayDriverPayout
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroup = try container.decode(TaskGroup1.self, forKey: .taskGroup)
        self.tasksExpanded = try container.decodeIfPresent([TaskExpanded].self, forKey: .tasksExpanded)
        self.shipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .shipperOrgCompanyName)
        self.shipperOrgHandle = try container.decodeIfPresent(String.self, forKey: .shipperOrgHandle)
        self.taskGroupMileage = try container.decodeIfPresent(Double.self, forKey: .taskGroupMileage)
        self.driver = try container.decodeIfPresent(Driver1.self, forKey: .driver)
        self.courierPayDriverLineItemGroup = try container.decodeIfPresent(CourierPayDriverLineItemGroup1.self, forKey: .courierPayDriverLineItemGroup)
        self.courierPayDriverRateSheet = try container.decodeIfPresent(CourierPayDriverRateSheet1.self, forKey: .courierPayDriverRateSheet)
        self.courierPayDriverPayout = try container.decodeIfPresent(CourierPayDriverStatement1.self, forKey: .courierPayDriverPayout)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroup, forKey: .taskGroup)
        try container.encodeIfPresent(self.tasksExpanded, forKey: .tasksExpanded)
        try container.encodeIfPresent(self.shipperOrgCompanyName, forKey: .shipperOrgCompanyName)
        try container.encodeIfPresent(self.shipperOrgHandle, forKey: .shipperOrgHandle)
        try container.encodeIfPresent(self.taskGroupMileage, forKey: .taskGroupMileage)
        try container.encodeIfPresent(self.driver, forKey: .driver)
        try container.encodeIfPresent(self.courierPayDriverLineItemGroup, forKey: .courierPayDriverLineItemGroup)
        try container.encodeIfPresent(self.courierPayDriverRateSheet, forKey: .courierPayDriverRateSheet)
        try container.encodeIfPresent(self.courierPayDriverPayout, forKey: .courierPayDriverPayout)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroup = "task_group"
        case tasksExpanded = "tasks_expanded"
        case shipperOrgCompanyName = "shipper_org_company_name"
        case shipperOrgHandle = "shipper_org_handle"
        case taskGroupMileage = "task_group_mileage"
        case driver
        case courierPayDriverLineItemGroup = "courier_pay_driver_line_item_group"
        case courierPayDriverRateSheet = "courier_pay_driver_rate_sheet"
        case courierPayDriverPayout = "courier_pay_driver_payout"
    }
}