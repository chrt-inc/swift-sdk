import Foundation

public struct Milestone1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let type: MilestoneTypeEnum1
    public let requestorComments: Nullable<String>
    public let id: String
    public let orderId: String
    public let orderShortId: String
    public let taskId: String
    public let completedAtTimestamp: Nullable<Date>
    public let completedAtGeojsonFeature: Nullable<LocationFeature>
    /// Must be a string starting with `user_`
    public let completedByUserId: Nullable<String>
    public let completed: Bool
    public let milestoneS3ObjectMetadataIds: [String]?
    public let decodedScans: [String]?
    public let requestedByShipper: Bool
    public let completorComments: Nullable<String>
    public let chrtComments: Nullable<String>
    public let notificationEmailIds: Nullable<[String]>?
    public let notificationSmsIds: Nullable<[String]>?
    public let notificationPushIds: Nullable<[String]>?
    public let notificationVoiceIds: Nullable<[String]>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        type: MilestoneTypeEnum1,
        requestorComments: Nullable<String>,
        id: String,
        orderId: String,
        orderShortId: String,
        taskId: String,
        completedAtTimestamp: Nullable<Date>,
        completedAtGeojsonFeature: Nullable<LocationFeature>,
        completedByUserId: Nullable<String>,
        completed: Bool,
        milestoneS3ObjectMetadataIds: [String]? = nil,
        decodedScans: [String]? = nil,
        requestedByShipper: Bool,
        completorComments: Nullable<String>,
        chrtComments: Nullable<String>,
        notificationEmailIds: Nullable<[String]>? = nil,
        notificationSmsIds: Nullable<[String]>? = nil,
        notificationPushIds: Nullable<[String]>? = nil,
        notificationVoiceIds: Nullable<[String]>? = nil,
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
        self.requestorComments = try container.decode(Nullable<String>.self, forKey: .requestorComments)
        self.id = try container.decode(String.self, forKey: .id)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.taskId = try container.decode(String.self, forKey: .taskId)
        self.completedAtTimestamp = try container.decode(Nullable<Date>.self, forKey: .completedAtTimestamp)
        self.completedAtGeojsonFeature = try container.decode(Nullable<LocationFeature>.self, forKey: .completedAtGeojsonFeature)
        self.completedByUserId = try container.decode(Nullable<String>.self, forKey: .completedByUserId)
        self.completed = try container.decode(Bool.self, forKey: .completed)
        self.milestoneS3ObjectMetadataIds = try container.decodeIfPresent([String].self, forKey: .milestoneS3ObjectMetadataIds)
        self.decodedScans = try container.decodeIfPresent([String].self, forKey: .decodedScans)
        self.requestedByShipper = try container.decode(Bool.self, forKey: .requestedByShipper)
        self.completorComments = try container.decode(Nullable<String>.self, forKey: .completorComments)
        self.chrtComments = try container.decode(Nullable<String>.self, forKey: .chrtComments)
        self.notificationEmailIds = try container.decodeNullableIfPresent([String].self, forKey: .notificationEmailIds)
        self.notificationSmsIds = try container.decodeNullableIfPresent([String].self, forKey: .notificationSmsIds)
        self.notificationPushIds = try container.decodeNullableIfPresent([String].self, forKey: .notificationPushIds)
        self.notificationVoiceIds = try container.decodeNullableIfPresent([String].self, forKey: .notificationVoiceIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.requestorComments, forKey: .requestorComments)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encode(self.taskId, forKey: .taskId)
        try container.encode(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encode(self.completedAtGeojsonFeature, forKey: .completedAtGeojsonFeature)
        try container.encode(self.completedByUserId, forKey: .completedByUserId)
        try container.encode(self.completed, forKey: .completed)
        try container.encodeIfPresent(self.milestoneS3ObjectMetadataIds, forKey: .milestoneS3ObjectMetadataIds)
        try container.encodeIfPresent(self.decodedScans, forKey: .decodedScans)
        try container.encode(self.requestedByShipper, forKey: .requestedByShipper)
        try container.encode(self.completorComments, forKey: .completorComments)
        try container.encode(self.chrtComments, forKey: .chrtComments)
        try container.encodeNullableIfPresent(self.notificationEmailIds, forKey: .notificationEmailIds)
        try container.encodeNullableIfPresent(self.notificationSmsIds, forKey: .notificationSmsIds)
        try container.encodeNullableIfPresent(self.notificationPushIds, forKey: .notificationPushIds)
        try container.encodeNullableIfPresent(self.notificationVoiceIds, forKey: .notificationVoiceIds)
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