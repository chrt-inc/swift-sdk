import Foundation

public struct Case1: Codable, Hashable, Sendable {
    public let id: String
    public let assignedUserIds: [String]?
    public let billingReviewStatus: BillingReviewStatusEnum?
    public let caseS3ObjectMetadataIds: [String]?
    public let caseTag: String?
    public let createdAt: Date
    public let departmentId: String?
    public let messages: [CaseMessage1]?
    public let orderId: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let schemaVersion: Int
    public let taskListsToApplyAtOrderStaging: [TaskListToApplyToCase1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        assignedUserIds: [String]? = nil,
        billingReviewStatus: BillingReviewStatusEnum? = nil,
        caseS3ObjectMetadataIds: [String]? = nil,
        caseTag: String? = nil,
        createdAt: Date,
        departmentId: String? = nil,
        messages: [CaseMessage1]? = nil,
        orderId: String,
        orgId: String,
        schemaVersion: Int,
        taskListsToApplyAtOrderStaging: [TaskListToApplyToCase1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.assignedUserIds = assignedUserIds
        self.billingReviewStatus = billingReviewStatus
        self.caseS3ObjectMetadataIds = caseS3ObjectMetadataIds
        self.caseTag = caseTag
        self.createdAt = createdAt
        self.departmentId = departmentId
        self.messages = messages
        self.orderId = orderId
        self.orgId = orgId
        self.schemaVersion = schemaVersion
        self.taskListsToApplyAtOrderStaging = taskListsToApplyAtOrderStaging
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.assignedUserIds = try container.decodeIfPresent([String].self, forKey: .assignedUserIds)
        self.billingReviewStatus = try container.decodeIfPresent(BillingReviewStatusEnum.self, forKey: .billingReviewStatus)
        self.caseS3ObjectMetadataIds = try container.decodeIfPresent([String].self, forKey: .caseS3ObjectMetadataIds)
        self.caseTag = try container.decodeIfPresent(String.self, forKey: .caseTag)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
        self.messages = try container.decodeIfPresent([CaseMessage1].self, forKey: .messages)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.taskListsToApplyAtOrderStaging = try container.decodeIfPresent([TaskListToApplyToCase1].self, forKey: .taskListsToApplyAtOrderStaging)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.assignedUserIds, forKey: .assignedUserIds)
        try container.encodeIfPresent(self.billingReviewStatus, forKey: .billingReviewStatus)
        try container.encodeIfPresent(self.caseS3ObjectMetadataIds, forKey: .caseS3ObjectMetadataIds)
        try container.encodeIfPresent(self.caseTag, forKey: .caseTag)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
        try container.encodeIfPresent(self.messages, forKey: .messages)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.taskListsToApplyAtOrderStaging, forKey: .taskListsToApplyAtOrderStaging)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case assignedUserIds = "assigned_user_ids"
        case billingReviewStatus = "billing_review_status"
        case caseS3ObjectMetadataIds = "case_s3_object_metadata_ids"
        case caseTag = "case_tag"
        case createdAt = "created_at"
        case departmentId = "department_id"
        case messages
        case orderId = "order_id"
        case orgId = "org_id"
        case schemaVersion = "schema_version"
        case taskListsToApplyAtOrderStaging = "task_lists_to_apply_at_order_staging"
    }
}