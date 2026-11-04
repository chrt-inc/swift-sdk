import Foundation

/// The only shape of an Alvys credential a user is ever allowed to receive.
public struct AlvysCredsLimited1: Codable, Hashable, Sendable {
    public let id: String
    public let accessTokenExpiresAtTimestamp: Date?
    public let accessTokenUpdatedAtTimestamp: Date?
    public let active: Bool?
    public let clientId: String
    public let createdAtTimestamp: Date
    public let customerId: String
    public let description: String?
    public let highWaterMarkTimestamp: Date?
    /// Must be a string starting with `org_`
    public let orgId: String
    /// Must be a string starting with `user_`
    public let ownedByUserId: String
    public let providerAccountLabel: String?
    /// Must be a string starting with `org_`
    public let providerOrgId: String
    public let schemaVersion: Int
    public let shippingIntegration: Alvys
    public let updatedAtTimestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        accessTokenExpiresAtTimestamp: Date? = nil,
        accessTokenUpdatedAtTimestamp: Date? = nil,
        active: Bool? = nil,
        clientId: String,
        createdAtTimestamp: Date,
        customerId: String,
        description: String? = nil,
        highWaterMarkTimestamp: Date? = nil,
        orgId: String,
        ownedByUserId: String,
        providerAccountLabel: String? = nil,
        providerOrgId: String,
        schemaVersion: Int,
        shippingIntegration: Alvys,
        updatedAtTimestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.accessTokenExpiresAtTimestamp = accessTokenExpiresAtTimestamp
        self.accessTokenUpdatedAtTimestamp = accessTokenUpdatedAtTimestamp
        self.active = active
        self.clientId = clientId
        self.createdAtTimestamp = createdAtTimestamp
        self.customerId = customerId
        self.description = description
        self.highWaterMarkTimestamp = highWaterMarkTimestamp
        self.orgId = orgId
        self.ownedByUserId = ownedByUserId
        self.providerAccountLabel = providerAccountLabel
        self.providerOrgId = providerOrgId
        self.schemaVersion = schemaVersion
        self.shippingIntegration = shippingIntegration
        self.updatedAtTimestamp = updatedAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.accessTokenExpiresAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .accessTokenExpiresAtTimestamp)
        self.accessTokenUpdatedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .accessTokenUpdatedAtTimestamp)
        self.active = try container.decodeIfPresent(Bool.self, forKey: .active)
        self.clientId = try container.decode(String.self, forKey: .clientId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.customerId = try container.decode(String.self, forKey: .customerId)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.highWaterMarkTimestamp = try container.decodeIfPresent(Date.self, forKey: .highWaterMarkTimestamp)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.ownedByUserId = try container.decode(String.self, forKey: .ownedByUserId)
        self.providerAccountLabel = try container.decodeIfPresent(String.self, forKey: .providerAccountLabel)
        self.providerOrgId = try container.decode(String.self, forKey: .providerOrgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shippingIntegration = try container.decode(Alvys.self, forKey: .shippingIntegration)
        self.updatedAtTimestamp = try container.decode(Date.self, forKey: .updatedAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.accessTokenExpiresAtTimestamp, forKey: .accessTokenExpiresAtTimestamp)
        try container.encodeIfPresent(self.accessTokenUpdatedAtTimestamp, forKey: .accessTokenUpdatedAtTimestamp)
        try container.encodeIfPresent(self.active, forKey: .active)
        try container.encode(self.clientId, forKey: .clientId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.customerId, forKey: .customerId)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.highWaterMarkTimestamp, forKey: .highWaterMarkTimestamp)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.ownedByUserId, forKey: .ownedByUserId)
        try container.encodeIfPresent(self.providerAccountLabel, forKey: .providerAccountLabel)
        try container.encode(self.providerOrgId, forKey: .providerOrgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.shippingIntegration, forKey: .shippingIntegration)
        try container.encode(self.updatedAtTimestamp, forKey: .updatedAtTimestamp)
    }

    public enum Alvys: String, Codable, Hashable, CaseIterable, Sendable {
        case alvys
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case accessTokenExpiresAtTimestamp = "access_token_expires_at_timestamp"
        case accessTokenUpdatedAtTimestamp = "access_token_updated_at_timestamp"
        case active
        case clientId = "client_id"
        case createdAtTimestamp = "created_at_timestamp"
        case customerId = "customer_id"
        case description
        case highWaterMarkTimestamp = "high_water_mark_timestamp"
        case orgId = "org_id"
        case ownedByUserId = "owned_by_user_id"
        case providerAccountLabel = "provider_account_label"
        case providerOrgId = "provider_org_id"
        case schemaVersion = "schema_version"
        case shippingIntegration = "shipping_integration"
        case updatedAtTimestamp = "updated_at_timestamp"
    }
}