import Foundation

public struct OrderTemplateNewExpanded1: Codable, Hashable, Sendable {
    public let id: String
    public let archivedAtTimestamp: Date?
    public let cargos: [OrderTemplateNewCargo1]?
    public let coordinatorAssignedUserIds: [String]?
    public let coordinatorDepartmentId: String?
    public let coordinatorLabel: String?
    public let coordinatorOrg: OrgPublicData1?
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String?
    public let createdAtTimestamp: Date
    public let description: String?
    public let lastEditedAtTimestamp: Date
    public let lastUsedAtTimestamp: Date?
    public let name: String
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let offChrtReferenceId: String?
    public let offChrtShipperOrg: OffChrtOrgData1?
    public let offChrtShipperOrgDataId: String?
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    /// Must be a string starting with `user_`
    public let ownedByUserId: String
    public let schemaVersion: Int
    public let serviceLine: ServiceLineEnum?
    public let shipperOrg: OrgPublicData1?
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let taskGroups: [OrderTemplateNewTaskGroup1]?
    public let taskGroupsExpanded: [OrderTemplateNewTaskGroupExpanded1]?
    public let taskListsToApplyAtOrderCreation: [TaskListToApplyToOrder1]?
    public let taskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        archivedAtTimestamp: Date? = nil,
        cargos: [OrderTemplateNewCargo1]? = nil,
        coordinatorAssignedUserIds: [String]? = nil,
        coordinatorDepartmentId: String? = nil,
        coordinatorLabel: String? = nil,
        coordinatorOrg: OrgPublicData1? = nil,
        coordinatorOrgId: String? = nil,
        createdAtTimestamp: Date,
        description: String? = nil,
        lastEditedAtTimestamp: Date,
        lastUsedAtTimestamp: Date? = nil,
        name: String,
        offChrtReferenceId: String? = nil,
        offChrtShipperOrg: OffChrtOrgData1? = nil,
        offChrtShipperOrgDataId: String? = nil,
        ownedByOrgId: String,
        ownedByUserId: String,
        schemaVersion: Int,
        serviceLine: ServiceLineEnum? = nil,
        shipperOrg: OrgPublicData1? = nil,
        shipperOrgId: String? = nil,
        taskGroups: [OrderTemplateNewTaskGroup1]? = nil,
        taskGroupsExpanded: [OrderTemplateNewTaskGroupExpanded1]? = nil,
        taskListsToApplyAtOrderCreation: [TaskListToApplyToOrder1]? = nil,
        taskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.archivedAtTimestamp = archivedAtTimestamp
        self.cargos = cargos
        self.coordinatorAssignedUserIds = coordinatorAssignedUserIds
        self.coordinatorDepartmentId = coordinatorDepartmentId
        self.coordinatorLabel = coordinatorLabel
        self.coordinatorOrg = coordinatorOrg
        self.coordinatorOrgId = coordinatorOrgId
        self.createdAtTimestamp = createdAtTimestamp
        self.description = description
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.lastUsedAtTimestamp = lastUsedAtTimestamp
        self.name = name
        self.offChrtReferenceId = offChrtReferenceId
        self.offChrtShipperOrg = offChrtShipperOrg
        self.offChrtShipperOrgDataId = offChrtShipperOrgDataId
        self.ownedByOrgId = ownedByOrgId
        self.ownedByUserId = ownedByUserId
        self.schemaVersion = schemaVersion
        self.serviceLine = serviceLine
        self.shipperOrg = shipperOrg
        self.shipperOrgId = shipperOrgId
        self.taskGroups = taskGroups
        self.taskGroupsExpanded = taskGroupsExpanded
        self.taskListsToApplyAtOrderCreation = taskListsToApplyAtOrderCreation
        self.taskListsToApplyAtOrderStaging = taskListsToApplyAtOrderStaging
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.archivedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .archivedAtTimestamp)
        self.cargos = try container.decodeIfPresent([OrderTemplateNewCargo1].self, forKey: .cargos)
        self.coordinatorAssignedUserIds = try container.decodeIfPresent([String].self, forKey: .coordinatorAssignedUserIds)
        self.coordinatorDepartmentId = try container.decodeIfPresent(String.self, forKey: .coordinatorDepartmentId)
        self.coordinatorLabel = try container.decodeIfPresent(String.self, forKey: .coordinatorLabel)
        self.coordinatorOrg = try container.decodeIfPresent(OrgPublicData1.self, forKey: .coordinatorOrg)
        self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.lastUsedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .lastUsedAtTimestamp)
        self.name = try container.decode(String.self, forKey: .name)
        self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
        self.offChrtShipperOrg = try container.decodeIfPresent(OffChrtOrgData1.self, forKey: .offChrtShipperOrg)
        self.offChrtShipperOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgDataId)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.ownedByUserId = try container.decode(String.self, forKey: .ownedByUserId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.serviceLine = try container.decodeIfPresent(ServiceLineEnum.self, forKey: .serviceLine)
        self.shipperOrg = try container.decodeIfPresent(OrgPublicData1.self, forKey: .shipperOrg)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.taskGroups = try container.decodeIfPresent([OrderTemplateNewTaskGroup1].self, forKey: .taskGroups)
        self.taskGroupsExpanded = try container.decodeIfPresent([OrderTemplateNewTaskGroupExpanded1].self, forKey: .taskGroupsExpanded)
        self.taskListsToApplyAtOrderCreation = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .taskListsToApplyAtOrderCreation)
        self.taskListsToApplyAtOrderStaging = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .taskListsToApplyAtOrderStaging)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.archivedAtTimestamp, forKey: .archivedAtTimestamp)
        try container.encodeIfPresent(self.cargos, forKey: .cargos)
        try container.encodeIfPresent(self.coordinatorAssignedUserIds, forKey: .coordinatorAssignedUserIds)
        try container.encodeIfPresent(self.coordinatorDepartmentId, forKey: .coordinatorDepartmentId)
        try container.encodeIfPresent(self.coordinatorLabel, forKey: .coordinatorLabel)
        try container.encodeIfPresent(self.coordinatorOrg, forKey: .coordinatorOrg)
        try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encodeIfPresent(self.lastUsedAtTimestamp, forKey: .lastUsedAtTimestamp)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
        try container.encodeIfPresent(self.offChrtShipperOrg, forKey: .offChrtShipperOrg)
        try container.encodeIfPresent(self.offChrtShipperOrgDataId, forKey: .offChrtShipperOrgDataId)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.ownedByUserId, forKey: .ownedByUserId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.serviceLine, forKey: .serviceLine)
        try container.encodeIfPresent(self.shipperOrg, forKey: .shipperOrg)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encodeIfPresent(self.taskGroups, forKey: .taskGroups)
        try container.encodeIfPresent(self.taskGroupsExpanded, forKey: .taskGroupsExpanded)
        try container.encodeIfPresent(self.taskListsToApplyAtOrderCreation, forKey: .taskListsToApplyAtOrderCreation)
        try container.encodeIfPresent(self.taskListsToApplyAtOrderStaging, forKey: .taskListsToApplyAtOrderStaging)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case archivedAtTimestamp = "archived_at_timestamp"
        case cargos
        case coordinatorAssignedUserIds = "coordinator_assigned_user_ids"
        case coordinatorDepartmentId = "coordinator_department_id"
        case coordinatorLabel = "coordinator_label"
        case coordinatorOrg = "coordinator_org"
        case coordinatorOrgId = "coordinator_org_id"
        case createdAtTimestamp = "created_at_timestamp"
        case description
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case lastUsedAtTimestamp = "last_used_at_timestamp"
        case name
        case offChrtReferenceId = "off_chrt_reference_id"
        case offChrtShipperOrg = "off_chrt_shipper_org"
        case offChrtShipperOrgDataId = "off_chrt_shipper_org_data_id"
        case ownedByOrgId = "owned_by_org_id"
        case ownedByUserId = "owned_by_user_id"
        case schemaVersion = "schema_version"
        case serviceLine = "service_line"
        case shipperOrg = "shipper_org"
        case shipperOrgId = "shipper_org_id"
        case taskGroups = "task_groups"
        case taskGroupsExpanded = "task_groups_expanded"
        case taskListsToApplyAtOrderCreation = "task_lists_to_apply_at_order_creation"
        case taskListsToApplyAtOrderStaging = "task_lists_to_apply_at_order_staging"
    }
}