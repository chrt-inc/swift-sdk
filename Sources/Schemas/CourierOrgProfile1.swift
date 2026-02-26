import Foundation

public struct CourierOrgProfile1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let description: String
    public let emailAddressPrimary: String
    public let phoneNumberPrimary: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        description: String,
        emailAddressPrimary: String,
        phoneNumberPrimary: String,
        orgId: String,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.description = description
        self.emailAddressPrimary = emailAddressPrimary
        self.phoneNumberPrimary = phoneNumberPrimary
        self.orgId = orgId
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.description = try container.decode(String.self, forKey: .description)
        self.emailAddressPrimary = try container.decode(String.self, forKey: .emailAddressPrimary)
        self.phoneNumberPrimary = try container.decode(String.self, forKey: .phoneNumberPrimary)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.emailAddressPrimary, forKey: .emailAddressPrimary)
        try container.encode(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case description
        case emailAddressPrimary = "email_address_primary"
        case phoneNumberPrimary = "phone_number_primary"
        case orgId = "org_id"
        case id = "_id"
    }
}