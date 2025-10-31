import Foundation

/// Expanded task group payload for courier administrators.
public struct TaskGroupExpandedForCourierAdministrator: Codable, Hashable, Sendable {
    public let taskGroup: TaskGroup1
    public let tasksExpanded: Nullable<[TaskExpanded]>?
    public let shipperOrgCompanyName: Nullable<String>?
    public let shipperOrgHandle: Nullable<String>?
    public let taskGroupMileage: Nullable<Double>?
    public let driver: Nullable<Driver1>?
    public let courierPayDriverLineItemGroups: Nullable<[CourierPayDriverLineItemGroup1]>?
    public let courierPayDriverRateSheet: Nullable<CourierPayDriverRateSheet1>?
    public let courierPayDriverPayout: Nullable<CourierPayDriverPayout1>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroup: TaskGroup1,
        tasksExpanded: Nullable<[TaskExpanded]>? = nil,
        shipperOrgCompanyName: Nullable<String>? = nil,
        shipperOrgHandle: Nullable<String>? = nil,
        taskGroupMileage: Nullable<Double>? = nil,
        driver: Nullable<Driver1>? = nil,
        courierPayDriverLineItemGroups: Nullable<[CourierPayDriverLineItemGroup1]>? = nil,
        courierPayDriverRateSheet: Nullable<CourierPayDriverRateSheet1>? = nil,
        courierPayDriverPayout: Nullable<CourierPayDriverPayout1>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroup = taskGroup
        self.tasksExpanded = tasksExpanded
        self.shipperOrgCompanyName = shipperOrgCompanyName
        self.shipperOrgHandle = shipperOrgHandle
        self.taskGroupMileage = taskGroupMileage
        self.driver = driver
        self.courierPayDriverLineItemGroups = courierPayDriverLineItemGroups
        self.courierPayDriverRateSheet = courierPayDriverRateSheet
        self.courierPayDriverPayout = courierPayDriverPayout
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroup = try container.decode(TaskGroup1.self, forKey: .taskGroup)
        self.tasksExpanded = try container.decodeNullableIfPresent([TaskExpanded].self, forKey: .tasksExpanded)
        self.shipperOrgCompanyName = try container.decodeNullableIfPresent(String.self, forKey: .shipperOrgCompanyName)
        self.shipperOrgHandle = try container.decodeNullableIfPresent(String.self, forKey: .shipperOrgHandle)
        self.taskGroupMileage = try container.decodeNullableIfPresent(Double.self, forKey: .taskGroupMileage)
        self.driver = try container.decodeNullableIfPresent(Driver1.self, forKey: .driver)
        self.courierPayDriverLineItemGroups = try container.decodeNullableIfPresent([CourierPayDriverLineItemGroup1].self, forKey: .courierPayDriverLineItemGroups)
        self.courierPayDriverRateSheet = try container.decodeNullableIfPresent(CourierPayDriverRateSheet1.self, forKey: .courierPayDriverRateSheet)
        self.courierPayDriverPayout = try container.decodeNullableIfPresent(CourierPayDriverPayout1.self, forKey: .courierPayDriverPayout)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroup, forKey: .taskGroup)
        try container.encodeNullableIfPresent(self.tasksExpanded, forKey: .tasksExpanded)
        try container.encodeNullableIfPresent(self.shipperOrgCompanyName, forKey: .shipperOrgCompanyName)
        try container.encodeNullableIfPresent(self.shipperOrgHandle, forKey: .shipperOrgHandle)
        try container.encodeNullableIfPresent(self.taskGroupMileage, forKey: .taskGroupMileage)
        try container.encodeNullableIfPresent(self.driver, forKey: .driver)
        try container.encodeNullableIfPresent(self.courierPayDriverLineItemGroups, forKey: .courierPayDriverLineItemGroups)
        try container.encodeNullableIfPresent(self.courierPayDriverRateSheet, forKey: .courierPayDriverRateSheet)
        try container.encodeNullableIfPresent(self.courierPayDriverPayout, forKey: .courierPayDriverPayout)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroup = "task_group"
        case tasksExpanded = "tasks_expanded"
        case shipperOrgCompanyName = "shipper_org_company_name"
        case shipperOrgHandle = "shipper_org_handle"
        case taskGroupMileage = "task_group_mileage"
        case driver
        case courierPayDriverLineItemGroups = "courier_pay_driver_line_item_groups"
        case courierPayDriverRateSheet = "courier_pay_driver_rate_sheet"
        case courierPayDriverPayout = "courier_pay_driver_payout"
    }
}