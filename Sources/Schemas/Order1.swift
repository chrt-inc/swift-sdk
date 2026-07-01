import Foundation

public struct Order1: Codable, Hashable, Sendable {
    public let id: String
    public let cancelledAtTimestamp: Date?
    public let completedAtTimestamp: Date?
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String?
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String?
    /// Client-supplied key for use by agentic order builder
    public let creationIdempotencyKey: String?
    public let draftStartedAtTimestamp: Date
    public let exceptionAtTimestamp: Date?
    public let executorOrgIds: [String]?
    public let inProgressAtTimestamp: Date?
    public let offChrtExecutorOrgIds: [String]?
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let offChrtReferenceId: String?
    public let offChrtShipperOrgId: String?
    public let orderScheduleId: String?
    public let orderScheduleRunIdempotencyKey: String?
    public let orderTemplateId: String?
    public let schemaVersion: Int
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let shortId: String
    public let stagedAtTimestamp: Date?
    public let status: OrderStatusEnum1?
    public let taskGroupIds: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        cancelledAtTimestamp: Date? = nil,
        completedAtTimestamp: Date? = nil,
        coordinatorOrgId: String? = nil,
        createdByOrgId: String,
        createdByUserId: String? = nil,
        creationIdempotencyKey: String? = nil,
        draftStartedAtTimestamp: Date,
        exceptionAtTimestamp: Date? = nil,
        executorOrgIds: [String]? = nil,
        inProgressAtTimestamp: Date? = nil,
        offChrtExecutorOrgIds: [String]? = nil,
        offChrtReferenceId: String? = nil,
        offChrtShipperOrgId: String? = nil,
        orderScheduleId: String? = nil,
        orderScheduleRunIdempotencyKey: String? = nil,
        orderTemplateId: String? = nil,
        schemaVersion: Int,
        shipperOrgId: String? = nil,
        shortId: String,
        stagedAtTimestamp: Date? = nil,
        status: OrderStatusEnum1? = nil,
        taskGroupIds: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.cancelledAtTimestamp = cancelledAtTimestamp
        self.completedAtTimestamp = completedAtTimestamp
        self.coordinatorOrgId = coordinatorOrgId
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.creationIdempotencyKey = creationIdempotencyKey
        self.draftStartedAtTimestamp = draftStartedAtTimestamp
        self.exceptionAtTimestamp = exceptionAtTimestamp
        self.executorOrgIds = executorOrgIds
        self.inProgressAtTimestamp = inProgressAtTimestamp
        self.offChrtExecutorOrgIds = offChrtExecutorOrgIds
        self.offChrtReferenceId = offChrtReferenceId
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.orderScheduleId = orderScheduleId
        self.orderScheduleRunIdempotencyKey = orderScheduleRunIdempotencyKey
        self.orderTemplateId = orderTemplateId
        self.schemaVersion = schemaVersion
        self.shipperOrgId = shipperOrgId
        self.shortId = shortId
        self.stagedAtTimestamp = stagedAtTimestamp
        self.status = status
        self.taskGroupIds = taskGroupIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.cancelledAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .cancelledAtTimestamp)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decodeIfPresent(String.self, forKey: .createdByUserId)
        self.creationIdempotencyKey = try container.decodeIfPresent(String.self, forKey: .creationIdempotencyKey)
        self.draftStartedAtTimestamp = try container.decode(Date.self, forKey: .draftStartedAtTimestamp)
        self.exceptionAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .exceptionAtTimestamp)
        self.executorOrgIds = try container.decodeIfPresent([String].self, forKey: .executorOrgIds)
        self.inProgressAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .inProgressAtTimestamp)
        self.offChrtExecutorOrgIds = try container.decodeIfPresent([String].self, forKey: .offChrtExecutorOrgIds)
        self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.orderScheduleId = try container.decodeIfPresent(String.self, forKey: .orderScheduleId)
        self.orderScheduleRunIdempotencyKey = try container.decodeIfPresent(String.self, forKey: .orderScheduleRunIdempotencyKey)
        self.orderTemplateId = try container.decodeIfPresent(String.self, forKey: .orderTemplateId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.shortId = try container.decode(String.self, forKey: .shortId)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.status = try container.decodeIfPresent(OrderStatusEnum1.self, forKey: .status)
        self.taskGroupIds = try container.decodeIfPresent([String].self, forKey: .taskGroupIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.cancelledAtTimestamp, forKey: .cancelledAtTimestamp)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encodeIfPresent(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.creationIdempotencyKey, forKey: .creationIdempotencyKey)
        try container.encode(self.draftStartedAtTimestamp, forKey: .draftStartedAtTimestamp)
        try container.encodeIfPresent(self.exceptionAtTimestamp, forKey: .exceptionAtTimestamp)
        try container.encodeIfPresent(self.executorOrgIds, forKey: .executorOrgIds)
        try container.encodeIfPresent(self.inProgressAtTimestamp, forKey: .inProgressAtTimestamp)
        try container.encodeIfPresent(self.offChrtExecutorOrgIds, forKey: .offChrtExecutorOrgIds)
        try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encodeIfPresent(self.orderScheduleId, forKey: .orderScheduleId)
        try container.encodeIfPresent(self.orderScheduleRunIdempotencyKey, forKey: .orderScheduleRunIdempotencyKey)
        try container.encodeIfPresent(self.orderTemplateId, forKey: .orderTemplateId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encode(self.shortId, forKey: .shortId)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.taskGroupIds, forKey: .taskGroupIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case cancelledAtTimestamp = "cancelled_at_timestamp"
        case completedAtTimestamp = "completed_at_timestamp"
        case coordinatorOrgId = "coordinator_org_id"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case creationIdempotencyKey = "creation_idempotency_key"
        case draftStartedAtTimestamp = "draft_started_at_timestamp"
        case exceptionAtTimestamp = "exception_at_timestamp"
        case executorOrgIds = "executor_org_ids"
        case inProgressAtTimestamp = "in_progress_at_timestamp"
        case offChrtExecutorOrgIds = "off_chrt_executor_org_ids"
        case offChrtReferenceId = "off_chrt_reference_id"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case orderScheduleId = "order_schedule_id"
        case orderScheduleRunIdempotencyKey = "order_schedule_run_idempotency_key"
        case orderTemplateId = "order_template_id"
        case schemaVersion = "schema_version"
        case shipperOrgId = "shipper_org_id"
        case shortId = "short_id"
        case stagedAtTimestamp = "staged_at_timestamp"
        case status
        case taskGroupIds = "task_group_ids"
    }
}