import Foundation

public struct OrgPublicData1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    /// Must be a string starting with `org_`
    public let orgId: String
    public let companyName: String?
    public let handle: String?
    public let orgType: OrgTypeEnum
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        orgId: String,
        companyName: String? = nil,
        handle: String? = nil,
        orgType: OrgTypeEnum,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.orgId = orgId
        self.companyName = companyName
        self.handle = handle
        self.orgType = orgType
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.companyName = try container.decodeIfPresent(String.self, forKey: .companyName)
        self.handle = try container.decodeIfPresent(String.self, forKey: .handle)
        self.orgType = try container.decode(OrgTypeEnum.self, forKey: .orgType)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.companyName, forKey: .companyName)
        try container.encodeIfPresent(self.handle, forKey: .handle)
        try container.encode(self.orgType, forKey: .orgType)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case orgId = "org_id"
        case companyName = "company_name"
        case handle
        case orgType = "org_type"
        case id = "_id"
    }
}