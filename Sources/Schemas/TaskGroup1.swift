import Foundation

public struct TaskGroup1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let id: String
    public let orderId: String
    public let orderShortId: String
    public let taskIds: [String]?
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    /// Must be a string starting with `org_`
    public let courierOrgId: String?
    public let driverId: String?
    public let taskGroupS3ObjectMetadataIds: [String]?
    public let status: TaskGroupStatusEnum1?
    public let draftStartedAtTimestamp: Date
    public let stagedAtTimestamp: Date?
    public let inProgressAtTimestamp: Date?
    public let completedAtTimestamp: Date?
    public let exceptionAtTimestamp: Date?
    public let orderCancelled: Bool?
    public let taskGroupType: TaskGroupTypeEnum1
    public let taskGroupMileage: TaskGroupMileage1?
    public let flightNumber: String?
    public let messages: [TaskGroupMessage1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        id: String,
        orderId: String,
        orderShortId: String,
        taskIds: [String]? = nil,
        createdByOrgId: String,
        createdByUserId: String,
        courierOrgId: String? = nil,
        driverId: String? = nil,
        taskGroupS3ObjectMetadataIds: [String]? = nil,
        status: TaskGroupStatusEnum1? = nil,
        draftStartedAtTimestamp: Date,
        stagedAtTimestamp: Date? = nil,
        inProgressAtTimestamp: Date? = nil,
        completedAtTimestamp: Date? = nil,
        exceptionAtTimestamp: Date? = nil,
        orderCancelled: Bool? = nil,
        taskGroupType: TaskGroupTypeEnum1,
        taskGroupMileage: TaskGroupMileage1? = nil,
        flightNumber: String? = nil,
        messages: [TaskGroupMessage1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.id = id
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.taskIds = taskIds
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.courierOrgId = courierOrgId
        self.driverId = driverId
        self.taskGroupS3ObjectMetadataIds = taskGroupS3ObjectMetadataIds
        self.status = status
        self.draftStartedAtTimestamp = draftStartedAtTimestamp
        self.stagedAtTimestamp = stagedAtTimestamp
        self.inProgressAtTimestamp = inProgressAtTimestamp
        self.completedAtTimestamp = completedAtTimestamp
        self.exceptionAtTimestamp = exceptionAtTimestamp
        self.orderCancelled = orderCancelled
        self.taskGroupType = taskGroupType
        self.taskGroupMileage = taskGroupMileage
        self.flightNumber = flightNumber
        self.messages = messages
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.id = try container.decode(String.self, forKey: .id)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.taskIds = try container.decodeIfPresent([String].self, forKey: .taskIds)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.courierOrgId = try container.decodeIfPresent(String.self, forKey: .courierOrgId)
        self.driverId = try container.decodeIfPresent(String.self, forKey: .driverId)
        self.taskGroupS3ObjectMetadataIds = try container.decodeIfPresent([String].self, forKey: .taskGroupS3ObjectMetadataIds)
        self.status = try container.decodeIfPresent(TaskGroupStatusEnum1.self, forKey: .status)
        self.draftStartedAtTimestamp = try container.decode(Date.self, forKey: .draftStartedAtTimestamp)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.inProgressAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .inProgressAtTimestamp)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.exceptionAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .exceptionAtTimestamp)
        self.orderCancelled = try container.decodeIfPresent(Bool.self, forKey: .orderCancelled)
        self.taskGroupType = try container.decode(TaskGroupTypeEnum1.self, forKey: .taskGroupType)
        self.taskGroupMileage = try container.decodeIfPresent(TaskGroupMileage1.self, forKey: .taskGroupMileage)
        self.flightNumber = try container.decodeIfPresent(String.self, forKey: .flightNumber)
        self.messages = try container.decodeIfPresent([TaskGroupMessage1].self, forKey: .messages)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encodeIfPresent(self.taskIds, forKey: .taskIds)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.courierOrgId, forKey: .courierOrgId)
        try container.encodeIfPresent(self.driverId, forKey: .driverId)
        try container.encodeIfPresent(self.taskGroupS3ObjectMetadataIds, forKey: .taskGroupS3ObjectMetadataIds)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encode(self.draftStartedAtTimestamp, forKey: .draftStartedAtTimestamp)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encodeIfPresent(self.inProgressAtTimestamp, forKey: .inProgressAtTimestamp)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encodeIfPresent(self.exceptionAtTimestamp, forKey: .exceptionAtTimestamp)
        try container.encodeIfPresent(self.orderCancelled, forKey: .orderCancelled)
        try container.encode(self.taskGroupType, forKey: .taskGroupType)
        try container.encodeIfPresent(self.taskGroupMileage, forKey: .taskGroupMileage)
        try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
        try container.encodeIfPresent(self.messages, forKey: .messages)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case id = "_id"
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case taskIds = "task_ids"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case courierOrgId = "courier_org_id"
        case driverId = "driver_id"
        case taskGroupS3ObjectMetadataIds = "task_group_s3_object_metadata_ids"
        case status
        case draftStartedAtTimestamp = "draft_started_at_timestamp"
        case stagedAtTimestamp = "staged_at_timestamp"
        case inProgressAtTimestamp = "in_progress_at_timestamp"
        case completedAtTimestamp = "completed_at_timestamp"
        case exceptionAtTimestamp = "exception_at_timestamp"
        case orderCancelled = "order_cancelled"
        case taskGroupType = "task_group_type"
        case taskGroupMileage = "task_group_mileage"
        case flightNumber = "flight_number"
        case messages
    }
}