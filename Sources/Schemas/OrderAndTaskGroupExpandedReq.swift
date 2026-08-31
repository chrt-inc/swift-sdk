import Foundation

public struct OrderAndTaskGroupExpandedReq: Codable, Hashable, Sendable {
    public let expandAccounts: Bool?
    public let expandCargos: Bool?
    public let expandContacts: Bool?
    public let expandCoordinatorDepartment: Bool?
    public let expandCoordinatorOrgCompanyName: Bool?
    public let expandCoordinatorOrgHandle: Bool?
    public let expandCoordinatorTaskListsToApplyAtOrderStaging: Bool?
    public let expandDriver: Bool?
    public let expandExecutorDepartment: Bool?
    public let expandExecutorOrgCompanyName: Bool?
    public let expandExecutorOrgHandle: Bool?
    public let expandNotificationIntentsAdHoc: Bool?
    public let expandOffChrtShipperOrgCompanyName: Bool?
    public let expandShipperOrgCompanyName: Bool?
    public let expandTaskArtifacts: Bool?
    public let expandTasks: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        expandAccounts: Bool? = nil,
        expandCargos: Bool? = nil,
        expandContacts: Bool? = nil,
        expandCoordinatorDepartment: Bool? = nil,
        expandCoordinatorOrgCompanyName: Bool? = nil,
        expandCoordinatorOrgHandle: Bool? = nil,
        expandCoordinatorTaskListsToApplyAtOrderStaging: Bool? = nil,
        expandDriver: Bool? = nil,
        expandExecutorDepartment: Bool? = nil,
        expandExecutorOrgCompanyName: Bool? = nil,
        expandExecutorOrgHandle: Bool? = nil,
        expandNotificationIntentsAdHoc: Bool? = nil,
        expandOffChrtShipperOrgCompanyName: Bool? = nil,
        expandShipperOrgCompanyName: Bool? = nil,
        expandTaskArtifacts: Bool? = nil,
        expandTasks: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.expandAccounts = expandAccounts
        self.expandCargos = expandCargos
        self.expandContacts = expandContacts
        self.expandCoordinatorDepartment = expandCoordinatorDepartment
        self.expandCoordinatorOrgCompanyName = expandCoordinatorOrgCompanyName
        self.expandCoordinatorOrgHandle = expandCoordinatorOrgHandle
        self.expandCoordinatorTaskListsToApplyAtOrderStaging = expandCoordinatorTaskListsToApplyAtOrderStaging
        self.expandDriver = expandDriver
        self.expandExecutorDepartment = expandExecutorDepartment
        self.expandExecutorOrgCompanyName = expandExecutorOrgCompanyName
        self.expandExecutorOrgHandle = expandExecutorOrgHandle
        self.expandNotificationIntentsAdHoc = expandNotificationIntentsAdHoc
        self.expandOffChrtShipperOrgCompanyName = expandOffChrtShipperOrgCompanyName
        self.expandShipperOrgCompanyName = expandShipperOrgCompanyName
        self.expandTaskArtifacts = expandTaskArtifacts
        self.expandTasks = expandTasks
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.expandAccounts = try container.decodeIfPresent(Bool.self, forKey: .expandAccounts)
        self.expandCargos = try container.decodeIfPresent(Bool.self, forKey: .expandCargos)
        self.expandContacts = try container.decodeIfPresent(Bool.self, forKey: .expandContacts)
        self.expandCoordinatorDepartment = try container.decodeIfPresent(Bool.self, forKey: .expandCoordinatorDepartment)
        self.expandCoordinatorOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandCoordinatorOrgCompanyName)
        self.expandCoordinatorOrgHandle = try container.decodeIfPresent(Bool.self, forKey: .expandCoordinatorOrgHandle)
        self.expandCoordinatorTaskListsToApplyAtOrderStaging = try container.decodeIfPresent(Bool.self, forKey: .expandCoordinatorTaskListsToApplyAtOrderStaging)
        self.expandDriver = try container.decodeIfPresent(Bool.self, forKey: .expandDriver)
        self.expandExecutorDepartment = try container.decodeIfPresent(Bool.self, forKey: .expandExecutorDepartment)
        self.expandExecutorOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandExecutorOrgCompanyName)
        self.expandExecutorOrgHandle = try container.decodeIfPresent(Bool.self, forKey: .expandExecutorOrgHandle)
        self.expandNotificationIntentsAdHoc = try container.decodeIfPresent(Bool.self, forKey: .expandNotificationIntentsAdHoc)
        self.expandOffChrtShipperOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandOffChrtShipperOrgCompanyName)
        self.expandShipperOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandShipperOrgCompanyName)
        self.expandTaskArtifacts = try container.decodeIfPresent(Bool.self, forKey: .expandTaskArtifacts)
        self.expandTasks = try container.decodeIfPresent(Bool.self, forKey: .expandTasks)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.expandAccounts, forKey: .expandAccounts)
        try container.encodeIfPresent(self.expandCargos, forKey: .expandCargos)
        try container.encodeIfPresent(self.expandContacts, forKey: .expandContacts)
        try container.encodeIfPresent(self.expandCoordinatorDepartment, forKey: .expandCoordinatorDepartment)
        try container.encodeIfPresent(self.expandCoordinatorOrgCompanyName, forKey: .expandCoordinatorOrgCompanyName)
        try container.encodeIfPresent(self.expandCoordinatorOrgHandle, forKey: .expandCoordinatorOrgHandle)
        try container.encodeIfPresent(self.expandCoordinatorTaskListsToApplyAtOrderStaging, forKey: .expandCoordinatorTaskListsToApplyAtOrderStaging)
        try container.encodeIfPresent(self.expandDriver, forKey: .expandDriver)
        try container.encodeIfPresent(self.expandExecutorDepartment, forKey: .expandExecutorDepartment)
        try container.encodeIfPresent(self.expandExecutorOrgCompanyName, forKey: .expandExecutorOrgCompanyName)
        try container.encodeIfPresent(self.expandExecutorOrgHandle, forKey: .expandExecutorOrgHandle)
        try container.encodeIfPresent(self.expandNotificationIntentsAdHoc, forKey: .expandNotificationIntentsAdHoc)
        try container.encodeIfPresent(self.expandOffChrtShipperOrgCompanyName, forKey: .expandOffChrtShipperOrgCompanyName)
        try container.encodeIfPresent(self.expandShipperOrgCompanyName, forKey: .expandShipperOrgCompanyName)
        try container.encodeIfPresent(self.expandTaskArtifacts, forKey: .expandTaskArtifacts)
        try container.encodeIfPresent(self.expandTasks, forKey: .expandTasks)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case expandAccounts = "expand_accounts"
        case expandCargos = "expand_cargos"
        case expandContacts = "expand_contacts"
        case expandCoordinatorDepartment = "expand_coordinator_department"
        case expandCoordinatorOrgCompanyName = "expand_coordinator_org_company_name"
        case expandCoordinatorOrgHandle = "expand_coordinator_org_handle"
        case expandCoordinatorTaskListsToApplyAtOrderStaging = "expand_coordinator_task_lists_to_apply_at_order_staging"
        case expandDriver = "expand_driver"
        case expandExecutorDepartment = "expand_executor_department"
        case expandExecutorOrgCompanyName = "expand_executor_org_company_name"
        case expandExecutorOrgHandle = "expand_executor_org_handle"
        case expandNotificationIntentsAdHoc = "expand_notification_intents_ad_hoc"
        case expandOffChrtShipperOrgCompanyName = "expand_off_chrt_shipper_org_company_name"
        case expandShipperOrgCompanyName = "expand_shipper_org_company_name"
        case expandTaskArtifacts = "expand_task_artifacts"
        case expandTasks = "expand_tasks"
    }
}