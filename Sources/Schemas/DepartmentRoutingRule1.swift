import Foundation

public struct DepartmentRoutingRule1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let counterpartyType: RoutingCounterpartyTypeEnum
    public let counterpartyId: String
    public let departmentId: String
    public let id: String
    /// Must be a string starting with `org_`
    public let ownerOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        counterpartyType: RoutingCounterpartyTypeEnum,
        counterpartyId: String,
        departmentId: String,
        id: String,
        ownerOrgId: String,
        createdByUserId: String,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.counterpartyType = counterpartyType
        self.counterpartyId = counterpartyId
        self.departmentId = departmentId
        self.id = id
        self.ownerOrgId = ownerOrgId
        self.createdByUserId = createdByUserId
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.counterpartyType = try container.decode(RoutingCounterpartyTypeEnum.self, forKey: .counterpartyType)
        self.counterpartyId = try container.decode(String.self, forKey: .counterpartyId)
        self.departmentId = try container.decode(String.self, forKey: .departmentId)
        self.id = try container.decode(String.self, forKey: .id)
        self.ownerOrgId = try container.decode(String.self, forKey: .ownerOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.counterpartyType, forKey: .counterpartyType)
        try container.encode(self.counterpartyId, forKey: .counterpartyId)
        try container.encode(self.departmentId, forKey: .departmentId)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.ownerOrgId, forKey: .ownerOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case counterpartyType = "counterparty_type"
        case counterpartyId = "counterparty_id"
        case departmentId = "department_id"
        case id = "_id"
        case ownerOrgId = "owner_org_id"
        case createdByUserId = "created_by_user_id"
        case createdAt = "created_at"
    }
}