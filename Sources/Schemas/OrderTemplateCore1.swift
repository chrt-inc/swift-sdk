import Foundation

/// Shared seed of an order build: the order text + long-lived references. Reused by the library template (OrderTemplateBase1) and the ad-hoc kickoff payload so the fields the builder seeds from can't drift. (Mirrors TaskCore1.)
/// 
/// NOTE - some fields have multiple values and must be properly mapped to an entity by the order builder, e.g. for `driver_ids` each resolves to a single task group
public struct OrderTemplateCore1: Codable, Hashable, Sendable {
    public let caseTag: String?
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String?
    public let departmentId: String?
    public let directoryEntryIds: [String]?
    public let driverIds: [String]?
    public let executorOrgIds: [String]?
    public let offChrtExecutorOrgIds: [String]?
    public let offChrtShipperOrgId: String?
    public let schemaVersion: Int
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let taskListsToApplyAtOrderCreation: [TaskListToApplyToCase1]?
    public let taskListsToApplyAtOrderStaging: [TaskListToApplyToCase1]?
    public let text: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        caseTag: String? = nil,
        coordinatorOrgId: String? = nil,
        departmentId: String? = nil,
        directoryEntryIds: [String]? = nil,
        driverIds: [String]? = nil,
        executorOrgIds: [String]? = nil,
        offChrtExecutorOrgIds: [String]? = nil,
        offChrtShipperOrgId: String? = nil,
        schemaVersion: Int,
        shipperOrgId: String? = nil,
        taskListsToApplyAtOrderCreation: [TaskListToApplyToCase1]? = nil,
        taskListsToApplyAtOrderStaging: [TaskListToApplyToCase1]? = nil,
        text: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.caseTag = caseTag
        self.coordinatorOrgId = coordinatorOrgId
        self.departmentId = departmentId
        self.directoryEntryIds = directoryEntryIds
        self.driverIds = driverIds
        self.executorOrgIds = executorOrgIds
        self.offChrtExecutorOrgIds = offChrtExecutorOrgIds
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.schemaVersion = schemaVersion
        self.shipperOrgId = shipperOrgId
        self.taskListsToApplyAtOrderCreation = taskListsToApplyAtOrderCreation
        self.taskListsToApplyAtOrderStaging = taskListsToApplyAtOrderStaging
        self.text = text
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.caseTag = try container.decodeIfPresent(String.self, forKey: .caseTag)
        self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
        self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
        self.directoryEntryIds = try container.decodeIfPresent([String].self, forKey: .directoryEntryIds)
        self.driverIds = try container.decodeIfPresent([String].self, forKey: .driverIds)
        self.executorOrgIds = try container.decodeIfPresent([String].self, forKey: .executorOrgIds)
        self.offChrtExecutorOrgIds = try container.decodeIfPresent([String].self, forKey: .offChrtExecutorOrgIds)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.taskListsToApplyAtOrderCreation = try container.decodeIfPresent([TaskListToApplyToCase1].self, forKey: .taskListsToApplyAtOrderCreation)
        self.taskListsToApplyAtOrderStaging = try container.decodeIfPresent([TaskListToApplyToCase1].self, forKey: .taskListsToApplyAtOrderStaging)
        self.text = try container.decodeIfPresent(String.self, forKey: .text)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.caseTag, forKey: .caseTag)
        try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
        try container.encodeIfPresent(self.directoryEntryIds, forKey: .directoryEntryIds)
        try container.encodeIfPresent(self.driverIds, forKey: .driverIds)
        try container.encodeIfPresent(self.executorOrgIds, forKey: .executorOrgIds)
        try container.encodeIfPresent(self.offChrtExecutorOrgIds, forKey: .offChrtExecutorOrgIds)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encodeIfPresent(self.taskListsToApplyAtOrderCreation, forKey: .taskListsToApplyAtOrderCreation)
        try container.encodeIfPresent(self.taskListsToApplyAtOrderStaging, forKey: .taskListsToApplyAtOrderStaging)
        try container.encodeIfPresent(self.text, forKey: .text)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case caseTag = "case_tag"
        case coordinatorOrgId = "coordinator_org_id"
        case departmentId = "department_id"
        case directoryEntryIds = "directory_entry_ids"
        case driverIds = "driver_ids"
        case executorOrgIds = "executor_org_ids"
        case offChrtExecutorOrgIds = "off_chrt_executor_org_ids"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case schemaVersion = "schema_version"
        case shipperOrgId = "shipper_org_id"
        case taskListsToApplyAtOrderCreation = "task_lists_to_apply_at_order_creation"
        case taskListsToApplyAtOrderStaging = "task_lists_to_apply_at_order_staging"
        case text
    }
}