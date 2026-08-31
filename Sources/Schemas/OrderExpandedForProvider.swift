import Foundation

public struct OrderExpandedForProvider: Codable, Hashable, Sendable {
    public let coordinatorDepartment: Department1?
    public let coordinatorOrgCompanyName: String?
    /// Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
    public let coordinatorOrgHandle: String?
    public let coordinatorShipperAccounts: [Account1]?
    public let coordinatorTaskListsToApplyAtOrderStagingExpanded: [TaskListToApplyToOrderExpanded]?
    public let notificationIntentsAdHoc: [NotificationIntentAdHoc1]?
    public let offChrtShipperOrgCompanyName: String?
    public let order: OrderLimitedForProvider1
    public let providerRoles: [OrderProviderRoleEnum]
    public let shipperOrgCompanyName: String?
    public let taskGroupsExpanded: [TaskGroupExpanded]?
    public let unassignedCargos: [Cargo1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        coordinatorDepartment: Department1? = nil,
        coordinatorOrgCompanyName: String? = nil,
        coordinatorOrgHandle: String? = nil,
        coordinatorShipperAccounts: [Account1]? = nil,
        coordinatorTaskListsToApplyAtOrderStagingExpanded: [TaskListToApplyToOrderExpanded]? = nil,
        notificationIntentsAdHoc: [NotificationIntentAdHoc1]? = nil,
        offChrtShipperOrgCompanyName: String? = nil,
        order: OrderLimitedForProvider1,
        providerRoles: [OrderProviderRoleEnum],
        shipperOrgCompanyName: String? = nil,
        taskGroupsExpanded: [TaskGroupExpanded]? = nil,
        unassignedCargos: [Cargo1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.coordinatorDepartment = coordinatorDepartment
        self.coordinatorOrgCompanyName = coordinatorOrgCompanyName
        self.coordinatorOrgHandle = coordinatorOrgHandle
        self.coordinatorShipperAccounts = coordinatorShipperAccounts
        self.coordinatorTaskListsToApplyAtOrderStagingExpanded = coordinatorTaskListsToApplyAtOrderStagingExpanded
        self.notificationIntentsAdHoc = notificationIntentsAdHoc
        self.offChrtShipperOrgCompanyName = offChrtShipperOrgCompanyName
        self.order = order
        self.providerRoles = providerRoles
        self.shipperOrgCompanyName = shipperOrgCompanyName
        self.taskGroupsExpanded = taskGroupsExpanded
        self.unassignedCargos = unassignedCargos
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.coordinatorDepartment = try container.decodeIfPresent(Department1.self, forKey: .coordinatorDepartment)
        self.coordinatorOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgCompanyName)
        self.coordinatorOrgHandle = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgHandle)
        self.coordinatorShipperAccounts = try container.decodeIfPresent([Account1].self, forKey: .coordinatorShipperAccounts)
        self.coordinatorTaskListsToApplyAtOrderStagingExpanded = try container.decodeIfPresent([TaskListToApplyToOrderExpanded].self, forKey: .coordinatorTaskListsToApplyAtOrderStagingExpanded)
        self.notificationIntentsAdHoc = try container.decodeIfPresent([NotificationIntentAdHoc1].self, forKey: .notificationIntentsAdHoc)
        self.offChrtShipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgCompanyName)
        self.order = try container.decode(OrderLimitedForProvider1.self, forKey: .order)
        self.providerRoles = try container.decode([OrderProviderRoleEnum].self, forKey: .providerRoles)
        self.shipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .shipperOrgCompanyName)
        self.taskGroupsExpanded = try container.decodeIfPresent([TaskGroupExpanded].self, forKey: .taskGroupsExpanded)
        self.unassignedCargos = try container.decodeIfPresent([Cargo1].self, forKey: .unassignedCargos)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.coordinatorDepartment, forKey: .coordinatorDepartment)
        try container.encodeIfPresent(self.coordinatorOrgCompanyName, forKey: .coordinatorOrgCompanyName)
        try container.encodeIfPresent(self.coordinatorOrgHandle, forKey: .coordinatorOrgHandle)
        try container.encodeIfPresent(self.coordinatorShipperAccounts, forKey: .coordinatorShipperAccounts)
        try container.encodeIfPresent(self.coordinatorTaskListsToApplyAtOrderStagingExpanded, forKey: .coordinatorTaskListsToApplyAtOrderStagingExpanded)
        try container.encodeIfPresent(self.notificationIntentsAdHoc, forKey: .notificationIntentsAdHoc)
        try container.encodeIfPresent(self.offChrtShipperOrgCompanyName, forKey: .offChrtShipperOrgCompanyName)
        try container.encode(self.order, forKey: .order)
        try container.encode(self.providerRoles, forKey: .providerRoles)
        try container.encodeIfPresent(self.shipperOrgCompanyName, forKey: .shipperOrgCompanyName)
        try container.encodeIfPresent(self.taskGroupsExpanded, forKey: .taskGroupsExpanded)
        try container.encodeIfPresent(self.unassignedCargos, forKey: .unassignedCargos)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case coordinatorDepartment = "coordinator_department"
        case coordinatorOrgCompanyName = "coordinator_org_company_name"
        case coordinatorOrgHandle = "coordinator_org_handle"
        case coordinatorShipperAccounts = "coordinator_shipper_accounts"
        case coordinatorTaskListsToApplyAtOrderStagingExpanded = "coordinator_task_lists_to_apply_at_order_staging_expanded"
        case notificationIntentsAdHoc = "notification_intents_ad_hoc"
        case offChrtShipperOrgCompanyName = "off_chrt_shipper_org_company_name"
        case order
        case providerRoles = "provider_roles"
        case shipperOrgCompanyName = "shipper_org_company_name"
        case taskGroupsExpanded = "task_groups_expanded"
        case unassignedCargos = "unassigned_cargos"
    }
}