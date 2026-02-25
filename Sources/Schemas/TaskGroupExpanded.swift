import Foundation

public struct TaskGroupExpanded: Codable, Hashable, Sendable {
    public let courierOrgCompanyName: String?
    public let courierOrgHandle: String?
    public let driver: Driver1?
    public let forwarderOrgCompanyName: String?
    public let forwarderOrgHandle: String?
    public let offChrtShipperOrgCompanyName: String?
    public let shipperOrgCompanyName: String?
    public let taskGroup: TaskGroup1
    public let tasksExpanded: [TaskExpanded]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        courierOrgCompanyName: String? = nil,
        courierOrgHandle: String? = nil,
        driver: Driver1? = nil,
        forwarderOrgCompanyName: String? = nil,
        forwarderOrgHandle: String? = nil,
        offChrtShipperOrgCompanyName: String? = nil,
        shipperOrgCompanyName: String? = nil,
        taskGroup: TaskGroup1,
        tasksExpanded: [TaskExpanded]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.courierOrgCompanyName = courierOrgCompanyName
        self.courierOrgHandle = courierOrgHandle
        self.driver = driver
        self.forwarderOrgCompanyName = forwarderOrgCompanyName
        self.forwarderOrgHandle = forwarderOrgHandle
        self.offChrtShipperOrgCompanyName = offChrtShipperOrgCompanyName
        self.shipperOrgCompanyName = shipperOrgCompanyName
        self.taskGroup = taskGroup
        self.tasksExpanded = tasksExpanded
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.courierOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .courierOrgCompanyName)
        self.courierOrgHandle = try container.decodeIfPresent(String.self, forKey: .courierOrgHandle)
        self.driver = try container.decodeIfPresent(Driver1.self, forKey: .driver)
        self.forwarderOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .forwarderOrgCompanyName)
        self.forwarderOrgHandle = try container.decodeIfPresent(String.self, forKey: .forwarderOrgHandle)
        self.offChrtShipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgCompanyName)
        self.shipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .shipperOrgCompanyName)
        self.taskGroup = try container.decode(TaskGroup1.self, forKey: .taskGroup)
        self.tasksExpanded = try container.decodeIfPresent([TaskExpanded].self, forKey: .tasksExpanded)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.courierOrgCompanyName, forKey: .courierOrgCompanyName)
        try container.encodeIfPresent(self.courierOrgHandle, forKey: .courierOrgHandle)
        try container.encodeIfPresent(self.driver, forKey: .driver)
        try container.encodeIfPresent(self.forwarderOrgCompanyName, forKey: .forwarderOrgCompanyName)
        try container.encodeIfPresent(self.forwarderOrgHandle, forKey: .forwarderOrgHandle)
        try container.encodeIfPresent(self.offChrtShipperOrgCompanyName, forKey: .offChrtShipperOrgCompanyName)
        try container.encodeIfPresent(self.shipperOrgCompanyName, forKey: .shipperOrgCompanyName)
        try container.encode(self.taskGroup, forKey: .taskGroup)
        try container.encodeIfPresent(self.tasksExpanded, forKey: .tasksExpanded)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case courierOrgCompanyName = "courier_org_company_name"
        case courierOrgHandle = "courier_org_handle"
        case driver
        case forwarderOrgCompanyName = "forwarder_org_company_name"
        case forwarderOrgHandle = "forwarder_org_handle"
        case offChrtShipperOrgCompanyName = "off_chrt_shipper_org_company_name"
        case shipperOrgCompanyName = "shipper_org_company_name"
        case taskGroup = "task_group"
        case tasksExpanded = "tasks_expanded"
    }
}