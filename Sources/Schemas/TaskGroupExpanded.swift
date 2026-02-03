import Foundation

public struct TaskGroupExpanded: Codable, Hashable, Sendable {
    public let taskGroup: TaskGroup1
    public let tasksExpanded: [TaskExpanded]?
    public let driver: Driver1Output?
    public let courierOrgCompanyName: String?
    public let courierOrgHandle: String?
    public let forwarderOrgCompanyName: String?
    public let forwarderOrgHandle: String?
    public let shipperOrgCompanyName: String?
    public let offChrtShipperOrgCompanyName: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroup: TaskGroup1,
        tasksExpanded: [TaskExpanded]? = nil,
        driver: Driver1Output? = nil,
        courierOrgCompanyName: String? = nil,
        courierOrgHandle: String? = nil,
        forwarderOrgCompanyName: String? = nil,
        forwarderOrgHandle: String? = nil,
        shipperOrgCompanyName: String? = nil,
        offChrtShipperOrgCompanyName: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroup = taskGroup
        self.tasksExpanded = tasksExpanded
        self.driver = driver
        self.courierOrgCompanyName = courierOrgCompanyName
        self.courierOrgHandle = courierOrgHandle
        self.forwarderOrgCompanyName = forwarderOrgCompanyName
        self.forwarderOrgHandle = forwarderOrgHandle
        self.shipperOrgCompanyName = shipperOrgCompanyName
        self.offChrtShipperOrgCompanyName = offChrtShipperOrgCompanyName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroup = try container.decode(TaskGroup1.self, forKey: .taskGroup)
        self.tasksExpanded = try container.decodeIfPresent([TaskExpanded].self, forKey: .tasksExpanded)
        self.driver = try container.decodeIfPresent(Driver1Output.self, forKey: .driver)
        self.courierOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .courierOrgCompanyName)
        self.courierOrgHandle = try container.decodeIfPresent(String.self, forKey: .courierOrgHandle)
        self.forwarderOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .forwarderOrgCompanyName)
        self.forwarderOrgHandle = try container.decodeIfPresent(String.self, forKey: .forwarderOrgHandle)
        self.shipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .shipperOrgCompanyName)
        self.offChrtShipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgCompanyName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroup, forKey: .taskGroup)
        try container.encodeIfPresent(self.tasksExpanded, forKey: .tasksExpanded)
        try container.encodeIfPresent(self.driver, forKey: .driver)
        try container.encodeIfPresent(self.courierOrgCompanyName, forKey: .courierOrgCompanyName)
        try container.encodeIfPresent(self.courierOrgHandle, forKey: .courierOrgHandle)
        try container.encodeIfPresent(self.forwarderOrgCompanyName, forKey: .forwarderOrgCompanyName)
        try container.encodeIfPresent(self.forwarderOrgHandle, forKey: .forwarderOrgHandle)
        try container.encodeIfPresent(self.shipperOrgCompanyName, forKey: .shipperOrgCompanyName)
        try container.encodeIfPresent(self.offChrtShipperOrgCompanyName, forKey: .offChrtShipperOrgCompanyName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroup = "task_group"
        case tasksExpanded = "tasks_expanded"
        case driver
        case courierOrgCompanyName = "courier_org_company_name"
        case courierOrgHandle = "courier_org_handle"
        case forwarderOrgCompanyName = "forwarder_org_company_name"
        case forwarderOrgHandle = "forwarder_org_handle"
        case shipperOrgCompanyName = "shipper_org_company_name"
        case offChrtShipperOrgCompanyName = "off_chrt_shipper_org_company_name"
    }
}