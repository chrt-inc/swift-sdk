import Foundation

public struct Order1: Codable, Hashable, Sendable {
    public let id: String
    public let awbNumbers: [String]?
    public let cancelledAtTimestamp: Date?
    public let completedAtTimestamp: Date?
    public let coordinatorAssignedUserIds: [String]?
    public let coordinatorDepartmentId: String?
    public let coordinatorLabel: String?
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String?
    public let coordinatorTaskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]?
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String?
    /// Client-supplied key for use by agentic order builder
    public let creationIdempotencyKey: String?
    public let draftStartedAtTimestamp: Date
    public let exceptionAtTimestamp: Date?
    public let inProgressAtTimestamp: Date?
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let offChrtReferenceId: String?
    public let offChrtShipperOrgDataId: String?
    public let orderClassificationByTaskGroupType: TaskGroupTypeEnum1?
    public let orderScheduleId: String?
    public let orderScheduleRunIdempotencyKey: String?
    public let orderTemplateId: String?
    public let schemaVersion: Int
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let shortId: String
    public let stagedAtTimestamp: Date?
    public let status: OrderStatusEnum1?
    public let taskGroupDetails: [OrderTaskGroupExecutorDetails1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        awbNumbers: [String]? = nil,
        cancelledAtTimestamp: Date? = nil,
        completedAtTimestamp: Date? = nil,
        coordinatorAssignedUserIds: [String]? = nil,
        coordinatorDepartmentId: String? = nil,
        coordinatorLabel: String? = nil,
        coordinatorOrgId: String? = nil,
        coordinatorTaskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]? = nil,
        createdByOrgId: String,
        createdByUserId: String? = nil,
        creationIdempotencyKey: String? = nil,
        draftStartedAtTimestamp: Date,
        exceptionAtTimestamp: Date? = nil,
        inProgressAtTimestamp: Date? = nil,
        offChrtReferenceId: String? = nil,
        offChrtShipperOrgDataId: String? = nil,
        orderClassificationByTaskGroupType: TaskGroupTypeEnum1? = nil,
        orderScheduleId: String? = nil,
        orderScheduleRunIdempotencyKey: String? = nil,
        orderTemplateId: String? = nil,
        schemaVersion: Int,
        shipperOrgId: String? = nil,
        shortId: String,
        stagedAtTimestamp: Date? = nil,
        status: OrderStatusEnum1? = nil,
        taskGroupDetails: [OrderTaskGroupExecutorDetails1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.awbNumbers = awbNumbers
        self.cancelledAtTimestamp = cancelledAtTimestamp
        self.completedAtTimestamp = completedAtTimestamp
        self.coordinatorAssignedUserIds = coordinatorAssignedUserIds
        self.coordinatorDepartmentId = coordinatorDepartmentId
        self.coordinatorLabel = coordinatorLabel
        self.coordinatorOrgId = coordinatorOrgId
        self.coordinatorTaskListsToApplyAtOrderStaging = coordinatorTaskListsToApplyAtOrderStaging
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.creationIdempotencyKey = creationIdempotencyKey
        self.draftStartedAtTimestamp = draftStartedAtTimestamp
        self.exceptionAtTimestamp = exceptionAtTimestamp
        self.inProgressAtTimestamp = inProgressAtTimestamp
        self.offChrtReferenceId = offChrtReferenceId
        self.offChrtShipperOrgDataId = offChrtShipperOrgDataId
        self.orderClassificationByTaskGroupType = orderClassificationByTaskGroupType
        self.orderScheduleId = orderScheduleId
        self.orderScheduleRunIdempotencyKey = orderScheduleRunIdempotencyKey
        self.orderTemplateId = orderTemplateId
        self.schemaVersion = schemaVersion
        self.shipperOrgId = shipperOrgId
        self.shortId = shortId
        self.stagedAtTimestamp = stagedAtTimestamp
        self.status = status
        self.taskGroupDetails = taskGroupDetails
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.awbNumbers = try container.decodeIfPresent([String].self, forKey: .awbNumbers)
        self.cancelledAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .cancelledAtTimestamp)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.coordinatorAssignedUserIds = try container.decodeIfPresent([String].self, forKey: .coordinatorAssignedUserIds)
        self.coordinatorDepartmentId = try container.decodeIfPresent(String.self, forKey: .coordinatorDepartmentId)
        self.coordinatorLabel = try container.decodeIfPresent(String.self, forKey: .coordinatorLabel)
        self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
        self.coordinatorTaskListsToApplyAtOrderStaging = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .coordinatorTaskListsToApplyAtOrderStaging)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decodeIfPresent(String.self, forKey: .createdByUserId)
        self.creationIdempotencyKey = try container.decodeIfPresent(String.self, forKey: .creationIdempotencyKey)
        self.draftStartedAtTimestamp = try container.decode(Date.self, forKey: .draftStartedAtTimestamp)
        self.exceptionAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .exceptionAtTimestamp)
        self.inProgressAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .inProgressAtTimestamp)
        self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
        self.offChrtShipperOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgDataId)
        self.orderClassificationByTaskGroupType = try container.decodeIfPresent(TaskGroupTypeEnum1.self, forKey: .orderClassificationByTaskGroupType)
        self.orderScheduleId = try container.decodeIfPresent(String.self, forKey: .orderScheduleId)
        self.orderScheduleRunIdempotencyKey = try container.decodeIfPresent(String.self, forKey: .orderScheduleRunIdempotencyKey)
        self.orderTemplateId = try container.decodeIfPresent(String.self, forKey: .orderTemplateId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.shortId = try container.decode(String.self, forKey: .shortId)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.status = try container.decodeIfPresent(OrderStatusEnum1.self, forKey: .status)
        self.taskGroupDetails = try container.decodeIfPresent([OrderTaskGroupExecutorDetails1].self, forKey: .taskGroupDetails)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.awbNumbers, forKey: .awbNumbers)
        try container.encodeIfPresent(self.cancelledAtTimestamp, forKey: .cancelledAtTimestamp)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encodeIfPresent(self.coordinatorAssignedUserIds, forKey: .coordinatorAssignedUserIds)
        try container.encodeIfPresent(self.coordinatorDepartmentId, forKey: .coordinatorDepartmentId)
        try container.encodeIfPresent(self.coordinatorLabel, forKey: .coordinatorLabel)
        try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encodeIfPresent(self.coordinatorTaskListsToApplyAtOrderStaging, forKey: .coordinatorTaskListsToApplyAtOrderStaging)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encodeIfPresent(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.creationIdempotencyKey, forKey: .creationIdempotencyKey)
        try container.encode(self.draftStartedAtTimestamp, forKey: .draftStartedAtTimestamp)
        try container.encodeIfPresent(self.exceptionAtTimestamp, forKey: .exceptionAtTimestamp)
        try container.encodeIfPresent(self.inProgressAtTimestamp, forKey: .inProgressAtTimestamp)
        try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
        try container.encodeIfPresent(self.offChrtShipperOrgDataId, forKey: .offChrtShipperOrgDataId)
        try container.encodeIfPresent(self.orderClassificationByTaskGroupType, forKey: .orderClassificationByTaskGroupType)
        try container.encodeIfPresent(self.orderScheduleId, forKey: .orderScheduleId)
        try container.encodeIfPresent(self.orderScheduleRunIdempotencyKey, forKey: .orderScheduleRunIdempotencyKey)
        try container.encodeIfPresent(self.orderTemplateId, forKey: .orderTemplateId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encode(self.shortId, forKey: .shortId)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.taskGroupDetails, forKey: .taskGroupDetails)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case awbNumbers = "awb_numbers"
        case cancelledAtTimestamp = "cancelled_at_timestamp"
        case completedAtTimestamp = "completed_at_timestamp"
        case coordinatorAssignedUserIds = "coordinator_assigned_user_ids"
        case coordinatorDepartmentId = "coordinator_department_id"
        case coordinatorLabel = "coordinator_label"
        case coordinatorOrgId = "coordinator_org_id"
        case coordinatorTaskListsToApplyAtOrderStaging = "coordinator_task_lists_to_apply_at_order_staging"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case creationIdempotencyKey = "creation_idempotency_key"
        case draftStartedAtTimestamp = "draft_started_at_timestamp"
        case exceptionAtTimestamp = "exception_at_timestamp"
        case inProgressAtTimestamp = "in_progress_at_timestamp"
        case offChrtReferenceId = "off_chrt_reference_id"
        case offChrtShipperOrgDataId = "off_chrt_shipper_org_data_id"
        case orderClassificationByTaskGroupType = "order_classification_by_task_group_type"
        case orderScheduleId = "order_schedule_id"
        case orderScheduleRunIdempotencyKey = "order_schedule_run_idempotency_key"
        case orderTemplateId = "order_template_id"
        case schemaVersion = "schema_version"
        case shipperOrgId = "shipper_org_id"
        case shortId = "short_id"
        case stagedAtTimestamp = "staged_at_timestamp"
        case status
        case taskGroupDetails = "task_group_details"
    }
}