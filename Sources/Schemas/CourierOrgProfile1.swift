import Foundation

public struct CourierOrgProfile1: Codable, Hashable, Sendable {
    public let id: String
    public let description: String
    public let emailAddressPrimary: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let phoneNumberPrimary: String
    public let schemaVersion: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        description: String,
        emailAddressPrimary: String,
        orgId: String,
        phoneNumberPrimary: String,
        schemaVersion: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.description = description
        self.emailAddressPrimary = emailAddressPrimary
        self.orgId = orgId
        self.phoneNumberPrimary = phoneNumberPrimary
        self.schemaVersion = schemaVersion
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.description = try container.decode(String.self, forKey: .description)
        self.emailAddressPrimary = try container.decode(String.self, forKey: .emailAddressPrimary)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.phoneNumberPrimary = try container.decode(String.self, forKey: .phoneNumberPrimary)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.emailAddressPrimary, forKey: .emailAddressPrimary)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case description
        case emailAddressPrimary = "email_address_primary"
        case orgId = "org_id"
        case phoneNumberPrimary = "phone_number_primary"
        case schemaVersion = "schema_version"
    }
}