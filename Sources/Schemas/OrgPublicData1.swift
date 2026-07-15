import Foundation

public struct OrgPublicData1: Codable, Hashable, Sendable {
    public let id: String
    public let description: String?
    public let emailAddress: String?
    /// Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
    public let handle: String?
    public let industry: String?
    public let name: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let orgType: OrgTypeEnum
    public let phoneNumber: String?
    public let schemaVersion: Int
    public let streetAddress: LocationFeature?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        description: String? = nil,
        emailAddress: String? = nil,
        handle: String? = nil,
        industry: String? = nil,
        name: String,
        orgId: String,
        orgType: OrgTypeEnum,
        phoneNumber: String? = nil,
        schemaVersion: Int,
        streetAddress: LocationFeature? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.description = description
        self.emailAddress = emailAddress
        self.handle = handle
        self.industry = industry
        self.name = name
        self.orgId = orgId
        self.orgType = orgType
        self.phoneNumber = phoneNumber
        self.schemaVersion = schemaVersion
        self.streetAddress = streetAddress
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
        self.handle = try container.decodeIfPresent(String.self, forKey: .handle)
        self.industry = try container.decodeIfPresent(String.self, forKey: .industry)
        self.name = try container.decode(String.self, forKey: .name)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.orgType = try container.decode(OrgTypeEnum.self, forKey: .orgType)
        self.phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.streetAddress = try container.decodeIfPresent(LocationFeature.self, forKey: .streetAddress)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(self.handle, forKey: .handle)
        try container.encodeIfPresent(self.industry, forKey: .industry)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.orgType, forKey: .orgType)
        try container.encodeIfPresent(self.phoneNumber, forKey: .phoneNumber)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.streetAddress, forKey: .streetAddress)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case description
        case emailAddress = "email_address"
        case handle
        case industry
        case name
        case orgId = "org_id"
        case orgType = "org_type"
        case phoneNumber = "phone_number"
        case schemaVersion = "schema_version"
        case streetAddress = "street_address"
    }
}