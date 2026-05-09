import Foundation

public struct Case1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let orderId: String
    public let departmentId: String?
    public let assignedOperatorUserIds: [String]?
    public let id: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let status: CaseStatusEnum?
    public let needsAction: Bool?
    public let messages: [CaseMessage1]?
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        orderId: String,
        departmentId: String? = nil,
        assignedOperatorUserIds: [String]? = nil,
        id: String,
        orgId: String,
        status: CaseStatusEnum? = nil,
        needsAction: Bool? = nil,
        messages: [CaseMessage1]? = nil,
        createdByUserId: String,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.orderId = orderId
        self.departmentId = departmentId
        self.assignedOperatorUserIds = assignedOperatorUserIds
        self.id = id
        self.orgId = orgId
        self.status = status
        self.needsAction = needsAction
        self.messages = messages
        self.createdByUserId = createdByUserId
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
        self.assignedOperatorUserIds = try container.decodeIfPresent([String].self, forKey: .assignedOperatorUserIds)
        self.id = try container.decode(String.self, forKey: .id)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.status = try container.decodeIfPresent(CaseStatusEnum.self, forKey: .status)
        self.needsAction = try container.decodeIfPresent(Bool.self, forKey: .needsAction)
        self.messages = try container.decodeIfPresent([CaseMessage1].self, forKey: .messages)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
        try container.encodeIfPresent(self.assignedOperatorUserIds, forKey: .assignedOperatorUserIds)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.needsAction, forKey: .needsAction)
        try container.encodeIfPresent(self.messages, forKey: .messages)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case orderId = "order_id"
        case departmentId = "department_id"
        case assignedOperatorUserIds = "assigned_operator_user_ids"
        case id = "_id"
        case orgId = "org_id"
        case status
        case needsAction = "needs_action"
        case messages
        case createdByUserId = "created_by_user_id"
        case createdAt = "created_at"
    }
}