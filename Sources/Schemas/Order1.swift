import Foundation

public struct Order1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let id: String
    public let shortId: String
    public let taskGroupIds: [String]?
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let offChrtReferenceId: String?
    public let orderScheduleId: String?
    public let orderScheduleRunIdempotencyKey: String?
    public let orderTemplateId: String?
    /// Client-supplied key for use by agentic order builder
    public let creationIdempotencyKey: String?
    /// Must be a string starting with `user_`
    public let createdByUserId: String?
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let offChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String?
    public let executorOrgIds: [String]?
    public let offChrtExecutorOrgIds: [String]?
    public let status: OrderStatusEnum1?
    public let draftStartedAtTimestamp: Date
    public let stagedAtTimestamp: Date?
    public let inProgressAtTimestamp: Date?
    public let completedAtTimestamp: Date?
    public let cancelledAtTimestamp: Date?
    public let exceptionAtTimestamp: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        id: String,
        shortId: String,
        taskGroupIds: [String]? = nil,
        offChrtReferenceId: String? = nil,
        orderScheduleId: String? = nil,
        orderScheduleRunIdempotencyKey: String? = nil,
        orderTemplateId: String? = nil,
        creationIdempotencyKey: String? = nil,
        createdByUserId: String? = nil,
        createdByOrgId: String,
        shipperOrgId: String? = nil,
        offChrtShipperOrgId: String? = nil,
        coordinatorOrgId: String? = nil,
        executorOrgIds: [String]? = nil,
        offChrtExecutorOrgIds: [String]? = nil,
        status: OrderStatusEnum1? = nil,
        draftStartedAtTimestamp: Date,
        stagedAtTimestamp: Date? = nil,
        inProgressAtTimestamp: Date? = nil,
        completedAtTimestamp: Date? = nil,
        cancelledAtTimestamp: Date? = nil,
        exceptionAtTimestamp: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.id = id
        self.shortId = shortId
        self.taskGroupIds = taskGroupIds
        self.offChrtReferenceId = offChrtReferenceId
        self.orderScheduleId = orderScheduleId
        self.orderScheduleRunIdempotencyKey = orderScheduleRunIdempotencyKey
        self.orderTemplateId = orderTemplateId
        self.creationIdempotencyKey = creationIdempotencyKey
        self.createdByUserId = createdByUserId
        self.createdByOrgId = createdByOrgId
        self.shipperOrgId = shipperOrgId
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.coordinatorOrgId = coordinatorOrgId
        self.executorOrgIds = executorOrgIds
        self.offChrtExecutorOrgIds = offChrtExecutorOrgIds
        self.status = status
        self.draftStartedAtTimestamp = draftStartedAtTimestamp
        self.stagedAtTimestamp = stagedAtTimestamp
        self.inProgressAtTimestamp = inProgressAtTimestamp
        self.completedAtTimestamp = completedAtTimestamp
        self.cancelledAtTimestamp = cancelledAtTimestamp
        self.exceptionAtTimestamp = exceptionAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.id = try container.decode(String.self, forKey: .id)
        self.shortId = try container.decode(String.self, forKey: .shortId)
        self.taskGroupIds = try container.decodeIfPresent([String].self, forKey: .taskGroupIds)
        self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
        self.orderScheduleId = try container.decodeIfPresent(String.self, forKey: .orderScheduleId)
        self.orderScheduleRunIdempotencyKey = try container.decodeIfPresent(String.self, forKey: .orderScheduleRunIdempotencyKey)
        self.orderTemplateId = try container.decodeIfPresent(String.self, forKey: .orderTemplateId)
        self.creationIdempotencyKey = try container.decodeIfPresent(String.self, forKey: .creationIdempotencyKey)
        self.createdByUserId = try container.decodeIfPresent(String.self, forKey: .createdByUserId)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
        self.executorOrgIds = try container.decodeIfPresent([String].self, forKey: .executorOrgIds)
        self.offChrtExecutorOrgIds = try container.decodeIfPresent([String].self, forKey: .offChrtExecutorOrgIds)
        self.status = try container.decodeIfPresent(OrderStatusEnum1.self, forKey: .status)
        self.draftStartedAtTimestamp = try container.decode(Date.self, forKey: .draftStartedAtTimestamp)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.inProgressAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .inProgressAtTimestamp)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.cancelledAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .cancelledAtTimestamp)
        self.exceptionAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .exceptionAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.shortId, forKey: .shortId)
        try container.encodeIfPresent(self.taskGroupIds, forKey: .taskGroupIds)
        try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
        try container.encodeIfPresent(self.orderScheduleId, forKey: .orderScheduleId)
        try container.encodeIfPresent(self.orderScheduleRunIdempotencyKey, forKey: .orderScheduleRunIdempotencyKey)
        try container.encodeIfPresent(self.orderTemplateId, forKey: .orderTemplateId)
        try container.encodeIfPresent(self.creationIdempotencyKey, forKey: .creationIdempotencyKey)
        try container.encodeIfPresent(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encodeIfPresent(self.executorOrgIds, forKey: .executorOrgIds)
        try container.encodeIfPresent(self.offChrtExecutorOrgIds, forKey: .offChrtExecutorOrgIds)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encode(self.draftStartedAtTimestamp, forKey: .draftStartedAtTimestamp)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encodeIfPresent(self.inProgressAtTimestamp, forKey: .inProgressAtTimestamp)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encodeIfPresent(self.cancelledAtTimestamp, forKey: .cancelledAtTimestamp)
        try container.encodeIfPresent(self.exceptionAtTimestamp, forKey: .exceptionAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case id = "_id"
        case shortId = "short_id"
        case taskGroupIds = "task_group_ids"
        case offChrtReferenceId = "off_chrt_reference_id"
        case orderScheduleId = "order_schedule_id"
        case orderScheduleRunIdempotencyKey = "order_schedule_run_idempotency_key"
        case orderTemplateId = "order_template_id"
        case creationIdempotencyKey = "creation_idempotency_key"
        case createdByUserId = "created_by_user_id"
        case createdByOrgId = "created_by_org_id"
        case shipperOrgId = "shipper_org_id"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case coordinatorOrgId = "coordinator_org_id"
        case executorOrgIds = "executor_org_ids"
        case offChrtExecutorOrgIds = "off_chrt_executor_org_ids"
        case status
        case draftStartedAtTimestamp = "draft_started_at_timestamp"
        case stagedAtTimestamp = "staged_at_timestamp"
        case inProgressAtTimestamp = "in_progress_at_timestamp"
        case completedAtTimestamp = "completed_at_timestamp"
        case cancelledAtTimestamp = "cancelled_at_timestamp"
        case exceptionAtTimestamp = "exception_at_timestamp"
    }
}