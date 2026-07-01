import Foundation

public struct DepartmentRoutingRule1: Codable, Hashable, Sendable {
    public let id: String
    public let createdAt: Date
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let departmentId: String
    public let offChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let ownerOrgId: String
    public let schemaVersion: Int
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        createdAt: Date,
        createdByUserId: String,
        departmentId: String,
        offChrtShipperOrgId: String? = nil,
        ownerOrgId: String,
        schemaVersion: Int,
        shipperOrgId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.createdAt = createdAt
        self.createdByUserId = createdByUserId
        self.departmentId = departmentId
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.ownerOrgId = ownerOrgId
        self.schemaVersion = schemaVersion
        self.shipperOrgId = shipperOrgId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.departmentId = try container.decode(String.self, forKey: .departmentId)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.ownerOrgId = try container.decode(String.self, forKey: .ownerOrgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.departmentId, forKey: .departmentId)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encode(self.ownerOrgId, forKey: .ownerOrgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case createdAt = "created_at"
        case createdByUserId = "created_by_user_id"
        case departmentId = "department_id"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case ownerOrgId = "owner_org_id"
        case schemaVersion = "schema_version"
        case shipperOrgId = "shipper_org_id"
    }
}