import Foundation

public struct Task1: Codable, Hashable, Sendable {
    public let id: String
    public let action: Action?
    public let attemptedAtTimestamp: Date?
    public let cancelledAtTimestamp: Date?
    public let cargoIds: [String]?
    public let completedAtTimestamp: Date?
    /// Must be a string starting with `org_`
    public let completedByOrgId: String?
    /// Must be a string starting with `user_`
    public let completedByUserId: String?
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String?
    public let datetimeWindows: [DateTimeWindow1]?
    public let directoryEntryIds: [String]?
    public let draftStartedAtTimestamp: Date
    public let exceptionAtTimestamp: Date?
    public let executorOrgNotes: [TaskExecutorOrgNote1]?
    public let geofenceDistanceMiles: Double?
    public let location: LocationFeature?
    public let orderId: String
    public let orderPlacerComments: String?
    public let orderShortId: String
    public let schemaVersion: Int
    public let skippedAtTimestamp: Date?
    public let stagedAtTimestamp: Date?
    public let status: TaskStatusEnum1?
    public let taskArtifactIds: [String]?
    public let taskGroupId: String
    public let waitTimeEndTimestamp: Date?
    public let waitTimeStartTimestamp: Date?
    public let waitTimeStartedInGeofence: Bool?
    public let waitTimeValidated: Bool?
    /// Must be a string starting with `user_`
    public let waitTimeValidatedByUserId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        action: Action? = nil,
        attemptedAtTimestamp: Date? = nil,
        cancelledAtTimestamp: Date? = nil,
        cargoIds: [String]? = nil,
        completedAtTimestamp: Date? = nil,
        completedByOrgId: String? = nil,
        completedByUserId: String? = nil,
        createdByOrgId: String,
        createdByUserId: String? = nil,
        datetimeWindows: [DateTimeWindow1]? = nil,
        directoryEntryIds: [String]? = nil,
        draftStartedAtTimestamp: Date,
        exceptionAtTimestamp: Date? = nil,
        executorOrgNotes: [TaskExecutorOrgNote1]? = nil,
        geofenceDistanceMiles: Double? = nil,
        location: LocationFeature? = nil,
        orderId: String,
        orderPlacerComments: String? = nil,
        orderShortId: String,
        schemaVersion: Int,
        skippedAtTimestamp: Date? = nil,
        stagedAtTimestamp: Date? = nil,
        status: TaskStatusEnum1? = nil,
        taskArtifactIds: [String]? = nil,
        taskGroupId: String,
        waitTimeEndTimestamp: Date? = nil,
        waitTimeStartTimestamp: Date? = nil,
        waitTimeStartedInGeofence: Bool? = nil,
        waitTimeValidated: Bool? = nil,
        waitTimeValidatedByUserId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.action = action
        self.attemptedAtTimestamp = attemptedAtTimestamp
        self.cancelledAtTimestamp = cancelledAtTimestamp
        self.cargoIds = cargoIds
        self.completedAtTimestamp = completedAtTimestamp
        self.completedByOrgId = completedByOrgId
        self.completedByUserId = completedByUserId
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.datetimeWindows = datetimeWindows
        self.directoryEntryIds = directoryEntryIds
        self.draftStartedAtTimestamp = draftStartedAtTimestamp
        self.exceptionAtTimestamp = exceptionAtTimestamp
        self.executorOrgNotes = executorOrgNotes
        self.geofenceDistanceMiles = geofenceDistanceMiles
        self.location = location
        self.orderId = orderId
        self.orderPlacerComments = orderPlacerComments
        self.orderShortId = orderShortId
        self.schemaVersion = schemaVersion
        self.skippedAtTimestamp = skippedAtTimestamp
        self.stagedAtTimestamp = stagedAtTimestamp
        self.status = status
        self.taskArtifactIds = taskArtifactIds
        self.taskGroupId = taskGroupId
        self.waitTimeEndTimestamp = waitTimeEndTimestamp
        self.waitTimeStartTimestamp = waitTimeStartTimestamp
        self.waitTimeStartedInGeofence = waitTimeStartedInGeofence
        self.waitTimeValidated = waitTimeValidated
        self.waitTimeValidatedByUserId = waitTimeValidatedByUserId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.action = try container.decodeIfPresent(Action.self, forKey: .action)
        self.attemptedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .attemptedAtTimestamp)
        self.cancelledAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .cancelledAtTimestamp)
        self.cargoIds = try container.decodeIfPresent([String].self, forKey: .cargoIds)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.completedByOrgId = try container.decodeIfPresent(String.self, forKey: .completedByOrgId)
        self.completedByUserId = try container.decodeIfPresent(String.self, forKey: .completedByUserId)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decodeIfPresent(String.self, forKey: .createdByUserId)
        self.datetimeWindows = try container.decodeIfPresent([DateTimeWindow1].self, forKey: .datetimeWindows)
        self.directoryEntryIds = try container.decodeIfPresent([String].self, forKey: .directoryEntryIds)
        self.draftStartedAtTimestamp = try container.decode(Date.self, forKey: .draftStartedAtTimestamp)
        self.exceptionAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .exceptionAtTimestamp)
        self.executorOrgNotes = try container.decodeIfPresent([TaskExecutorOrgNote1].self, forKey: .executorOrgNotes)
        self.geofenceDistanceMiles = try container.decodeIfPresent(Double.self, forKey: .geofenceDistanceMiles)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderPlacerComments = try container.decodeIfPresent(String.self, forKey: .orderPlacerComments)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.skippedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .skippedAtTimestamp)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.status = try container.decodeIfPresent(TaskStatusEnum1.self, forKey: .status)
        self.taskArtifactIds = try container.decodeIfPresent([String].self, forKey: .taskArtifactIds)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.waitTimeEndTimestamp = try container.decodeIfPresent(Date.self, forKey: .waitTimeEndTimestamp)
        self.waitTimeStartTimestamp = try container.decodeIfPresent(Date.self, forKey: .waitTimeStartTimestamp)
        self.waitTimeStartedInGeofence = try container.decodeIfPresent(Bool.self, forKey: .waitTimeStartedInGeofence)
        self.waitTimeValidated = try container.decodeIfPresent(Bool.self, forKey: .waitTimeValidated)
        self.waitTimeValidatedByUserId = try container.decodeIfPresent(String.self, forKey: .waitTimeValidatedByUserId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.action, forKey: .action)
        try container.encodeIfPresent(self.attemptedAtTimestamp, forKey: .attemptedAtTimestamp)
        try container.encodeIfPresent(self.cancelledAtTimestamp, forKey: .cancelledAtTimestamp)
        try container.encodeIfPresent(self.cargoIds, forKey: .cargoIds)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encodeIfPresent(self.completedByOrgId, forKey: .completedByOrgId)
        try container.encodeIfPresent(self.completedByUserId, forKey: .completedByUserId)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encodeIfPresent(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.datetimeWindows, forKey: .datetimeWindows)
        try container.encodeIfPresent(self.directoryEntryIds, forKey: .directoryEntryIds)
        try container.encode(self.draftStartedAtTimestamp, forKey: .draftStartedAtTimestamp)
        try container.encodeIfPresent(self.exceptionAtTimestamp, forKey: .exceptionAtTimestamp)
        try container.encodeIfPresent(self.executorOrgNotes, forKey: .executorOrgNotes)
        try container.encodeIfPresent(self.geofenceDistanceMiles, forKey: .geofenceDistanceMiles)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.orderPlacerComments, forKey: .orderPlacerComments)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.skippedAtTimestamp, forKey: .skippedAtTimestamp)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.taskArtifactIds, forKey: .taskArtifactIds)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encodeIfPresent(self.waitTimeEndTimestamp, forKey: .waitTimeEndTimestamp)
        try container.encodeIfPresent(self.waitTimeStartTimestamp, forKey: .waitTimeStartTimestamp)
        try container.encodeIfPresent(self.waitTimeStartedInGeofence, forKey: .waitTimeStartedInGeofence)
        try container.encodeIfPresent(self.waitTimeValidated, forKey: .waitTimeValidated)
        try container.encodeIfPresent(self.waitTimeValidatedByUserId, forKey: .waitTimeValidatedByUserId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case action
        case attemptedAtTimestamp = "attempted_at_timestamp"
        case cancelledAtTimestamp = "cancelled_at_timestamp"
        case cargoIds = "cargo_ids"
        case completedAtTimestamp = "completed_at_timestamp"
        case completedByOrgId = "completed_by_org_id"
        case completedByUserId = "completed_by_user_id"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case datetimeWindows = "datetime_windows"
        case directoryEntryIds = "directory_entry_ids"
        case draftStartedAtTimestamp = "draft_started_at_timestamp"
        case exceptionAtTimestamp = "exception_at_timestamp"
        case executorOrgNotes = "executor_org_notes"
        case geofenceDistanceMiles = "geofence_distance_miles"
        case location
        case orderId = "order_id"
        case orderPlacerComments = "order_placer_comments"
        case orderShortId = "order_short_id"
        case schemaVersion = "schema_version"
        case skippedAtTimestamp = "skipped_at_timestamp"
        case stagedAtTimestamp = "staged_at_timestamp"
        case status
        case taskArtifactIds = "task_artifact_ids"
        case taskGroupId = "task_group_id"
        case waitTimeEndTimestamp = "wait_time_end_timestamp"
        case waitTimeStartTimestamp = "wait_time_start_timestamp"
        case waitTimeStartedInGeofence = "wait_time_started_in_geofence"
        case waitTimeValidated = "wait_time_validated"
        case waitTimeValidatedByUserId = "wait_time_validated_by_user_id"
    }
}