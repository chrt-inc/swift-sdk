import Foundation

public struct OrderExpandedForProvider: Codable, Hashable, Sendable {
    public let coordinatorOrgCompanyName: String?
    /// Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
    public let coordinatorOrgHandle: String?
    public let notificationIntentsAdHoc: [NotificationIntentAdHoc1]?
    public let offChrtShipperOrgCompanyName: String?
    public let order: OrderLimitedForProvider1
    public let providerRoles: [OrderProviderRoleEnum]
    public let shipperOrgCompanyName: String?
    public let taskGroupsExpanded: [TaskGroupExpanded]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        coordinatorOrgCompanyName: String? = nil,
        coordinatorOrgHandle: String? = nil,
        notificationIntentsAdHoc: [NotificationIntentAdHoc1]? = nil,
        offChrtShipperOrgCompanyName: String? = nil,
        order: OrderLimitedForProvider1,
        providerRoles: [OrderProviderRoleEnum],
        shipperOrgCompanyName: String? = nil,
        taskGroupsExpanded: [TaskGroupExpanded]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.coordinatorOrgCompanyName = coordinatorOrgCompanyName
        self.coordinatorOrgHandle = coordinatorOrgHandle
        self.notificationIntentsAdHoc = notificationIntentsAdHoc
        self.offChrtShipperOrgCompanyName = offChrtShipperOrgCompanyName
        self.order = order
        self.providerRoles = providerRoles
        self.shipperOrgCompanyName = shipperOrgCompanyName
        self.taskGroupsExpanded = taskGroupsExpanded
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.coordinatorOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgCompanyName)
        self.coordinatorOrgHandle = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgHandle)
        self.notificationIntentsAdHoc = try container.decodeIfPresent([NotificationIntentAdHoc1].self, forKey: .notificationIntentsAdHoc)
        self.offChrtShipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgCompanyName)
        self.order = try container.decode(OrderLimitedForProvider1.self, forKey: .order)
        self.providerRoles = try container.decode([OrderProviderRoleEnum].self, forKey: .providerRoles)
        self.shipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .shipperOrgCompanyName)
        self.taskGroupsExpanded = try container.decodeIfPresent([TaskGroupExpanded].self, forKey: .taskGroupsExpanded)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.coordinatorOrgCompanyName, forKey: .coordinatorOrgCompanyName)
        try container.encodeIfPresent(self.coordinatorOrgHandle, forKey: .coordinatorOrgHandle)
        try container.encodeIfPresent(self.notificationIntentsAdHoc, forKey: .notificationIntentsAdHoc)
        try container.encodeIfPresent(self.offChrtShipperOrgCompanyName, forKey: .offChrtShipperOrgCompanyName)
        try container.encode(self.order, forKey: .order)
        try container.encode(self.providerRoles, forKey: .providerRoles)
        try container.encodeIfPresent(self.shipperOrgCompanyName, forKey: .shipperOrgCompanyName)
        try container.encodeIfPresent(self.taskGroupsExpanded, forKey: .taskGroupsExpanded)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case coordinatorOrgCompanyName = "coordinator_org_company_name"
        case coordinatorOrgHandle = "coordinator_org_handle"
        case notificationIntentsAdHoc = "notification_intents_ad_hoc"
        case offChrtShipperOrgCompanyName = "off_chrt_shipper_org_company_name"
        case order
        case providerRoles = "provider_roles"
        case shipperOrgCompanyName = "shipper_org_company_name"
        case taskGroupsExpanded = "task_groups_expanded"
    }
}