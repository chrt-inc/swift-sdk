import Foundation

public struct Milestone1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let type: MilestoneTypeEnum1
    public let requestorComments: JSONValue?
    public let id: String
    public let orderId: String
    public let orderShortId: String
    public let taskId: String
    public let completedAtTimestamp: JSONValue?
    public let completedAtGeojsonFeature: JSONValue?
    /// Must be a string starting with `user_`
    public let completedByUserId: JSONValue?
    public let completed: Bool
    public let milestoneS3ObjectMetadataIds: [String]?
    public let decodedScans: [String]?
    public let requestedByShipper: Bool
    public let completorComments: JSONValue?
    public let chrtComments: JSONValue?
    public let notificationEmailIds: JSONValue?
    public let notificationSmsIds: JSONValue?
    public let notificationPushIds: JSONValue?
    public let notificationVoiceIds: JSONValue?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        type: MilestoneTypeEnum1,
        requestorComments: JSONValue? = nil,
        id: String,
        orderId: String,
        orderShortId: String,
        taskId: String,
        completedAtTimestamp: JSONValue? = nil,
        completedAtGeojsonFeature: JSONValue? = nil,
        completedByUserId: JSONValue? = nil,
        completed: Bool,
        milestoneS3ObjectMetadataIds: [String]? = nil,
        decodedScans: [String]? = nil,
        requestedByShipper: Bool,
        completorComments: JSONValue? = nil,
        chrtComments: JSONValue? = nil,
        notificationEmailIds: JSONValue? = nil,
        notificationSmsIds: JSONValue? = nil,
        notificationPushIds: JSONValue? = nil,
        notificationVoiceIds: JSONValue? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.type = type
        self.requestorComments = requestorComments
        self.id = id
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.taskId = taskId
        self.completedAtTimestamp = completedAtTimestamp
        self.completedAtGeojsonFeature = completedAtGeojsonFeature
        self.completedByUserId = completedByUserId
        self.completed = completed
        self.milestoneS3ObjectMetadataIds = milestoneS3ObjectMetadataIds
        self.decodedScans = decodedScans
        self.requestedByShipper = requestedByShipper
        self.completorComments = completorComments
        self.chrtComments = chrtComments
        self.notificationEmailIds = notificationEmailIds
        self.notificationSmsIds = notificationSmsIds
        self.notificationPushIds = notificationPushIds
        self.notificationVoiceIds = notificationVoiceIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.type = try container.decode(MilestoneTypeEnum1.self, forKey: .type)
        self.requestorComments = try container.decodeIfPresent(JSONValue.self, forKey: .requestorComments)
        self.id = try container.decode(String.self, forKey: .id)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.taskId = try container.decode(String.self, forKey: .taskId)
        self.completedAtTimestamp = try container.decodeIfPresent(JSONValue.self, forKey: .completedAtTimestamp)
        self.completedAtGeojsonFeature = try container.decodeIfPresent(JSONValue.self, forKey: .completedAtGeojsonFeature)
        self.completedByUserId = try container.decodeIfPresent(JSONValue.self, forKey: .completedByUserId)
        self.completed = try container.decode(Bool.self, forKey: .completed)
        self.milestoneS3ObjectMetadataIds = try container.decodeIfPresent([String].self, forKey: .milestoneS3ObjectMetadataIds)
        self.decodedScans = try container.decodeIfPresent([String].self, forKey: .decodedScans)
        self.requestedByShipper = try container.decode(Bool.self, forKey: .requestedByShipper)
        self.completorComments = try container.decodeIfPresent(JSONValue.self, forKey: .completorComments)
        self.chrtComments = try container.decodeIfPresent(JSONValue.self, forKey: .chrtComments)
        self.notificationEmailIds = try container.decodeIfPresent(JSONValue.self, forKey: .notificationEmailIds)
        self.notificationSmsIds = try container.decodeIfPresent(JSONValue.self, forKey: .notificationSmsIds)
        self.notificationPushIds = try container.decodeIfPresent(JSONValue.self, forKey: .notificationPushIds)
        self.notificationVoiceIds = try container.decodeIfPresent(JSONValue.self, forKey: .notificationVoiceIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.type, forKey: .type)
        try container.encodeIfPresent(self.requestorComments, forKey: .requestorComments)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encode(self.taskId, forKey: .taskId)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encodeIfPresent(self.completedAtGeojsonFeature, forKey: .completedAtGeojsonFeature)
        try container.encodeIfPresent(self.completedByUserId, forKey: .completedByUserId)
        try container.encode(self.completed, forKey: .completed)
        try container.encodeIfPresent(self.milestoneS3ObjectMetadataIds, forKey: .milestoneS3ObjectMetadataIds)
        try container.encodeIfPresent(self.decodedScans, forKey: .decodedScans)
        try container.encode(self.requestedByShipper, forKey: .requestedByShipper)
        try container.encodeIfPresent(self.completorComments, forKey: .completorComments)
        try container.encodeIfPresent(self.chrtComments, forKey: .chrtComments)
        try container.encodeIfPresent(self.notificationEmailIds, forKey: .notificationEmailIds)
        try container.encodeIfPresent(self.notificationSmsIds, forKey: .notificationSmsIds)
        try container.encodeIfPresent(self.notificationPushIds, forKey: .notificationPushIds)
        try container.encodeIfPresent(self.notificationVoiceIds, forKey: .notificationVoiceIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case type
        case requestorComments = "requestor_comments"
        case id = "_id"
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case taskId = "task_id"
        case completedAtTimestamp = "completed_at_timestamp"
        case completedAtGeojsonFeature = "completed_at_geojson_feature"
        case completedByUserId = "completed_by_user_id"
        case completed
        case milestoneS3ObjectMetadataIds = "milestone_s3_object_metadata_ids"
        case decodedScans = "decoded_scans"
        case requestedByShipper = "requested_by_shipper"
        case completorComments = "completor_comments"
        case chrtComments = "chrt_comments"
        case notificationEmailIds = "notification_email_ids"
        case notificationSmsIds = "notification_sms_ids"
        case notificationPushIds = "notification_push_ids"
        case notificationVoiceIds = "notification_voice_ids"
    }
}