import Foundation

public struct TaskGroupExpanded: Codable, Hashable, Sendable {
    public let taskGroup: TaskGroup1
    public let tasksExpanded: [TaskExpanded]?
    public let driver: Driver1?
    /// Must be a string starting with `org_`
    public let courierOrgId: String?
    public let courierOrgCompanyName: String?
    /// Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
    public let courierOrgHandle: String?
    /// Must be a string starting with `org_`
    public let forwarderOrgId: String?
    public let forwarderOrgCompanyName: String?
    /// Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
    public let forwarderOrgHandle: String?
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let shipperOrgCompanyName: String?
    public let offChrtShipperOrgId: String?
    public let offChrtShipperOrgCompanyName: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroup: TaskGroup1,
        tasksExpanded: [TaskExpanded]? = nil,
        driver: Driver1? = nil,
        courierOrgId: String? = nil,
        courierOrgCompanyName: String? = nil,
        courierOrgHandle: String? = nil,
        forwarderOrgId: String? = nil,
        forwarderOrgCompanyName: String? = nil,
        forwarderOrgHandle: String? = nil,
        shipperOrgId: String? = nil,
        shipperOrgCompanyName: String? = nil,
        offChrtShipperOrgId: String? = nil,
        offChrtShipperOrgCompanyName: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroup = taskGroup
        self.tasksExpanded = tasksExpanded
        self.driver = driver
        self.courierOrgId = courierOrgId
        self.courierOrgCompanyName = courierOrgCompanyName
        self.courierOrgHandle = courierOrgHandle
        self.forwarderOrgId = forwarderOrgId
        self.forwarderOrgCompanyName = forwarderOrgCompanyName
        self.forwarderOrgHandle = forwarderOrgHandle
        self.shipperOrgId = shipperOrgId
        self.shipperOrgCompanyName = shipperOrgCompanyName
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.offChrtShipperOrgCompanyName = offChrtShipperOrgCompanyName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroup = try container.decode(TaskGroup1.self, forKey: .taskGroup)
        self.tasksExpanded = try container.decodeIfPresent([TaskExpanded].self, forKey: .tasksExpanded)
        self.driver = try container.decodeIfPresent(Driver1.self, forKey: .driver)
        self.courierOrgId = try container.decodeIfPresent(String.self, forKey: .courierOrgId)
        self.courierOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .courierOrgCompanyName)
        self.courierOrgHandle = try container.decodeIfPresent(String.self, forKey: .courierOrgHandle)
        self.forwarderOrgId = try container.decodeIfPresent(String.self, forKey: .forwarderOrgId)
        self.forwarderOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .forwarderOrgCompanyName)
        self.forwarderOrgHandle = try container.decodeIfPresent(String.self, forKey: .forwarderOrgHandle)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.shipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .shipperOrgCompanyName)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.offChrtShipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgCompanyName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroup, forKey: .taskGroup)
        try container.encodeIfPresent(self.tasksExpanded, forKey: .tasksExpanded)
        try container.encodeIfPresent(self.driver, forKey: .driver)
        try container.encodeIfPresent(self.courierOrgId, forKey: .courierOrgId)
        try container.encodeIfPresent(self.courierOrgCompanyName, forKey: .courierOrgCompanyName)
        try container.encodeIfPresent(self.courierOrgHandle, forKey: .courierOrgHandle)
        try container.encodeIfPresent(self.forwarderOrgId, forKey: .forwarderOrgId)
        try container.encodeIfPresent(self.forwarderOrgCompanyName, forKey: .forwarderOrgCompanyName)
        try container.encodeIfPresent(self.forwarderOrgHandle, forKey: .forwarderOrgHandle)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encodeIfPresent(self.shipperOrgCompanyName, forKey: .shipperOrgCompanyName)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encodeIfPresent(self.offChrtShipperOrgCompanyName, forKey: .offChrtShipperOrgCompanyName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroup = "task_group"
        case tasksExpanded = "tasks_expanded"
        case driver
        case courierOrgId = "courier_org_id"
        case courierOrgCompanyName = "courier_org_company_name"
        case courierOrgHandle = "courier_org_handle"
        case forwarderOrgId = "forwarder_org_id"
        case forwarderOrgCompanyName = "forwarder_org_company_name"
        case forwarderOrgHandle = "forwarder_org_handle"
        case shipperOrgId = "shipper_org_id"
        case shipperOrgCompanyName = "shipper_org_company_name"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case offChrtShipperOrgCompanyName = "off_chrt_shipper_org_company_name"
    }
}