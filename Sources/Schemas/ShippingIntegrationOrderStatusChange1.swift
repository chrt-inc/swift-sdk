import Foundation

public struct ShippingIntegrationOrderStatusChange1: Codable, Hashable, Sendable {
    public let integrationOrderId: String
    public let newStatus: ShippingIntegrationOrderStatusEnum1
    /// Must be a string starting with `org_`
    public let orgId: String
    public let previousStatus: ShippingIntegrationOrderStatusEnum1?
    /// Must be a string starting with `org_`
    public let providerOrgId: String
    public let referenceNumbers: [String]?
    public let shippingIntegration: OrgShippingIntegrationEnum1
    public let shippingIntegrationOrderId: String
    public let timestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        integrationOrderId: String,
        newStatus: ShippingIntegrationOrderStatusEnum1,
        orgId: String,
        previousStatus: ShippingIntegrationOrderStatusEnum1? = nil,
        providerOrgId: String,
        referenceNumbers: [String]? = nil,
        shippingIntegration: OrgShippingIntegrationEnum1,
        shippingIntegrationOrderId: String,
        timestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.integrationOrderId = integrationOrderId
        self.newStatus = newStatus
        self.orgId = orgId
        self.previousStatus = previousStatus
        self.providerOrgId = providerOrgId
        self.referenceNumbers = referenceNumbers
        self.shippingIntegration = shippingIntegration
        self.shippingIntegrationOrderId = shippingIntegrationOrderId
        self.timestamp = timestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.integrationOrderId = try container.decode(String.self, forKey: .integrationOrderId)
        self.newStatus = try container.decode(ShippingIntegrationOrderStatusEnum1.self, forKey: .newStatus)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.previousStatus = try container.decodeIfPresent(ShippingIntegrationOrderStatusEnum1.self, forKey: .previousStatus)
        self.providerOrgId = try container.decode(String.self, forKey: .providerOrgId)
        self.referenceNumbers = try container.decodeIfPresent([String].self, forKey: .referenceNumbers)
        self.shippingIntegration = try container.decode(OrgShippingIntegrationEnum1.self, forKey: .shippingIntegration)
        self.shippingIntegrationOrderId = try container.decode(String.self, forKey: .shippingIntegrationOrderId)
        self.timestamp = try container.decode(Date.self, forKey: .timestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.integrationOrderId, forKey: .integrationOrderId)
        try container.encode(self.newStatus, forKey: .newStatus)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.previousStatus, forKey: .previousStatus)
        try container.encode(self.providerOrgId, forKey: .providerOrgId)
        try container.encodeIfPresent(self.referenceNumbers, forKey: .referenceNumbers)
        try container.encode(self.shippingIntegration, forKey: .shippingIntegration)
        try container.encode(self.shippingIntegrationOrderId, forKey: .shippingIntegrationOrderId)
        try container.encode(self.timestamp, forKey: .timestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case integrationOrderId = "integration_order_id"
        case newStatus = "new_status"
        case orgId = "org_id"
        case previousStatus = "previous_status"
        case providerOrgId = "provider_org_id"
        case referenceNumbers = "reference_numbers"
        case shippingIntegration = "shipping_integration"
        case shippingIntegrationOrderId = "shipping_integration_order_id"
        case timestamp
    }
}