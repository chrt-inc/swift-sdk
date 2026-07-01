import Foundation

public struct OrderAndTaskGroupExpandedReq: Codable, Hashable, Sendable {
    public let expandCargos: Bool?
    public let expandCoordinatorOrgCompanyName: Bool?
    public let expandCoordinatorOrgHandle: Bool?
    public let expandDirectoryEntries: Bool?
    public let expandDriver: Bool?
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
        expandCargos: Bool? = nil,
        expandCoordinatorOrgCompanyName: Bool? = nil,
        expandCoordinatorOrgHandle: Bool? = nil,
        expandDirectoryEntries: Bool? = nil,
        expandDriver: Bool? = nil,
        expandExecutorOrgCompanyName: Bool? = nil,
        expandExecutorOrgHandle: Bool? = nil,
        expandNotificationIntentsAdHoc: Bool? = nil,
        expandOffChrtShipperOrgCompanyName: Bool? = nil,
        expandShipperOrgCompanyName: Bool? = nil,
        expandTaskArtifacts: Bool? = nil,
        expandTasks: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.expandCargos = expandCargos
        self.expandCoordinatorOrgCompanyName = expandCoordinatorOrgCompanyName
        self.expandCoordinatorOrgHandle = expandCoordinatorOrgHandle
        self.expandDirectoryEntries = expandDirectoryEntries
        self.expandDriver = expandDriver
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
        self.expandCargos = try container.decodeIfPresent(Bool.self, forKey: .expandCargos)
        self.expandCoordinatorOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandCoordinatorOrgCompanyName)
        self.expandCoordinatorOrgHandle = try container.decodeIfPresent(Bool.self, forKey: .expandCoordinatorOrgHandle)
        self.expandDirectoryEntries = try container.decodeIfPresent(Bool.self, forKey: .expandDirectoryEntries)
        self.expandDriver = try container.decodeIfPresent(Bool.self, forKey: .expandDriver)
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
        try container.encodeIfPresent(self.expandCargos, forKey: .expandCargos)
        try container.encodeIfPresent(self.expandCoordinatorOrgCompanyName, forKey: .expandCoordinatorOrgCompanyName)
        try container.encodeIfPresent(self.expandCoordinatorOrgHandle, forKey: .expandCoordinatorOrgHandle)
        try container.encodeIfPresent(self.expandDirectoryEntries, forKey: .expandDirectoryEntries)
        try container.encodeIfPresent(self.expandDriver, forKey: .expandDriver)
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
        case expandCargos = "expand_cargos"
        case expandCoordinatorOrgCompanyName = "expand_coordinator_org_company_name"
        case expandCoordinatorOrgHandle = "expand_coordinator_org_handle"
        case expandDirectoryEntries = "expand_directory_entries"
        case expandDriver = "expand_driver"
        case expandExecutorOrgCompanyName = "expand_executor_org_company_name"
        case expandExecutorOrgHandle = "expand_executor_org_handle"
        case expandNotificationIntentsAdHoc = "expand_notification_intents_ad_hoc"
        case expandOffChrtShipperOrgCompanyName = "expand_off_chrt_shipper_org_company_name"
        case expandShipperOrgCompanyName = "expand_shipper_org_company_name"
        case expandTaskArtifacts = "expand_task_artifacts"
        case expandTasks = "expand_tasks"
    }
}