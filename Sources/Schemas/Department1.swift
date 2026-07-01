import Foundation

public struct Department1: Codable, Hashable, Sendable {
    public let id: String
    public let createdAt: Date
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let departmentType: DepartmentTypeEnum
    public let location: LocationFeature?
    public let name: String
    public let operatorUserIds: [String]?
    /// Must be a string starting with `org_`
    public let orgId: String
    public let schemaVersion: Int
    public let shortId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        createdAt: Date,
        createdByUserId: String,
        departmentType: DepartmentTypeEnum,
        location: LocationFeature? = nil,
        name: String,
        operatorUserIds: [String]? = nil,
        orgId: String,
        schemaVersion: Int,
        shortId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.createdAt = createdAt
        self.createdByUserId = createdByUserId
        self.departmentType = departmentType
        self.location = location
        self.name = name
        self.operatorUserIds = operatorUserIds
        self.orgId = orgId
        self.schemaVersion = schemaVersion
        self.shortId = shortId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.departmentType = try container.decode(DepartmentTypeEnum.self, forKey: .departmentType)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.name = try container.decode(String.self, forKey: .name)
        self.operatorUserIds = try container.decodeIfPresent([String].self, forKey: .operatorUserIds)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shortId = try container.decode(String.self, forKey: .shortId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.departmentType, forKey: .departmentType)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.operatorUserIds, forKey: .operatorUserIds)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.shortId, forKey: .shortId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case createdAt = "created_at"
        case createdByUserId = "created_by_user_id"
        case departmentType = "department_type"
        case location
        case name
        case operatorUserIds = "operator_user_ids"
        case orgId = "org_id"
        case schemaVersion = "schema_version"
        case shortId = "short_id"
    }
}