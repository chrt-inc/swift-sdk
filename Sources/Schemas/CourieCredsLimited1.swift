import Foundation

/// The only shape of a Courie credential a user is ever allowed to receive.
public struct CourieCredsLimited1: Codable, Hashable, Sendable {
    public let id: String
    public let active: Bool?
    public let courierId: String
    public let createdAtTimestamp: Date
    public let customerIds: [String]?
    public let highWaterMarkTimestamp: Date?
    public let notes: String?
    /// Must be a string starting with `org_`
    public let orgId: String
    /// Must be a string starting with `user_`
    public let ownedByUserId: String
    /// Must be a string starting with `org_`
    public let providerOrgId: String
    public let schemaVersion: Int
    public let shippingIntegration: Courie
    public let updatedAtTimestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        active: Bool? = nil,
        courierId: String,
        createdAtTimestamp: Date,
        customerIds: [String]? = nil,
        highWaterMarkTimestamp: Date? = nil,
        notes: String? = nil,
        orgId: String,
        ownedByUserId: String,
        providerOrgId: String,
        schemaVersion: Int,
        shippingIntegration: Courie,
        updatedAtTimestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.active = active
        self.courierId = courierId
        self.createdAtTimestamp = createdAtTimestamp
        self.customerIds = customerIds
        self.highWaterMarkTimestamp = highWaterMarkTimestamp
        self.notes = notes
        self.orgId = orgId
        self.ownedByUserId = ownedByUserId
        self.providerOrgId = providerOrgId
        self.schemaVersion = schemaVersion
        self.shippingIntegration = shippingIntegration
        self.updatedAtTimestamp = updatedAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.active = try container.decodeIfPresent(Bool.self, forKey: .active)
        self.courierId = try container.decode(String.self, forKey: .courierId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.customerIds = try container.decodeIfPresent([String].self, forKey: .customerIds)
        self.highWaterMarkTimestamp = try container.decodeIfPresent(Date.self, forKey: .highWaterMarkTimestamp)
        self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.ownedByUserId = try container.decode(String.self, forKey: .ownedByUserId)
        self.providerOrgId = try container.decode(String.self, forKey: .providerOrgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shippingIntegration = try container.decode(Courie.self, forKey: .shippingIntegration)
        self.updatedAtTimestamp = try container.decode(Date.self, forKey: .updatedAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.active, forKey: .active)
        try container.encode(self.courierId, forKey: .courierId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encodeIfPresent(self.customerIds, forKey: .customerIds)
        try container.encodeIfPresent(self.highWaterMarkTimestamp, forKey: .highWaterMarkTimestamp)
        try container.encodeIfPresent(self.notes, forKey: .notes)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.ownedByUserId, forKey: .ownedByUserId)
        try container.encode(self.providerOrgId, forKey: .providerOrgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.shippingIntegration, forKey: .shippingIntegration)
        try container.encode(self.updatedAtTimestamp, forKey: .updatedAtTimestamp)
    }

    public enum Courie: String, Codable, Hashable, CaseIterable, Sendable {
        case courie
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case active
        case courierId = "courier_id"
        case createdAtTimestamp = "created_at_timestamp"
        case customerIds = "customer_ids"
        case highWaterMarkTimestamp = "high_water_mark_timestamp"
        case notes
        case orgId = "org_id"
        case ownedByUserId = "owned_by_user_id"
        case providerOrgId = "provider_org_id"
        case schemaVersion = "schema_version"
        case shippingIntegration = "shipping_integration"
        case updatedAtTimestamp = "updated_at_timestamp"
    }
}