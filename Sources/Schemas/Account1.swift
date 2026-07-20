import Foundation

public struct Account1: Codable, Hashable, Sendable {
    public let id: String
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let name: String
    public let offChrtOrgDataId: String?
    /// Must be a string starting with `org_`
    public let orgId: String?
    public let schemaVersion: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        createdByOrgId: String,
        createdByUserId: String,
        name: String,
        offChrtOrgDataId: String? = nil,
        orgId: String? = nil,
        schemaVersion: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.name = name
        self.offChrtOrgDataId = offChrtOrgDataId
        self.orgId = orgId
        self.schemaVersion = schemaVersion
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.name = try container.decode(String.self, forKey: .name)
        self.offChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtOrgDataId)
        self.orgId = try container.decodeIfPresent(String.self, forKey: .orgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.offChrtOrgDataId, forKey: .offChrtOrgDataId)
        try container.encodeIfPresent(self.orgId, forKey: .orgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case name
        case offChrtOrgDataId = "off_chrt_org_data_id"
        case orgId = "org_id"
        case schemaVersion = "schema_version"
    }
}