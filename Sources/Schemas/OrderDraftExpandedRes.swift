import Foundation

public struct OrderDraftExpandedRes: Codable, Hashable, Sendable {
    public let order: Order1
    public let taskGroupsExpanded: [TaskGroupDraftExpanded]?
    public let cargos: [Cargo1]?
    public let shipperOrgCompanyName: String?
    public let shipperOrgHandle: String?
    public let offChrtShipperOrgCompanyName: String?
    public let forwarderOrgCompanyName: String?
    public let forwarderOrgHandle: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        order: Order1,
        taskGroupsExpanded: [TaskGroupDraftExpanded]? = nil,
        cargos: [Cargo1]? = nil,
        shipperOrgCompanyName: String? = nil,
        shipperOrgHandle: String? = nil,
        offChrtShipperOrgCompanyName: String? = nil,
        forwarderOrgCompanyName: String? = nil,
        forwarderOrgHandle: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.order = order
        self.taskGroupsExpanded = taskGroupsExpanded
        self.cargos = cargos
        self.shipperOrgCompanyName = shipperOrgCompanyName
        self.shipperOrgHandle = shipperOrgHandle
        self.offChrtShipperOrgCompanyName = offChrtShipperOrgCompanyName
        self.forwarderOrgCompanyName = forwarderOrgCompanyName
        self.forwarderOrgHandle = forwarderOrgHandle
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.order = try container.decode(Order1.self, forKey: .order)
        self.taskGroupsExpanded = try container.decodeIfPresent([TaskGroupDraftExpanded].self, forKey: .taskGroupsExpanded)
        self.cargos = try container.decodeIfPresent([Cargo1].self, forKey: .cargos)
        self.shipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .shipperOrgCompanyName)
        self.shipperOrgHandle = try container.decodeIfPresent(String.self, forKey: .shipperOrgHandle)
        self.offChrtShipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgCompanyName)
        self.forwarderOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .forwarderOrgCompanyName)
        self.forwarderOrgHandle = try container.decodeIfPresent(String.self, forKey: .forwarderOrgHandle)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.order, forKey: .order)
        try container.encodeIfPresent(self.taskGroupsExpanded, forKey: .taskGroupsExpanded)
        try container.encodeIfPresent(self.cargos, forKey: .cargos)
        try container.encodeIfPresent(self.shipperOrgCompanyName, forKey: .shipperOrgCompanyName)
        try container.encodeIfPresent(self.shipperOrgHandle, forKey: .shipperOrgHandle)
        try container.encodeIfPresent(self.offChrtShipperOrgCompanyName, forKey: .offChrtShipperOrgCompanyName)
        try container.encodeIfPresent(self.forwarderOrgCompanyName, forKey: .forwarderOrgCompanyName)
        try container.encodeIfPresent(self.forwarderOrgHandle, forKey: .forwarderOrgHandle)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case order
        case taskGroupsExpanded = "task_groups_expanded"
        case cargos
        case shipperOrgCompanyName = "shipper_org_company_name"
        case shipperOrgHandle = "shipper_org_handle"
        case offChrtShipperOrgCompanyName = "off_chrt_shipper_org_company_name"
        case forwarderOrgCompanyName = "forwarder_org_company_name"
        case forwarderOrgHandle = "forwarder_org_handle"
    }
}