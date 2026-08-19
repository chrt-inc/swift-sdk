import Foundation

public struct ShippingIntegrationOrderStatusChangedWebhookPayload: Codable, Hashable, Sendable {
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    /// The order status event that occurred
    public let eventType: ShippingIntegrationOrderStatusChangedWebhookPayloadEventType
    /// The provider's order ID in their TMS
    public let integrationOrderId: String
    /// The order's new status derived from the current sync
    public let newStatus: ShippingIntegrationOrderStatusEnum1
    /// The order's previous status before this sync
    public let previousStatus: ShippingIntegrationOrderStatusEnum1?
    /// The courier provider organization ID
    public let providerOrgId: String
    /// Associated reference numbers on the order
    public let referenceNumbers: [String]?
    /// The TMS shipping integration platform
    public let shippingIntegration: OrgShippingIntegrationEnum1
    /// The unified shipping integration order ID
    public let shippingIntegrationOrderId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventTimestamp: Date,
        eventType: ShippingIntegrationOrderStatusChangedWebhookPayloadEventType,
        integrationOrderId: String,
        newStatus: ShippingIntegrationOrderStatusEnum1,
        previousStatus: ShippingIntegrationOrderStatusEnum1? = nil,
        providerOrgId: String,
        referenceNumbers: [String]? = nil,
        shippingIntegration: OrgShippingIntegrationEnum1,
        shippingIntegrationOrderId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.integrationOrderId = integrationOrderId
        self.newStatus = newStatus
        self.previousStatus = previousStatus
        self.providerOrgId = providerOrgId
        self.referenceNumbers = referenceNumbers
        self.shippingIntegration = shippingIntegration
        self.shippingIntegrationOrderId = shippingIntegrationOrderId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decode(ShippingIntegrationOrderStatusChangedWebhookPayloadEventType.self, forKey: .eventType)
        self.integrationOrderId = try container.decode(String.self, forKey: .integrationOrderId)
        self.newStatus = try container.decode(ShippingIntegrationOrderStatusEnum1.self, forKey: .newStatus)
        self.previousStatus = try container.decodeIfPresent(ShippingIntegrationOrderStatusEnum1.self, forKey: .previousStatus)
        self.providerOrgId = try container.decode(String.self, forKey: .providerOrgId)
        self.referenceNumbers = try container.decodeIfPresent([String].self, forKey: .referenceNumbers)
        self.shippingIntegration = try container.decode(OrgShippingIntegrationEnum1.self, forKey: .shippingIntegration)
        self.shippingIntegrationOrderId = try container.decode(String.self, forKey: .shippingIntegrationOrderId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encode(self.eventType, forKey: .eventType)
        try container.encode(self.integrationOrderId, forKey: .integrationOrderId)
        try container.encode(self.newStatus, forKey: .newStatus)
        try container.encodeIfPresent(self.previousStatus, forKey: .previousStatus)
        try container.encode(self.providerOrgId, forKey: .providerOrgId)
        try container.encodeIfPresent(self.referenceNumbers, forKey: .referenceNumbers)
        try container.encode(self.shippingIntegration, forKey: .shippingIntegration)
        try container.encode(self.shippingIntegrationOrderId, forKey: .shippingIntegrationOrderId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case integrationOrderId = "integration_order_id"
        case newStatus = "new_status"
        case previousStatus = "previous_status"
        case providerOrgId = "provider_org_id"
        case referenceNumbers = "reference_numbers"
        case shippingIntegration = "shipping_integration"
        case shippingIntegrationOrderId = "shipping_integration_order_id"
    }
}