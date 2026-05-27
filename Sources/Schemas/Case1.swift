import Foundation

public struct Case1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let orderId: String
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let orderRef: String?
    public let orderShortId: String?
    public let departmentId: String?
    public let assignedOperatorUserIds: [String]?
    public let caseS3ObjectMetadataIds: [String]?
    public let id: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let status: CaseStatusEnum?
    public let needsAction: Bool?
    public let messages: [CaseMessage1]?
    public let enabledCheckKeys: [CheckEnum]?
    public let disabledCheckKeys: [CheckEnum]?
    public let checks: [Check1]?
    public let checksSummary: CaseChecksSummary1?
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        orderId: String,
        orderRef: String? = nil,
        orderShortId: String? = nil,
        departmentId: String? = nil,
        assignedOperatorUserIds: [String]? = nil,
        caseS3ObjectMetadataIds: [String]? = nil,
        id: String,
        orgId: String,
        status: CaseStatusEnum? = nil,
        needsAction: Bool? = nil,
        messages: [CaseMessage1]? = nil,
        enabledCheckKeys: [CheckEnum]? = nil,
        disabledCheckKeys: [CheckEnum]? = nil,
        checks: [Check1]? = nil,
        checksSummary: CaseChecksSummary1? = nil,
        createdByUserId: String,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.orderId = orderId
        self.orderRef = orderRef
        self.orderShortId = orderShortId
        self.departmentId = departmentId
        self.assignedOperatorUserIds = assignedOperatorUserIds
        self.caseS3ObjectMetadataIds = caseS3ObjectMetadataIds
        self.id = id
        self.orgId = orgId
        self.status = status
        self.needsAction = needsAction
        self.messages = messages
        self.enabledCheckKeys = enabledCheckKeys
        self.disabledCheckKeys = disabledCheckKeys
        self.checks = checks
        self.checksSummary = checksSummary
        self.createdByUserId = createdByUserId
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderRef = try container.decodeIfPresent(String.self, forKey: .orderRef)
        self.orderShortId = try container.decodeIfPresent(String.self, forKey: .orderShortId)
        self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
        self.assignedOperatorUserIds = try container.decodeIfPresent([String].self, forKey: .assignedOperatorUserIds)
        self.caseS3ObjectMetadataIds = try container.decodeIfPresent([String].self, forKey: .caseS3ObjectMetadataIds)
        self.id = try container.decode(String.self, forKey: .id)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.status = try container.decodeIfPresent(CaseStatusEnum.self, forKey: .status)
        self.needsAction = try container.decodeIfPresent(Bool.self, forKey: .needsAction)
        self.messages = try container.decodeIfPresent([CaseMessage1].self, forKey: .messages)
        self.enabledCheckKeys = try container.decodeIfPresent([CheckEnum].self, forKey: .enabledCheckKeys)
        self.disabledCheckKeys = try container.decodeIfPresent([CheckEnum].self, forKey: .disabledCheckKeys)
        self.checks = try container.decodeIfPresent([Check1].self, forKey: .checks)
        self.checksSummary = try container.decodeIfPresent(CaseChecksSummary1.self, forKey: .checksSummary)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.orderRef, forKey: .orderRef)
        try container.encodeIfPresent(self.orderShortId, forKey: .orderShortId)
        try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
        try container.encodeIfPresent(self.assignedOperatorUserIds, forKey: .assignedOperatorUserIds)
        try container.encodeIfPresent(self.caseS3ObjectMetadataIds, forKey: .caseS3ObjectMetadataIds)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.needsAction, forKey: .needsAction)
        try container.encodeIfPresent(self.messages, forKey: .messages)
        try container.encodeIfPresent(self.enabledCheckKeys, forKey: .enabledCheckKeys)
        try container.encodeIfPresent(self.disabledCheckKeys, forKey: .disabledCheckKeys)
        try container.encodeIfPresent(self.checks, forKey: .checks)
        try container.encodeIfPresent(self.checksSummary, forKey: .checksSummary)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case orderId = "order_id"
        case orderRef = "order_ref"
        case orderShortId = "order_short_id"
        case departmentId = "department_id"
        case assignedOperatorUserIds = "assigned_operator_user_ids"
        case caseS3ObjectMetadataIds = "case_s3_object_metadata_ids"
        case id = "_id"
        case orgId = "org_id"
        case status
        case needsAction = "needs_action"
        case messages
        case enabledCheckKeys = "enabled_check_keys"
        case disabledCheckKeys = "disabled_check_keys"
        case checks
        case checksSummary = "checks_summary"
        case createdByUserId = "created_by_user_id"
        case createdAt = "created_at"
    }
}