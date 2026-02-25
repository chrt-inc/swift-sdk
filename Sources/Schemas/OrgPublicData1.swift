import Foundation

public struct OrgPublicData1: Codable, Hashable, Sendable {
    public let id: String
    public let companyName: String?
    public let handle: String?
    /// Must be a string starting with `org_`
    public let orgId: String
    public let orgType: OrgTypeEnum
    public let schemaVersion: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        companyName: String? = nil,
        handle: String? = nil,
        orgId: String,
        orgType: OrgTypeEnum,
        schemaVersion: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.companyName = companyName
        self.handle = handle
        self.orgId = orgId
        self.orgType = orgType
        self.schemaVersion = schemaVersion
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.companyName = try container.decodeIfPresent(String.self, forKey: .companyName)
        self.handle = try container.decodeIfPresent(String.self, forKey: .handle)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.orgType = try container.decode(OrgTypeEnum.self, forKey: .orgType)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.companyName, forKey: .companyName)
        try container.encodeIfPresent(self.handle, forKey: .handle)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.orgType, forKey: .orgType)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case companyName = "company_name"
        case handle
        case orgId = "org_id"
        case orgType = "org_type"
        case schemaVersion = "schema_version"
    }
}