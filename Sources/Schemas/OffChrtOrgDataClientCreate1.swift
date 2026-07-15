import Foundation

public struct OffChrtOrgDataClientCreate1: Codable, Hashable, Sendable {
    public let emailAddress: String?
    public let industry: String?
    public let name: String
    public let orgType: OrgTypeEnum
    public let phoneNumber: String?
    public let schemaVersion: Int
    public let streetAddress: LocationFeature?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        emailAddress: String? = nil,
        industry: String? = nil,
        name: String,
        orgType: OrgTypeEnum,
        phoneNumber: String? = nil,
        schemaVersion: Int,
        streetAddress: LocationFeature? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.emailAddress = emailAddress
        self.industry = industry
        self.name = name
        self.orgType = orgType
        self.phoneNumber = phoneNumber
        self.schemaVersion = schemaVersion
        self.streetAddress = streetAddress
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
        self.industry = try container.decodeIfPresent(String.self, forKey: .industry)
        self.name = try container.decode(String.self, forKey: .name)
        self.orgType = try container.decode(OrgTypeEnum.self, forKey: .orgType)
        self.phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.streetAddress = try container.decodeIfPresent(LocationFeature.self, forKey: .streetAddress)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(self.industry, forKey: .industry)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.orgType, forKey: .orgType)
        try container.encodeIfPresent(self.phoneNumber, forKey: .phoneNumber)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.streetAddress, forKey: .streetAddress)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case emailAddress = "email_address"
        case industry
        case name
        case orgType = "org_type"
        case phoneNumber = "phone_number"
        case schemaVersion = "schema_version"
        case streetAddress = "street_address"
    }
}