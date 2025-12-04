import Foundation

public struct TaskArtifact1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let type: TaskArtifactTypeEnum1
    public let id: String
    public let orderId: String
    public let orderShortId: String
    public let taskGroupId: String
    public let taskId: String
    public let taskArtifactS3ObjectMetadataIds: [String]?
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    /// Must be a string starting with `org_`
    public let requestedByOrgId: String?
    /// Must be a string starting with `user_`
    public let requestedByUserId: String?
    /// Must be a string starting with `org_`
    public let completedByOrgId: String?
    /// Must be a string starting with `user_`
    public let completedByUserId: String?
    public let status: TaskArtifactStatusEnum1?
    public let draftStartedAtTimestamp: Date
    public let stagedAtTimestamp: Date?
    public let completedAtTimestamp: Date?
    public let skippedAtTimestamp: Date?
    public let exceptionAtTimestamp: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        type: TaskArtifactTypeEnum1,
        id: String,
        orderId: String,
        orderShortId: String,
        taskGroupId: String,
        taskId: String,
        taskArtifactS3ObjectMetadataIds: [String]? = nil,
        createdByOrgId: String,
        createdByUserId: String,
        requestedByOrgId: String? = nil,
        requestedByUserId: String? = nil,
        completedByOrgId: String? = nil,
        completedByUserId: String? = nil,
        status: TaskArtifactStatusEnum1? = nil,
        draftStartedAtTimestamp: Date,
        stagedAtTimestamp: Date? = nil,
        completedAtTimestamp: Date? = nil,
        skippedAtTimestamp: Date? = nil,
        exceptionAtTimestamp: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.type = type
        self.id = id
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.taskGroupId = taskGroupId
        self.taskId = taskId
        self.taskArtifactS3ObjectMetadataIds = taskArtifactS3ObjectMetadataIds
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.requestedByOrgId = requestedByOrgId
        self.requestedByUserId = requestedByUserId
        self.completedByOrgId = completedByOrgId
        self.completedByUserId = completedByUserId
        self.status = status
        self.draftStartedAtTimestamp = draftStartedAtTimestamp
        self.stagedAtTimestamp = stagedAtTimestamp
        self.completedAtTimestamp = completedAtTimestamp
        self.skippedAtTimestamp = skippedAtTimestamp
        self.exceptionAtTimestamp = exceptionAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.type = try container.decode(TaskArtifactTypeEnum1.self, forKey: .type)
        self.id = try container.decode(String.self, forKey: .id)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.taskId = try container.decode(String.self, forKey: .taskId)
        self.taskArtifactS3ObjectMetadataIds = try container.decodeIfPresent([String].self, forKey: .taskArtifactS3ObjectMetadataIds)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.requestedByOrgId = try container.decodeIfPresent(String.self, forKey: .requestedByOrgId)
        self.requestedByUserId = try container.decodeIfPresent(String.self, forKey: .requestedByUserId)
        self.completedByOrgId = try container.decodeIfPresent(String.self, forKey: .completedByOrgId)
        self.completedByUserId = try container.decodeIfPresent(String.self, forKey: .completedByUserId)
        self.status = try container.decodeIfPresent(TaskArtifactStatusEnum1.self, forKey: .status)
        self.draftStartedAtTimestamp = try container.decode(Date.self, forKey: .draftStartedAtTimestamp)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.skippedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .skippedAtTimestamp)
        self.exceptionAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .exceptionAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.taskId, forKey: .taskId)
        try container.encodeIfPresent(self.taskArtifactS3ObjectMetadataIds, forKey: .taskArtifactS3ObjectMetadataIds)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.requestedByOrgId, forKey: .requestedByOrgId)
        try container.encodeIfPresent(self.requestedByUserId, forKey: .requestedByUserId)
        try container.encodeIfPresent(self.completedByOrgId, forKey: .completedByOrgId)
        try container.encodeIfPresent(self.completedByUserId, forKey: .completedByUserId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encode(self.draftStartedAtTimestamp, forKey: .draftStartedAtTimestamp)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encodeIfPresent(self.skippedAtTimestamp, forKey: .skippedAtTimestamp)
        try container.encodeIfPresent(self.exceptionAtTimestamp, forKey: .exceptionAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case type
        case id = "_id"
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case taskGroupId = "task_group_id"
        case taskId = "task_id"
        case taskArtifactS3ObjectMetadataIds = "task_artifact_s3_object_metadata_ids"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case requestedByOrgId = "requested_by_org_id"
        case requestedByUserId = "requested_by_user_id"
        case completedByOrgId = "completed_by_org_id"
        case completedByUserId = "completed_by_user_id"
        case status
        case draftStartedAtTimestamp = "draft_started_at_timestamp"
        case stagedAtTimestamp = "staged_at_timestamp"
        case completedAtTimestamp = "completed_at_timestamp"
        case skippedAtTimestamp = "skipped_at_timestamp"
        case exceptionAtTimestamp = "exception_at_timestamp"
    }
}