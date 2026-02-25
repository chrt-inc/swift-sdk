import Foundation

public struct TaskArtifact1: Codable, Hashable, Sendable {
    public let id: String
    public let completedAtTimestamp: Date?
    /// Must be a string starting with `org_`
    public let completedByOrgId: String?
    /// Must be a string starting with `user_`
    public let completedByUserId: String?
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let draftStartedAtTimestamp: Date
    public let exceptionAtTimestamp: Date?
    public let orderId: String
    public let orderShortId: String
    /// Must be a string starting with `org_`
    public let requestedByOrgId: String?
    /// Must be a string starting with `user_`
    public let requestedByUserId: String?
    public let schemaVersion: Int
    public let skippedAtTimestamp: Date?
    public let stagedAtTimestamp: Date?
    public let status: TaskArtifactStatusEnum1?
    public let taskArtifactS3ObjectMetadataIds: [String]?
    public let taskGroupId: String
    public let taskId: String
    public let type: TaskArtifactTypeEnum1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        completedAtTimestamp: Date? = nil,
        completedByOrgId: String? = nil,
        completedByUserId: String? = nil,
        createdByOrgId: String,
        createdByUserId: String,
        draftStartedAtTimestamp: Date,
        exceptionAtTimestamp: Date? = nil,
        orderId: String,
        orderShortId: String,
        requestedByOrgId: String? = nil,
        requestedByUserId: String? = nil,
        schemaVersion: Int,
        skippedAtTimestamp: Date? = nil,
        stagedAtTimestamp: Date? = nil,
        status: TaskArtifactStatusEnum1? = nil,
        taskArtifactS3ObjectMetadataIds: [String]? = nil,
        taskGroupId: String,
        taskId: String,
        type: TaskArtifactTypeEnum1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.completedAtTimestamp = completedAtTimestamp
        self.completedByOrgId = completedByOrgId
        self.completedByUserId = completedByUserId
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.draftStartedAtTimestamp = draftStartedAtTimestamp
        self.exceptionAtTimestamp = exceptionAtTimestamp
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.requestedByOrgId = requestedByOrgId
        self.requestedByUserId = requestedByUserId
        self.schemaVersion = schemaVersion
        self.skippedAtTimestamp = skippedAtTimestamp
        self.stagedAtTimestamp = stagedAtTimestamp
        self.status = status
        self.taskArtifactS3ObjectMetadataIds = taskArtifactS3ObjectMetadataIds
        self.taskGroupId = taskGroupId
        self.taskId = taskId
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.completedByOrgId = try container.decodeIfPresent(String.self, forKey: .completedByOrgId)
        self.completedByUserId = try container.decodeIfPresent(String.self, forKey: .completedByUserId)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.draftStartedAtTimestamp = try container.decode(Date.self, forKey: .draftStartedAtTimestamp)
        self.exceptionAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .exceptionAtTimestamp)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.requestedByOrgId = try container.decodeIfPresent(String.self, forKey: .requestedByOrgId)
        self.requestedByUserId = try container.decodeIfPresent(String.self, forKey: .requestedByUserId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.skippedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .skippedAtTimestamp)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.status = try container.decodeIfPresent(TaskArtifactStatusEnum1.self, forKey: .status)
        self.taskArtifactS3ObjectMetadataIds = try container.decodeIfPresent([String].self, forKey: .taskArtifactS3ObjectMetadataIds)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.taskId = try container.decode(String.self, forKey: .taskId)
        self.type = try container.decode(TaskArtifactTypeEnum1.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encodeIfPresent(self.completedByOrgId, forKey: .completedByOrgId)
        try container.encodeIfPresent(self.completedByUserId, forKey: .completedByUserId)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.draftStartedAtTimestamp, forKey: .draftStartedAtTimestamp)
        try container.encodeIfPresent(self.exceptionAtTimestamp, forKey: .exceptionAtTimestamp)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encodeIfPresent(self.requestedByOrgId, forKey: .requestedByOrgId)
        try container.encodeIfPresent(self.requestedByUserId, forKey: .requestedByUserId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.skippedAtTimestamp, forKey: .skippedAtTimestamp)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.taskArtifactS3ObjectMetadataIds, forKey: .taskArtifactS3ObjectMetadataIds)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.taskId, forKey: .taskId)
        try container.encode(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case completedAtTimestamp = "completed_at_timestamp"
        case completedByOrgId = "completed_by_org_id"
        case completedByUserId = "completed_by_user_id"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case draftStartedAtTimestamp = "draft_started_at_timestamp"
        case exceptionAtTimestamp = "exception_at_timestamp"
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case requestedByOrgId = "requested_by_org_id"
        case requestedByUserId = "requested_by_user_id"
        case schemaVersion = "schema_version"
        case skippedAtTimestamp = "skipped_at_timestamp"
        case stagedAtTimestamp = "staged_at_timestamp"
        case status
        case taskArtifactS3ObjectMetadataIds = "task_artifact_s3_object_metadata_ids"
        case taskGroupId = "task_group_id"
        case taskId = "task_id"
        case type
    }
}