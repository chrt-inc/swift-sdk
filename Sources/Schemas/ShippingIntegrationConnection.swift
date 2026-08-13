import Foundation

/// One org's credentialed link to one provider on one integration.
///
/// Deliberately carries no secrets: the per-integration credential shapes differ
/// (username/password versus API key), and none of those fields belong in a
/// cross-integration listing.
public struct ShippingIntegrationConnection: Codable, Hashable, Sendable {
    public let active: Bool
    public let createdAtTimestamp: Date
    public let lastMirroredAtTimestamp: Date?
    public let orderCount: Int?
    /// Must be a string starting with `user_`
    public let ownedByUserId: String
    /// Must be a string starting with `org_`
    public let providerOrgId: String
    public let providerOrgName: String?
    public let shippingIntegration: OrgShippingIntegrationEnum1
    public let updatedAtTimestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        active: Bool,
        createdAtTimestamp: Date,
        lastMirroredAtTimestamp: Date? = nil,
        orderCount: Int? = nil,
        ownedByUserId: String,
        providerOrgId: String,
        providerOrgName: String? = nil,
        shippingIntegration: OrgShippingIntegrationEnum1,
        updatedAtTimestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.active = active
        self.createdAtTimestamp = createdAtTimestamp
        self.lastMirroredAtTimestamp = lastMirroredAtTimestamp
        self.orderCount = orderCount
        self.ownedByUserId = ownedByUserId
        self.providerOrgId = providerOrgId
        self.providerOrgName = providerOrgName
        self.shippingIntegration = shippingIntegration
        self.updatedAtTimestamp = updatedAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.active = try container.decode(Bool.self, forKey: .active)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.lastMirroredAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .lastMirroredAtTimestamp)
        self.orderCount = try container.decodeIfPresent(Int.self, forKey: .orderCount)
        self.ownedByUserId = try container.decode(String.self, forKey: .ownedByUserId)
        self.providerOrgId = try container.decode(String.self, forKey: .providerOrgId)
        self.providerOrgName = try container.decodeIfPresent(String.self, forKey: .providerOrgName)
        self.shippingIntegration = try container.decode(OrgShippingIntegrationEnum1.self, forKey: .shippingIntegration)
        self.updatedAtTimestamp = try container.decode(Date.self, forKey: .updatedAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.active, forKey: .active)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encodeIfPresent(self.lastMirroredAtTimestamp, forKey: .lastMirroredAtTimestamp)
        try container.encodeIfPresent(self.orderCount, forKey: .orderCount)
        try container.encode(self.ownedByUserId, forKey: .ownedByUserId)
        try container.encode(self.providerOrgId, forKey: .providerOrgId)
        try container.encodeIfPresent(self.providerOrgName, forKey: .providerOrgName)
        try container.encode(self.shippingIntegration, forKey: .shippingIntegration)
        try container.encode(self.updatedAtTimestamp, forKey: .updatedAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case active
        case createdAtTimestamp = "created_at_timestamp"
        case lastMirroredAtTimestamp = "last_mirrored_at_timestamp"
        case orderCount = "order_count"
        case ownedByUserId = "owned_by_user_id"
        case providerOrgId = "provider_org_id"
        case providerOrgName = "provider_org_name"
        case shippingIntegration = "shipping_integration"
        case updatedAtTimestamp = "updated_at_timestamp"
    }
}