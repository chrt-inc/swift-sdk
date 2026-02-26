import Foundation

public struct OrderExpanded: Codable, Hashable, Sendable {
    public let order: Order1
    public let forwarderOrgCompanyName: String?
    public let forwarderOrgHandle: String?
    public let shipperOrgCompanyName: String?
    public let offChrtShipperOrgCompanyName: String?
    public let notificationIntentsAdHoc: [NotificationIntentAdHoc1]?
    public let taskGroupsExpanded: [TaskGroupExpanded]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        order: Order1,
        forwarderOrgCompanyName: String? = nil,
        forwarderOrgHandle: String? = nil,
        shipperOrgCompanyName: String? = nil,
        offChrtShipperOrgCompanyName: String? = nil,
        notificationIntentsAdHoc: [NotificationIntentAdHoc1]? = nil,
        taskGroupsExpanded: [TaskGroupExpanded]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.order = order
        self.forwarderOrgCompanyName = forwarderOrgCompanyName
        self.forwarderOrgHandle = forwarderOrgHandle
        self.shipperOrgCompanyName = shipperOrgCompanyName
        self.offChrtShipperOrgCompanyName = offChrtShipperOrgCompanyName
        self.notificationIntentsAdHoc = notificationIntentsAdHoc
        self.taskGroupsExpanded = taskGroupsExpanded
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.order = try container.decode(Order1.self, forKey: .order)
        self.forwarderOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .forwarderOrgCompanyName)
        self.forwarderOrgHandle = try container.decodeIfPresent(String.self, forKey: .forwarderOrgHandle)
        self.shipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .shipperOrgCompanyName)
        self.offChrtShipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgCompanyName)
        self.notificationIntentsAdHoc = try container.decodeIfPresent([NotificationIntentAdHoc1].self, forKey: .notificationIntentsAdHoc)
        self.taskGroupsExpanded = try container.decodeIfPresent([TaskGroupExpanded].self, forKey: .taskGroupsExpanded)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.order, forKey: .order)
        try container.encodeIfPresent(self.forwarderOrgCompanyName, forKey: .forwarderOrgCompanyName)
        try container.encodeIfPresent(self.forwarderOrgHandle, forKey: .forwarderOrgHandle)
        try container.encodeIfPresent(self.shipperOrgCompanyName, forKey: .shipperOrgCompanyName)
        try container.encodeIfPresent(self.offChrtShipperOrgCompanyName, forKey: .offChrtShipperOrgCompanyName)
        try container.encodeIfPresent(self.notificationIntentsAdHoc, forKey: .notificationIntentsAdHoc)
        try container.encodeIfPresent(self.taskGroupsExpanded, forKey: .taskGroupsExpanded)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case order
        case forwarderOrgCompanyName = "forwarder_org_company_name"
        case forwarderOrgHandle = "forwarder_org_handle"
        case shipperOrgCompanyName = "shipper_org_company_name"
        case offChrtShipperOrgCompanyName = "off_chrt_shipper_org_company_name"
        case notificationIntentsAdHoc = "notification_intents_ad_hoc"
        case taskGroupsExpanded = "task_groups_expanded"
    }
}