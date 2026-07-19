import Foundation

/// Executor view: parties, provenance, and coordinator fields hidden;
/// only the executor's own task-group details.
public struct OrderLimitedForExecutor1: Codable, Hashable, Sendable {
    public let id: String
    public let awbNumbers: [String]?
    public let cancelledAtTimestamp: Date?
    public let completedAtTimestamp: Date?
    public let draftStartedAtTimestamp: Date
    public let exceptionAtTimestamp: Date?
    public let executorTaskGroupDetails: [OrderTaskGroupExecutorDetails1]?
    public let inProgressAtTimestamp: Date?
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let offChrtReferenceId: String?
    public let orderClassificationByTaskGroupType: TaskGroupTypeEnum1?
    public let schemaVersion: Int
    public let shortId: String
    public let stagedAtTimestamp: Date?
    public let status: OrderStatusEnum1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        awbNumbers: [String]? = nil,
        cancelledAtTimestamp: Date? = nil,
        completedAtTimestamp: Date? = nil,
        draftStartedAtTimestamp: Date,
        exceptionAtTimestamp: Date? = nil,
        executorTaskGroupDetails: [OrderTaskGroupExecutorDetails1]? = nil,
        inProgressAtTimestamp: Date? = nil,
        offChrtReferenceId: String? = nil,
        orderClassificationByTaskGroupType: TaskGroupTypeEnum1? = nil,
        schemaVersion: Int,
        shortId: String,
        stagedAtTimestamp: Date? = nil,
        status: OrderStatusEnum1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.awbNumbers = awbNumbers
        self.cancelledAtTimestamp = cancelledAtTimestamp
        self.completedAtTimestamp = completedAtTimestamp
        self.draftStartedAtTimestamp = draftStartedAtTimestamp
        self.exceptionAtTimestamp = exceptionAtTimestamp
        self.executorTaskGroupDetails = executorTaskGroupDetails
        self.inProgressAtTimestamp = inProgressAtTimestamp
        self.offChrtReferenceId = offChrtReferenceId
        self.orderClassificationByTaskGroupType = orderClassificationByTaskGroupType
        self.schemaVersion = schemaVersion
        self.shortId = shortId
        self.stagedAtTimestamp = stagedAtTimestamp
        self.status = status
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.awbNumbers = try container.decodeIfPresent([String].self, forKey: .awbNumbers)
        self.cancelledAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .cancelledAtTimestamp)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.draftStartedAtTimestamp = try container.decode(Date.self, forKey: .draftStartedAtTimestamp)
        self.exceptionAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .exceptionAtTimestamp)
        self.executorTaskGroupDetails = try container.decodeIfPresent([OrderTaskGroupExecutorDetails1].self, forKey: .executorTaskGroupDetails)
        self.inProgressAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .inProgressAtTimestamp)
        self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
        self.orderClassificationByTaskGroupType = try container.decodeIfPresent(TaskGroupTypeEnum1.self, forKey: .orderClassificationByTaskGroupType)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shortId = try container.decode(String.self, forKey: .shortId)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.status = try container.decodeIfPresent(OrderStatusEnum1.self, forKey: .status)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.awbNumbers, forKey: .awbNumbers)
        try container.encodeIfPresent(self.cancelledAtTimestamp, forKey: .cancelledAtTimestamp)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encode(self.draftStartedAtTimestamp, forKey: .draftStartedAtTimestamp)
        try container.encodeIfPresent(self.exceptionAtTimestamp, forKey: .exceptionAtTimestamp)
        try container.encodeIfPresent(self.executorTaskGroupDetails, forKey: .executorTaskGroupDetails)
        try container.encodeIfPresent(self.inProgressAtTimestamp, forKey: .inProgressAtTimestamp)
        try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
        try container.encodeIfPresent(self.orderClassificationByTaskGroupType, forKey: .orderClassificationByTaskGroupType)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.shortId, forKey: .shortId)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encodeIfPresent(self.status, forKey: .status)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case awbNumbers = "awb_numbers"
        case cancelledAtTimestamp = "cancelled_at_timestamp"
        case completedAtTimestamp = "completed_at_timestamp"
        case draftStartedAtTimestamp = "draft_started_at_timestamp"
        case exceptionAtTimestamp = "exception_at_timestamp"
        case executorTaskGroupDetails = "executor_task_group_details"
        case inProgressAtTimestamp = "in_progress_at_timestamp"
        case offChrtReferenceId = "off_chrt_reference_id"
        case orderClassificationByTaskGroupType = "order_classification_by_task_group_type"
        case schemaVersion = "schema_version"
        case shortId = "short_id"
        case stagedAtTimestamp = "staged_at_timestamp"
        case status
    }
}