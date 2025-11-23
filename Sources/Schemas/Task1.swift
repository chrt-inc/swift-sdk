import Foundation

public struct Task1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let location: LocationFeature?
    public let action: Action?
    public let timeWindows: [TimeWindow1]?
    public let orderPlacerComments: String?
    public let shipperContactIds: [String]?
    public let flightNumber: String?
    public let id: String
    public let orderId: String
    public let orderShortId: String
    public let taskGroupId: String
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    /// Must be a string starting with `org_`
    public let completedByOrgId: String?
    /// Must be a string starting with `user_`
    public let completedByUserId: String?
    public let cargoIds: [String]?
    public let taskArtifactIds: [String]?
    public let status: TaskStatusEnum1?
    public let draftStartedAtTimestamp: Date
    public let stagedAtTimestamp: Date?
    public let completedAtTimestamp: Date?
    public let exceptionAtTimestamp: Date?
    public let orderCancelled: Bool?
    public let taskNotificationEmailIds: [String]?
    public let taskNotificationSmsIds: [String]?
    public let taskNotificationPushIds: [String]?
    public let taskNotificationVoiceIds: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        location: LocationFeature? = nil,
        action: Action? = nil,
        timeWindows: [TimeWindow1]? = nil,
        orderPlacerComments: String? = nil,
        shipperContactIds: [String]? = nil,
        flightNumber: String? = nil,
        id: String,
        orderId: String,
        orderShortId: String,
        taskGroupId: String,
        createdByOrgId: String,
        createdByUserId: String,
        completedByOrgId: String? = nil,
        completedByUserId: String? = nil,
        cargoIds: [String]? = nil,
        taskArtifactIds: [String]? = nil,
        status: TaskStatusEnum1? = nil,
        draftStartedAtTimestamp: Date,
        stagedAtTimestamp: Date? = nil,
        completedAtTimestamp: Date? = nil,
        exceptionAtTimestamp: Date? = nil,
        orderCancelled: Bool? = nil,
        taskNotificationEmailIds: [String]? = nil,
        taskNotificationSmsIds: [String]? = nil,
        taskNotificationPushIds: [String]? = nil,
        taskNotificationVoiceIds: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.location = location
        self.action = action
        self.timeWindows = timeWindows
        self.orderPlacerComments = orderPlacerComments
        self.shipperContactIds = shipperContactIds
        self.flightNumber = flightNumber
        self.id = id
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.taskGroupId = taskGroupId
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.completedByOrgId = completedByOrgId
        self.completedByUserId = completedByUserId
        self.cargoIds = cargoIds
        self.taskArtifactIds = taskArtifactIds
        self.status = status
        self.draftStartedAtTimestamp = draftStartedAtTimestamp
        self.stagedAtTimestamp = stagedAtTimestamp
        self.completedAtTimestamp = completedAtTimestamp
        self.exceptionAtTimestamp = exceptionAtTimestamp
        self.orderCancelled = orderCancelled
        self.taskNotificationEmailIds = taskNotificationEmailIds
        self.taskNotificationSmsIds = taskNotificationSmsIds
        self.taskNotificationPushIds = taskNotificationPushIds
        self.taskNotificationVoiceIds = taskNotificationVoiceIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.action = try container.decodeIfPresent(Action.self, forKey: .action)
        self.timeWindows = try container.decodeIfPresent([TimeWindow1].self, forKey: .timeWindows)
        self.orderPlacerComments = try container.decodeIfPresent(String.self, forKey: .orderPlacerComments)
        self.shipperContactIds = try container.decodeIfPresent([String].self, forKey: .shipperContactIds)
        self.flightNumber = try container.decodeIfPresent(String.self, forKey: .flightNumber)
        self.id = try container.decode(String.self, forKey: .id)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.completedByOrgId = try container.decodeIfPresent(String.self, forKey: .completedByOrgId)
        self.completedByUserId = try container.decodeIfPresent(String.self, forKey: .completedByUserId)
        self.cargoIds = try container.decodeIfPresent([String].self, forKey: .cargoIds)
        self.taskArtifactIds = try container.decodeIfPresent([String].self, forKey: .taskArtifactIds)
        self.status = try container.decodeIfPresent(TaskStatusEnum1.self, forKey: .status)
        self.draftStartedAtTimestamp = try container.decode(Date.self, forKey: .draftStartedAtTimestamp)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.exceptionAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .exceptionAtTimestamp)
        self.orderCancelled = try container.decodeIfPresent(Bool.self, forKey: .orderCancelled)
        self.taskNotificationEmailIds = try container.decodeIfPresent([String].self, forKey: .taskNotificationEmailIds)
        self.taskNotificationSmsIds = try container.decodeIfPresent([String].self, forKey: .taskNotificationSmsIds)
        self.taskNotificationPushIds = try container.decodeIfPresent([String].self, forKey: .taskNotificationPushIds)
        self.taskNotificationVoiceIds = try container.decodeIfPresent([String].self, forKey: .taskNotificationVoiceIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.action, forKey: .action)
        try container.encodeIfPresent(self.timeWindows, forKey: .timeWindows)
        try container.encodeIfPresent(self.orderPlacerComments, forKey: .orderPlacerComments)
        try container.encodeIfPresent(self.shipperContactIds, forKey: .shipperContactIds)
        try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.completedByOrgId, forKey: .completedByOrgId)
        try container.encodeIfPresent(self.completedByUserId, forKey: .completedByUserId)
        try container.encodeIfPresent(self.cargoIds, forKey: .cargoIds)
        try container.encodeIfPresent(self.taskArtifactIds, forKey: .taskArtifactIds)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encode(self.draftStartedAtTimestamp, forKey: .draftStartedAtTimestamp)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encodeIfPresent(self.exceptionAtTimestamp, forKey: .exceptionAtTimestamp)
        try container.encodeIfPresent(self.orderCancelled, forKey: .orderCancelled)
        try container.encodeIfPresent(self.taskNotificationEmailIds, forKey: .taskNotificationEmailIds)
        try container.encodeIfPresent(self.taskNotificationSmsIds, forKey: .taskNotificationSmsIds)
        try container.encodeIfPresent(self.taskNotificationPushIds, forKey: .taskNotificationPushIds)
        try container.encodeIfPresent(self.taskNotificationVoiceIds, forKey: .taskNotificationVoiceIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case location
        case action
        case timeWindows = "time_windows"
        case orderPlacerComments = "order_placer_comments"
        case shipperContactIds = "shipper_contact_ids"
        case flightNumber = "flight_number"
        case id = "_id"
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case taskGroupId = "task_group_id"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case completedByOrgId = "completed_by_org_id"
        case completedByUserId = "completed_by_user_id"
        case cargoIds = "cargo_ids"
        case taskArtifactIds = "task_artifact_ids"
        case status
        case draftStartedAtTimestamp = "draft_started_at_timestamp"
        case stagedAtTimestamp = "staged_at_timestamp"
        case completedAtTimestamp = "completed_at_timestamp"
        case exceptionAtTimestamp = "exception_at_timestamp"
        case orderCancelled = "order_cancelled"
        case taskNotificationEmailIds = "task_notification_email_ids"
        case taskNotificationSmsIds = "task_notification_sms_ids"
        case taskNotificationPushIds = "task_notification_push_ids"
        case taskNotificationVoiceIds = "task_notification_voice_ids"
    }
}