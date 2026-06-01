import Foundation

public struct Case1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let orderId: String
    public let departmentId: String?
    public let assignedUserIds: [String]?
    public let caseS3ObjectMetadataIds: [String]?
    public let id: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let messages: [CaseMessage1]?
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        orderId: String,
        departmentId: String? = nil,
        assignedUserIds: [String]? = nil,
        caseS3ObjectMetadataIds: [String]? = nil,
        id: String,
        orgId: String,
        messages: [CaseMessage1]? = nil,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.orderId = orderId
        self.departmentId = departmentId
        self.assignedUserIds = assignedUserIds
        self.caseS3ObjectMetadataIds = caseS3ObjectMetadataIds
        self.id = id
        self.orgId = orgId
        self.messages = messages
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
        self.assignedUserIds = try container.decodeIfPresent([String].self, forKey: .assignedUserIds)
        self.caseS3ObjectMetadataIds = try container.decodeIfPresent([String].self, forKey: .caseS3ObjectMetadataIds)
        self.id = try container.decode(String.self, forKey: .id)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.messages = try container.decodeIfPresent([CaseMessage1].self, forKey: .messages)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
        try container.encodeIfPresent(self.assignedUserIds, forKey: .assignedUserIds)
        try container.encodeIfPresent(self.caseS3ObjectMetadataIds, forKey: .caseS3ObjectMetadataIds)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.messages, forKey: .messages)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case orderId = "order_id"
        case departmentId = "department_id"
        case assignedUserIds = "assigned_user_ids"
        case caseS3ObjectMetadataIds = "case_s3_object_metadata_ids"
        case id = "_id"
        case orgId = "org_id"
        case messages
        case createdAt = "created_at"
    }
}