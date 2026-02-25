import Foundation

public struct OrderDraftExpanded: Codable, Hashable, Sendable {
    public let cargos: [Cargo1]?
    public let forwarderOrgCompanyName: String?
    public let forwarderOrgHandle: String?
    public let notificationIntentsAdHoc: [NotificationIntentAdHoc1]?
    public let offChrtShipperOrgCompanyName: String?
    public let order: Order1
    public let shipperOrgCompanyName: String?
    public let taskGroupsExpanded: [TaskGroupExpanded]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cargos: [Cargo1]? = nil,
        forwarderOrgCompanyName: String? = nil,
        forwarderOrgHandle: String? = nil,
        notificationIntentsAdHoc: [NotificationIntentAdHoc1]? = nil,
        offChrtShipperOrgCompanyName: String? = nil,
        order: Order1,
        shipperOrgCompanyName: String? = nil,
        taskGroupsExpanded: [TaskGroupExpanded]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cargos = cargos
        self.forwarderOrgCompanyName = forwarderOrgCompanyName
        self.forwarderOrgHandle = forwarderOrgHandle
        self.notificationIntentsAdHoc = notificationIntentsAdHoc
        self.offChrtShipperOrgCompanyName = offChrtShipperOrgCompanyName
        self.order = order
        self.shipperOrgCompanyName = shipperOrgCompanyName
        self.taskGroupsExpanded = taskGroupsExpanded
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cargos = try container.decodeIfPresent([Cargo1].self, forKey: .cargos)
        self.forwarderOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .forwarderOrgCompanyName)
        self.forwarderOrgHandle = try container.decodeIfPresent(String.self, forKey: .forwarderOrgHandle)
        self.notificationIntentsAdHoc = try container.decodeIfPresent([NotificationIntentAdHoc1].self, forKey: .notificationIntentsAdHoc)
        self.offChrtShipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgCompanyName)
        self.order = try container.decode(Order1.self, forKey: .order)
        self.shipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .shipperOrgCompanyName)
        self.taskGroupsExpanded = try container.decodeIfPresent([TaskGroupExpanded].self, forKey: .taskGroupsExpanded)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.cargos, forKey: .cargos)
        try container.encodeIfPresent(self.forwarderOrgCompanyName, forKey: .forwarderOrgCompanyName)
        try container.encodeIfPresent(self.forwarderOrgHandle, forKey: .forwarderOrgHandle)
        try container.encodeIfPresent(self.notificationIntentsAdHoc, forKey: .notificationIntentsAdHoc)
        try container.encodeIfPresent(self.offChrtShipperOrgCompanyName, forKey: .offChrtShipperOrgCompanyName)
        try container.encode(self.order, forKey: .order)
        try container.encodeIfPresent(self.shipperOrgCompanyName, forKey: .shipperOrgCompanyName)
        try container.encodeIfPresent(self.taskGroupsExpanded, forKey: .taskGroupsExpanded)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cargos
        case forwarderOrgCompanyName = "forwarder_org_company_name"
        case forwarderOrgHandle = "forwarder_org_handle"
        case notificationIntentsAdHoc = "notification_intents_ad_hoc"
        case offChrtShipperOrgCompanyName = "off_chrt_shipper_org_company_name"
        case order
        case shipperOrgCompanyName = "shipper_org_company_name"
        case taskGroupsExpanded = "task_groups_expanded"
    }
}