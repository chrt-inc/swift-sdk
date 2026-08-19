import Foundation

public struct ShippingIntegrationOrderStatusChangedReq: Codable, Hashable, Sendable {
    /// Must be a string starting with `org_`
    public let orgId: String
    /// Must be a string starting with `org_`
    public let providerOrgId: String
    public let shippingIntegration: OrgShippingIntegrationEnum1
    public let statusChanges: [ShippingIntegrationOrderStatusChange1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orgId: String,
        providerOrgId: String,
        shippingIntegration: OrgShippingIntegrationEnum1,
        statusChanges: [ShippingIntegrationOrderStatusChange1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orgId = orgId
        self.providerOrgId = providerOrgId
        self.shippingIntegration = shippingIntegration
        self.statusChanges = statusChanges
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.providerOrgId = try container.decode(String.self, forKey: .providerOrgId)
        self.shippingIntegration = try container.decode(OrgShippingIntegrationEnum1.self, forKey: .shippingIntegration)
        self.statusChanges = try container.decodeIfPresent([ShippingIntegrationOrderStatusChange1].self, forKey: .statusChanges)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.providerOrgId, forKey: .providerOrgId)
        try container.encode(self.shippingIntegration, forKey: .shippingIntegration)
        try container.encodeIfPresent(self.statusChanges, forKey: .statusChanges)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orgId = "org_id"
        case providerOrgId = "provider_org_id"
        case shippingIntegration = "shipping_integration"
        case statusChanges = "status_changes"
    }
}