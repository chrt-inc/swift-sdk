import Foundation

public struct OffChrtOrgData1: Codable, Hashable, Sendable {
    public let id: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let emailAddress: String?
    public let industry: String?
    public let name: String
    public let orgType: OrgTypeEnum
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let phoneNumber: String?
    public let schemaVersion: Int
    public let streetAddress: LocationFeature?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        createdByUserId: String,
        emailAddress: String? = nil,
        industry: String? = nil,
        name: String,
        orgType: OrgTypeEnum,
        ownedByOrgId: String,
        phoneNumber: String? = nil,
        schemaVersion: Int,
        streetAddress: LocationFeature? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.createdByUserId = createdByUserId
        self.emailAddress = emailAddress
        self.industry = industry
        self.name = name
        self.orgType = orgType
        self.ownedByOrgId = ownedByOrgId
        self.phoneNumber = phoneNumber
        self.schemaVersion = schemaVersion
        self.streetAddress = streetAddress
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
        self.industry = try container.decodeIfPresent(String.self, forKey: .industry)
        self.name = try container.decode(String.self, forKey: .name)
        self.orgType = try container.decode(OrgTypeEnum.self, forKey: .orgType)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.streetAddress = try container.decodeIfPresent(LocationFeature.self, forKey: .streetAddress)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(self.industry, forKey: .industry)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.orgType, forKey: .orgType)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encodeIfPresent(self.phoneNumber, forKey: .phoneNumber)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.streetAddress, forKey: .streetAddress)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case createdByUserId = "created_by_user_id"
        case emailAddress = "email_address"
        case industry
        case name
        case orgType = "org_type"
        case ownedByOrgId = "owned_by_org_id"
        case phoneNumber = "phone_number"
        case schemaVersion = "schema_version"
        case streetAddress = "street_address"
    }
}