import Foundation

public struct OrderTemplateNewCore1: Codable, Hashable, Sendable {
    public let cargos: [OrderTemplateNewCargo1]?
    public let coordinatorAssignedUserIds: [String]?
    public let coordinatorDepartmentIds: [String]?
    public let coordinatorLabels: [String]?
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String?
    public let enabledSurchargeTypes: [OrderBillingSurchargeTypeEnum1]?
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let offChrtReferenceId: String?
    public let offChrtShipperOrgDataId: String?
    public let schemaVersion: Int
    public let serviceLine: ServiceLineEnum?
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let taskGroups: [OrderTemplateNewTaskGroup1]?
    public let taskListsToApplyAtOrderCreation: [TaskListToApplyToOrder1]?
    public let taskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cargos: [OrderTemplateNewCargo1]? = nil,
        coordinatorAssignedUserIds: [String]? = nil,
        coordinatorDepartmentIds: [String]? = nil,
        coordinatorLabels: [String]? = nil,
        coordinatorOrgId: String? = nil,
        enabledSurchargeTypes: [OrderBillingSurchargeTypeEnum1]? = nil,
        offChrtReferenceId: String? = nil,
        offChrtShipperOrgDataId: String? = nil,
        schemaVersion: Int,
        serviceLine: ServiceLineEnum? = nil,
        shipperOrgId: String? = nil,
        taskGroups: [OrderTemplateNewTaskGroup1]? = nil,
        taskListsToApplyAtOrderCreation: [TaskListToApplyToOrder1]? = nil,
        taskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cargos = cargos
        self.coordinatorAssignedUserIds = coordinatorAssignedUserIds
        self.coordinatorDepartmentIds = coordinatorDepartmentIds
        self.coordinatorLabels = coordinatorLabels
        self.coordinatorOrgId = coordinatorOrgId
        self.enabledSurchargeTypes = enabledSurchargeTypes
        self.offChrtReferenceId = offChrtReferenceId
        self.offChrtShipperOrgDataId = offChrtShipperOrgDataId
        self.schemaVersion = schemaVersion
        self.serviceLine = serviceLine
        self.shipperOrgId = shipperOrgId
        self.taskGroups = taskGroups
        self.taskListsToApplyAtOrderCreation = taskListsToApplyAtOrderCreation
        self.taskListsToApplyAtOrderStaging = taskListsToApplyAtOrderStaging
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cargos = try container.decodeIfPresent([OrderTemplateNewCargo1].self, forKey: .cargos)
        self.coordinatorAssignedUserIds = try container.decodeIfPresent([String].self, forKey: .coordinatorAssignedUserIds)
        self.coordinatorDepartmentIds = try container.decodeIfPresent([String].self, forKey: .coordinatorDepartmentIds)
        self.coordinatorLabels = try container.decodeIfPresent([String].self, forKey: .coordinatorLabels)
        self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
        self.enabledSurchargeTypes = try container.decodeIfPresent([OrderBillingSurchargeTypeEnum1].self, forKey: .enabledSurchargeTypes)
        self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
        self.offChrtShipperOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgDataId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.serviceLine = try container.decodeIfPresent(ServiceLineEnum.self, forKey: .serviceLine)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.taskGroups = try container.decodeIfPresent([OrderTemplateNewTaskGroup1].self, forKey: .taskGroups)
        self.taskListsToApplyAtOrderCreation = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .taskListsToApplyAtOrderCreation)
        self.taskListsToApplyAtOrderStaging = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .taskListsToApplyAtOrderStaging)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.cargos, forKey: .cargos)
        try container.encodeIfPresent(self.coordinatorAssignedUserIds, forKey: .coordinatorAssignedUserIds)
        try container.encodeIfPresent(self.coordinatorDepartmentIds, forKey: .coordinatorDepartmentIds)
        try container.encodeIfPresent(self.coordinatorLabels, forKey: .coordinatorLabels)
        try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encodeIfPresent(self.enabledSurchargeTypes, forKey: .enabledSurchargeTypes)
        try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
        try container.encodeIfPresent(self.offChrtShipperOrgDataId, forKey: .offChrtShipperOrgDataId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.serviceLine, forKey: .serviceLine)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encodeIfPresent(self.taskGroups, forKey: .taskGroups)
        try container.encodeIfPresent(self.taskListsToApplyAtOrderCreation, forKey: .taskListsToApplyAtOrderCreation)
        try container.encodeIfPresent(self.taskListsToApplyAtOrderStaging, forKey: .taskListsToApplyAtOrderStaging)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cargos
        case coordinatorAssignedUserIds = "coordinator_assigned_user_ids"
        case coordinatorDepartmentIds = "coordinator_department_ids"
        case coordinatorLabels = "coordinator_labels"
        case coordinatorOrgId = "coordinator_org_id"
        case enabledSurchargeTypes = "enabled_surcharge_types"
        case offChrtReferenceId = "off_chrt_reference_id"
        case offChrtShipperOrgDataId = "off_chrt_shipper_org_data_id"
        case schemaVersion = "schema_version"
        case serviceLine = "service_line"
        case shipperOrgId = "shipper_org_id"
        case taskGroups = "task_groups"
        case taskListsToApplyAtOrderCreation = "task_lists_to_apply_at_order_creation"
        case taskListsToApplyAtOrderStaging = "task_lists_to_apply_at_order_staging"
    }
}