import Foundation

public struct OrderTemplate1: Codable, Hashable, Sendable {
    public let id: String
    public let archivedAtTimestamp: Date?
    public let coordinatorLabel: String?
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String?
    public let createdAtTimestamp: Date
    public let departmentId: String?
    public let description: String?
    public let directoryEntryIds: [String]?
    public let driverIds: [String]?
    public let executorOrgIds: [String]?
    public let lastEditedAtTimestamp: Date
    public let lastUsedAtTimestamp: Date?
    public let name: String
    public let offChrtExecutorOrgIds: [String]?
    public let offChrtReferenceIdStr: String?
    public let offChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    /// Must be a string starting with `user_`
    public let ownedByUserId: String
    public let schemaVersion: Int
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let taskListsToApplyAtOrderCreation: [TaskListToApplyToOrder1]?
    public let taskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]?
    public let text: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        archivedAtTimestamp: Date? = nil,
        coordinatorLabel: String? = nil,
        coordinatorOrgId: String? = nil,
        createdAtTimestamp: Date,
        departmentId: String? = nil,
        description: String? = nil,
        directoryEntryIds: [String]? = nil,
        driverIds: [String]? = nil,
        executorOrgIds: [String]? = nil,
        lastEditedAtTimestamp: Date,
        lastUsedAtTimestamp: Date? = nil,
        name: String,
        offChrtExecutorOrgIds: [String]? = nil,
        offChrtReferenceIdStr: String? = nil,
        offChrtShipperOrgId: String? = nil,
        ownedByOrgId: String,
        ownedByUserId: String,
        schemaVersion: Int,
        shipperOrgId: String? = nil,
        taskListsToApplyAtOrderCreation: [TaskListToApplyToOrder1]? = nil,
        taskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]? = nil,
        text: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.archivedAtTimestamp = archivedAtTimestamp
        self.coordinatorLabel = coordinatorLabel
        self.coordinatorOrgId = coordinatorOrgId
        self.createdAtTimestamp = createdAtTimestamp
        self.departmentId = departmentId
        self.description = description
        self.directoryEntryIds = directoryEntryIds
        self.driverIds = driverIds
        self.executorOrgIds = executorOrgIds
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.lastUsedAtTimestamp = lastUsedAtTimestamp
        self.name = name
        self.offChrtExecutorOrgIds = offChrtExecutorOrgIds
        self.offChrtReferenceIdStr = offChrtReferenceIdStr
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.ownedByOrgId = ownedByOrgId
        self.ownedByUserId = ownedByUserId
        self.schemaVersion = schemaVersion
        self.shipperOrgId = shipperOrgId
        self.taskListsToApplyAtOrderCreation = taskListsToApplyAtOrderCreation
        self.taskListsToApplyAtOrderStaging = taskListsToApplyAtOrderStaging
        self.text = text
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.archivedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .archivedAtTimestamp)
        self.coordinatorLabel = try container.decodeIfPresent(String.self, forKey: .coordinatorLabel)
        self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.directoryEntryIds = try container.decodeIfPresent([String].self, forKey: .directoryEntryIds)
        self.driverIds = try container.decodeIfPresent([String].self, forKey: .driverIds)
        self.executorOrgIds = try container.decodeIfPresent([String].self, forKey: .executorOrgIds)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.lastUsedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .lastUsedAtTimestamp)
        self.name = try container.decode(String.self, forKey: .name)
        self.offChrtExecutorOrgIds = try container.decodeIfPresent([String].self, forKey: .offChrtExecutorOrgIds)
        self.offChrtReferenceIdStr = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceIdStr)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.ownedByUserId = try container.decode(String.self, forKey: .ownedByUserId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.taskListsToApplyAtOrderCreation = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .taskListsToApplyAtOrderCreation)
        self.taskListsToApplyAtOrderStaging = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .taskListsToApplyAtOrderStaging)
        self.text = try container.decodeIfPresent(String.self, forKey: .text)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.archivedAtTimestamp, forKey: .archivedAtTimestamp)
        try container.encodeIfPresent(self.coordinatorLabel, forKey: .coordinatorLabel)
        try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.directoryEntryIds, forKey: .directoryEntryIds)
        try container.encodeIfPresent(self.driverIds, forKey: .driverIds)
        try container.encodeIfPresent(self.executorOrgIds, forKey: .executorOrgIds)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encodeIfPresent(self.lastUsedAtTimestamp, forKey: .lastUsedAtTimestamp)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.offChrtExecutorOrgIds, forKey: .offChrtExecutorOrgIds)
        try container.encodeIfPresent(self.offChrtReferenceIdStr, forKey: .offChrtReferenceIdStr)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.ownedByUserId, forKey: .ownedByUserId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encodeIfPresent(self.taskListsToApplyAtOrderCreation, forKey: .taskListsToApplyAtOrderCreation)
        try container.encodeIfPresent(self.taskListsToApplyAtOrderStaging, forKey: .taskListsToApplyAtOrderStaging)
        try container.encodeIfPresent(self.text, forKey: .text)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case archivedAtTimestamp = "archived_at_timestamp"
        case coordinatorLabel = "coordinator_label"
        case coordinatorOrgId = "coordinator_org_id"
        case createdAtTimestamp = "created_at_timestamp"
        case departmentId = "department_id"
        case description
        case directoryEntryIds = "directory_entry_ids"
        case driverIds = "driver_ids"
        case executorOrgIds = "executor_org_ids"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case lastUsedAtTimestamp = "last_used_at_timestamp"
        case name
        case offChrtExecutorOrgIds = "off_chrt_executor_org_ids"
        case offChrtReferenceIdStr = "off_chrt_reference_id_str"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case ownedByOrgId = "owned_by_org_id"
        case ownedByUserId = "owned_by_user_id"
        case schemaVersion = "schema_version"
        case shipperOrgId = "shipper_org_id"
        case taskListsToApplyAtOrderCreation = "task_lists_to_apply_at_order_creation"
        case taskListsToApplyAtOrderStaging = "task_lists_to_apply_at_order_staging"
        case text
    }
}