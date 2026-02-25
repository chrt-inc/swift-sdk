import Foundation

public struct OrderAndTaskGroupExpandedReq: Codable, Hashable, Sendable {
    public let expandCargos: Bool?
    public let expandCourierOrgCompanyName: Bool?
    public let expandCourierOrgHandle: Bool?
    public let expandDirectoryEntries: Bool?
    public let expandDriver: Bool?
    public let expandForwarderOrgCompanyName: Bool?
    public let expandForwarderOrgHandle: Bool?
    public let expandNotificationIntentsAdHoc: Bool?
    public let expandOffChrtShipperOrgCompanyName: Bool?
    public let expandShipperOrgCompanyName: Bool?
    public let expandTaskArtifacts: Bool?
    public let expandTasks: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        expandCargos: Bool? = nil,
        expandCourierOrgCompanyName: Bool? = nil,
        expandCourierOrgHandle: Bool? = nil,
        expandDirectoryEntries: Bool? = nil,
        expandDriver: Bool? = nil,
        expandForwarderOrgCompanyName: Bool? = nil,
        expandForwarderOrgHandle: Bool? = nil,
        expandNotificationIntentsAdHoc: Bool? = nil,
        expandOffChrtShipperOrgCompanyName: Bool? = nil,
        expandShipperOrgCompanyName: Bool? = nil,
        expandTaskArtifacts: Bool? = nil,
        expandTasks: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.expandCargos = expandCargos
        self.expandCourierOrgCompanyName = expandCourierOrgCompanyName
        self.expandCourierOrgHandle = expandCourierOrgHandle
        self.expandDirectoryEntries = expandDirectoryEntries
        self.expandDriver = expandDriver
        self.expandForwarderOrgCompanyName = expandForwarderOrgCompanyName
        self.expandForwarderOrgHandle = expandForwarderOrgHandle
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
        self.expandCourierOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandCourierOrgCompanyName)
        self.expandCourierOrgHandle = try container.decodeIfPresent(Bool.self, forKey: .expandCourierOrgHandle)
        self.expandDirectoryEntries = try container.decodeIfPresent(Bool.self, forKey: .expandDirectoryEntries)
        self.expandDriver = try container.decodeIfPresent(Bool.self, forKey: .expandDriver)
        self.expandForwarderOrgCompanyName = try container.decodeIfPresent(Bool.self, forKey: .expandForwarderOrgCompanyName)
        self.expandForwarderOrgHandle = try container.decodeIfPresent(Bool.self, forKey: .expandForwarderOrgHandle)
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
        try container.encodeIfPresent(self.expandCourierOrgCompanyName, forKey: .expandCourierOrgCompanyName)
        try container.encodeIfPresent(self.expandCourierOrgHandle, forKey: .expandCourierOrgHandle)
        try container.encodeIfPresent(self.expandDirectoryEntries, forKey: .expandDirectoryEntries)
        try container.encodeIfPresent(self.expandDriver, forKey: .expandDriver)
        try container.encodeIfPresent(self.expandForwarderOrgCompanyName, forKey: .expandForwarderOrgCompanyName)
        try container.encodeIfPresent(self.expandForwarderOrgHandle, forKey: .expandForwarderOrgHandle)
        try container.encodeIfPresent(self.expandNotificationIntentsAdHoc, forKey: .expandNotificationIntentsAdHoc)
        try container.encodeIfPresent(self.expandOffChrtShipperOrgCompanyName, forKey: .expandOffChrtShipperOrgCompanyName)
        try container.encodeIfPresent(self.expandShipperOrgCompanyName, forKey: .expandShipperOrgCompanyName)
        try container.encodeIfPresent(self.expandTaskArtifacts, forKey: .expandTaskArtifacts)
        try container.encodeIfPresent(self.expandTasks, forKey: .expandTasks)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case expandCargos = "expand_cargos"
        case expandCourierOrgCompanyName = "expand_courier_org_company_name"
        case expandCourierOrgHandle = "expand_courier_org_handle"
        case expandDirectoryEntries = "expand_directory_entries"
        case expandDriver = "expand_driver"
        case expandForwarderOrgCompanyName = "expand_forwarder_org_company_name"
        case expandForwarderOrgHandle = "expand_forwarder_org_handle"
        case expandNotificationIntentsAdHoc = "expand_notification_intents_ad_hoc"
        case expandOffChrtShipperOrgCompanyName = "expand_off_chrt_shipper_org_company_name"
        case expandShipperOrgCompanyName = "expand_shipper_org_company_name"
        case expandTaskArtifacts = "expand_task_artifacts"
        case expandTasks = "expand_tasks"
    }
}