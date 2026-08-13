import Foundation

public struct ShippingIntegrationOrder1: Codable, Hashable, Sendable {
    public let id: String
    public let destination: ShippingIntegrationOrderPlace1?
    public let firstMirroredAtTimestamp: Date
    public let integrationOrderId: String
    public let lastMirroredAtTimestamp: Date
    public let orderedAtTimestamp: Date?
    /// Must be a string starting with `org_`
    public let orgId: String
    public let origin: ShippingIntegrationOrderPlace1?
    /// Must be a string starting with `org_`
    public let providerOrgId: String
    public let providerStatusRaw: String?
    public let referenceNumbers: [String]?
    public let schemaVersion: Int
    public let shippingIntegration: OrgShippingIntegrationEnum1
    public let sourceProviderPayloadHash: String
    public let status: ShippingIntegrationOrderStatusEnum1
    public let stopCount: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        destination: ShippingIntegrationOrderPlace1? = nil,
        firstMirroredAtTimestamp: Date,
        integrationOrderId: String,
        lastMirroredAtTimestamp: Date,
        orderedAtTimestamp: Date? = nil,
        orgId: String,
        origin: ShippingIntegrationOrderPlace1? = nil,
        providerOrgId: String,
        providerStatusRaw: String? = nil,
        referenceNumbers: [String]? = nil,
        schemaVersion: Int,
        shippingIntegration: OrgShippingIntegrationEnum1,
        sourceProviderPayloadHash: String,
        status: ShippingIntegrationOrderStatusEnum1,
        stopCount: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.destination = destination
        self.firstMirroredAtTimestamp = firstMirroredAtTimestamp
        self.integrationOrderId = integrationOrderId
        self.lastMirroredAtTimestamp = lastMirroredAtTimestamp
        self.orderedAtTimestamp = orderedAtTimestamp
        self.orgId = orgId
        self.origin = origin
        self.providerOrgId = providerOrgId
        self.providerStatusRaw = providerStatusRaw
        self.referenceNumbers = referenceNumbers
        self.schemaVersion = schemaVersion
        self.shippingIntegration = shippingIntegration
        self.sourceProviderPayloadHash = sourceProviderPayloadHash
        self.status = status
        self.stopCount = stopCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.destination = try container.decodeIfPresent(ShippingIntegrationOrderPlace1.self, forKey: .destination)
        self.firstMirroredAtTimestamp = try container.decode(Date.self, forKey: .firstMirroredAtTimestamp)
        self.integrationOrderId = try container.decode(String.self, forKey: .integrationOrderId)
        self.lastMirroredAtTimestamp = try container.decode(Date.self, forKey: .lastMirroredAtTimestamp)
        self.orderedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .orderedAtTimestamp)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.origin = try container.decodeIfPresent(ShippingIntegrationOrderPlace1.self, forKey: .origin)
        self.providerOrgId = try container.decode(String.self, forKey: .providerOrgId)
        self.providerStatusRaw = try container.decodeIfPresent(String.self, forKey: .providerStatusRaw)
        self.referenceNumbers = try container.decodeIfPresent([String].self, forKey: .referenceNumbers)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shippingIntegration = try container.decode(OrgShippingIntegrationEnum1.self, forKey: .shippingIntegration)
        self.sourceProviderPayloadHash = try container.decode(String.self, forKey: .sourceProviderPayloadHash)
        self.status = try container.decode(ShippingIntegrationOrderStatusEnum1.self, forKey: .status)
        self.stopCount = try container.decodeIfPresent(Int.self, forKey: .stopCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.destination, forKey: .destination)
        try container.encode(self.firstMirroredAtTimestamp, forKey: .firstMirroredAtTimestamp)
        try container.encode(self.integrationOrderId, forKey: .integrationOrderId)
        try container.encode(self.lastMirroredAtTimestamp, forKey: .lastMirroredAtTimestamp)
        try container.encodeIfPresent(self.orderedAtTimestamp, forKey: .orderedAtTimestamp)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.origin, forKey: .origin)
        try container.encode(self.providerOrgId, forKey: .providerOrgId)
        try container.encodeIfPresent(self.providerStatusRaw, forKey: .providerStatusRaw)
        try container.encodeIfPresent(self.referenceNumbers, forKey: .referenceNumbers)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.shippingIntegration, forKey: .shippingIntegration)
        try container.encode(self.sourceProviderPayloadHash, forKey: .sourceProviderPayloadHash)
        try container.encode(self.status, forKey: .status)
        try container.encodeIfPresent(self.stopCount, forKey: .stopCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case destination
        case firstMirroredAtTimestamp = "first_mirrored_at_timestamp"
        case integrationOrderId = "integration_order_id"
        case lastMirroredAtTimestamp = "last_mirrored_at_timestamp"
        case orderedAtTimestamp = "ordered_at_timestamp"
        case orgId = "org_id"
        case origin
        case providerOrgId = "provider_org_id"
        case providerStatusRaw = "provider_status_raw"
        case referenceNumbers = "reference_numbers"
        case schemaVersion = "schema_version"
        case shippingIntegration = "shipping_integration"
        case sourceProviderPayloadHash = "source_provider_payload_hash"
        case status
        case stopCount = "stop_count"
    }
}