import Foundation

public struct Department1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let name: String
    public let departmentType: DepartmentTypeEnum
    public let location: LocationFeature?
    public let operatorUserIds: [String]?
    public let id: String
    /// Must be a string starting with `org_`
    public let orgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        name: String,
        departmentType: DepartmentTypeEnum,
        location: LocationFeature? = nil,
        operatorUserIds: [String]? = nil,
        id: String,
        orgId: String,
        createdByUserId: String,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.name = name
        self.departmentType = departmentType
        self.location = location
        self.operatorUserIds = operatorUserIds
        self.id = id
        self.orgId = orgId
        self.createdByUserId = createdByUserId
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.name = try container.decode(String.self, forKey: .name)
        self.departmentType = try container.decode(DepartmentTypeEnum.self, forKey: .departmentType)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.operatorUserIds = try container.decodeIfPresent([String].self, forKey: .operatorUserIds)
        self.id = try container.decode(String.self, forKey: .id)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.departmentType, forKey: .departmentType)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.operatorUserIds, forKey: .operatorUserIds)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case name
        case departmentType = "department_type"
        case location
        case operatorUserIds = "operator_user_ids"
        case id = "_id"
        case orgId = "org_id"
        case createdByUserId = "created_by_user_id"
        case createdAt = "created_at"
    }
}