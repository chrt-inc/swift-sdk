import Foundation

public struct Task1: Codable, Hashable, Sendable {
    public let id: String
    public let action: Action?
    public let cargoIds: [String]?
    public let completedAtTimestamp: Date?
    /// Must be a string starting with `org_`
    public let completedByOrgId: String?
    /// Must be a string starting with `user_`
    public let completedByUserId: String?
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let directoryEntryIds: [String]?
    public let draftStartedAtTimestamp: Date
    public let exceptionAtTimestamp: Date?
    public let location: LocationFeature?
    public let orderCancelled: Bool?
    public let orderId: String
    public let orderPlacerComments: String?
    public let orderShortId: String
    public let schemaVersion: Int
    public let skippedAtTimestamp: Date?
    public let stagedAtTimestamp: Date?
    public let status: TaskStatusEnum1?
    public let taskArtifactIds: [String]?
    public let taskGroupId: String
    public let timeWindows: [TimeWindow1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        action: Action? = nil,
        cargoIds: [String]? = nil,
        completedAtTimestamp: Date? = nil,
        completedByOrgId: String? = nil,
        completedByUserId: String? = nil,
        createdByOrgId: String,
        createdByUserId: String,
        directoryEntryIds: [String]? = nil,
        draftStartedAtTimestamp: Date,
        exceptionAtTimestamp: Date? = nil,
        location: LocationFeature? = nil,
        orderCancelled: Bool? = nil,
        orderId: String,
        orderPlacerComments: String? = nil,
        orderShortId: String,
        schemaVersion: Int,
        skippedAtTimestamp: Date? = nil,
        stagedAtTimestamp: Date? = nil,
        status: TaskStatusEnum1? = nil,
        taskArtifactIds: [String]? = nil,
        taskGroupId: String,
        timeWindows: [TimeWindow1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.action = action
        self.cargoIds = cargoIds
        self.completedAtTimestamp = completedAtTimestamp
        self.completedByOrgId = completedByOrgId
        self.completedByUserId = completedByUserId
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.directoryEntryIds = directoryEntryIds
        self.draftStartedAtTimestamp = draftStartedAtTimestamp
        self.exceptionAtTimestamp = exceptionAtTimestamp
        self.location = location
        self.orderCancelled = orderCancelled
        self.orderId = orderId
        self.orderPlacerComments = orderPlacerComments
        self.orderShortId = orderShortId
        self.schemaVersion = schemaVersion
        self.skippedAtTimestamp = skippedAtTimestamp
        self.stagedAtTimestamp = stagedAtTimestamp
        self.status = status
        self.taskArtifactIds = taskArtifactIds
        self.taskGroupId = taskGroupId
        self.timeWindows = timeWindows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.action = try container.decodeIfPresent(Action.self, forKey: .action)
        self.cargoIds = try container.decodeIfPresent([String].self, forKey: .cargoIds)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.completedByOrgId = try container.decodeIfPresent(String.self, forKey: .completedByOrgId)
        self.completedByUserId = try container.decodeIfPresent(String.self, forKey: .completedByUserId)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.directoryEntryIds = try container.decodeIfPresent([String].self, forKey: .directoryEntryIds)
        self.draftStartedAtTimestamp = try container.decode(Date.self, forKey: .draftStartedAtTimestamp)
        self.exceptionAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .exceptionAtTimestamp)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.orderCancelled = try container.decodeIfPresent(Bool.self, forKey: .orderCancelled)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderPlacerComments = try container.decodeIfPresent(String.self, forKey: .orderPlacerComments)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.skippedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .skippedAtTimestamp)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.status = try container.decodeIfPresent(TaskStatusEnum1.self, forKey: .status)
        self.taskArtifactIds = try container.decodeIfPresent([String].self, forKey: .taskArtifactIds)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.timeWindows = try container.decodeIfPresent([TimeWindow1].self, forKey: .timeWindows)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.action, forKey: .action)
        try container.encodeIfPresent(self.cargoIds, forKey: .cargoIds)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encodeIfPresent(self.completedByOrgId, forKey: .completedByOrgId)
        try container.encodeIfPresent(self.completedByUserId, forKey: .completedByUserId)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.directoryEntryIds, forKey: .directoryEntryIds)
        try container.encode(self.draftStartedAtTimestamp, forKey: .draftStartedAtTimestamp)
        try container.encodeIfPresent(self.exceptionAtTimestamp, forKey: .exceptionAtTimestamp)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.orderCancelled, forKey: .orderCancelled)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.orderPlacerComments, forKey: .orderPlacerComments)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.skippedAtTimestamp, forKey: .skippedAtTimestamp)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.taskArtifactIds, forKey: .taskArtifactIds)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encodeIfPresent(self.timeWindows, forKey: .timeWindows)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case action
        case cargoIds = "cargo_ids"
        case completedAtTimestamp = "completed_at_timestamp"
        case completedByOrgId = "completed_by_org_id"
        case completedByUserId = "completed_by_user_id"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case directoryEntryIds = "directory_entry_ids"
        case draftStartedAtTimestamp = "draft_started_at_timestamp"
        case exceptionAtTimestamp = "exception_at_timestamp"
        case location
        case orderCancelled = "order_cancelled"
        case orderId = "order_id"
        case orderPlacerComments = "order_placer_comments"
        case orderShortId = "order_short_id"
        case schemaVersion = "schema_version"
        case skippedAtTimestamp = "skipped_at_timestamp"
        case stagedAtTimestamp = "staged_at_timestamp"
        case status
        case taskArtifactIds = "task_artifact_ids"
        case taskGroupId = "task_group_id"
        case timeWindows = "time_windows"
    }
}