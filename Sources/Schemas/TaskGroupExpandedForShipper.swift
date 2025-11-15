import Foundation

/// Expanded task group payload for shippers.
public struct TaskGroupExpandedForShipper: Codable, Hashable, Sendable {
    public let taskGroup: TaskGroup1
    public let tasksExpanded: [TaskExpanded]?
    public let courierOrgCompanyName: String?
    public let courierOrgHandle: String?
    public let taskGroupMileage: Double?
    public let driver: Driver1?
    public let shipperPayCourierLineItemGroups: [ShipperPayCourierLineItemGroup1]?
    public let shipperPayCourierRateSheet: ShipperPayCourierRateSheet1?
    public let shipperPayCourierPayment: ShipperPayCourierStatement1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroup: TaskGroup1,
        tasksExpanded: [TaskExpanded]? = nil,
        courierOrgCompanyName: String? = nil,
        courierOrgHandle: String? = nil,
        taskGroupMileage: Double? = nil,
        driver: Driver1? = nil,
        shipperPayCourierLineItemGroups: [ShipperPayCourierLineItemGroup1]? = nil,
        shipperPayCourierRateSheet: ShipperPayCourierRateSheet1? = nil,
        shipperPayCourierPayment: ShipperPayCourierStatement1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroup = taskGroup
        self.tasksExpanded = tasksExpanded
        self.courierOrgCompanyName = courierOrgCompanyName
        self.courierOrgHandle = courierOrgHandle
        self.taskGroupMileage = taskGroupMileage
        self.driver = driver
        self.shipperPayCourierLineItemGroups = shipperPayCourierLineItemGroups
        self.shipperPayCourierRateSheet = shipperPayCourierRateSheet
        self.shipperPayCourierPayment = shipperPayCourierPayment
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroup = try container.decode(TaskGroup1.self, forKey: .taskGroup)
        self.tasksExpanded = try container.decodeIfPresent([TaskExpanded].self, forKey: .tasksExpanded)
        self.courierOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .courierOrgCompanyName)
        self.courierOrgHandle = try container.decodeIfPresent(String.self, forKey: .courierOrgHandle)
        self.taskGroupMileage = try container.decodeIfPresent(Double.self, forKey: .taskGroupMileage)
        self.driver = try container.decodeIfPresent(Driver1.self, forKey: .driver)
        self.shipperPayCourierLineItemGroups = try container.decodeIfPresent([ShipperPayCourierLineItemGroup1].self, forKey: .shipperPayCourierLineItemGroups)
        self.shipperPayCourierRateSheet = try container.decodeIfPresent(ShipperPayCourierRateSheet1.self, forKey: .shipperPayCourierRateSheet)
        self.shipperPayCourierPayment = try container.decodeIfPresent(ShipperPayCourierStatement1.self, forKey: .shipperPayCourierPayment)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroup, forKey: .taskGroup)
        try container.encodeIfPresent(self.tasksExpanded, forKey: .tasksExpanded)
        try container.encodeIfPresent(self.courierOrgCompanyName, forKey: .courierOrgCompanyName)
        try container.encodeIfPresent(self.courierOrgHandle, forKey: .courierOrgHandle)
        try container.encodeIfPresent(self.taskGroupMileage, forKey: .taskGroupMileage)
        try container.encodeIfPresent(self.driver, forKey: .driver)
        try container.encodeIfPresent(self.shipperPayCourierLineItemGroups, forKey: .shipperPayCourierLineItemGroups)
        try container.encodeIfPresent(self.shipperPayCourierRateSheet, forKey: .shipperPayCourierRateSheet)
        try container.encodeIfPresent(self.shipperPayCourierPayment, forKey: .shipperPayCourierPayment)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroup = "task_group"
        case tasksExpanded = "tasks_expanded"
        case courierOrgCompanyName = "courier_org_company_name"
        case courierOrgHandle = "courier_org_handle"
        case taskGroupMileage = "task_group_mileage"
        case driver
        case shipperPayCourierLineItemGroups = "shipper_pay_courier_line_item_groups"
        case shipperPayCourierRateSheet = "shipper_pay_courier_rate_sheet"
        case shipperPayCourierPayment = "shipper_pay_courier_payment"
    }
}