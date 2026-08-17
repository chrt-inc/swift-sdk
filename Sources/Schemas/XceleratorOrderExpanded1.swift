import Foundation

public struct XceleratorOrderExpanded1: Codable, Hashable, Sendable {
    public let id: String
    public let createdAtTimestamp: Date
    public let integrationOrderId: String
    public let mirroredAtTimestamp: Date
    /// Must be a string starting with `org_`
    public let orgId: String
    public let providerOrg: OrgPublicData1?
    /// Must be a string starting with `org_`
    public let providerOrgId: String
    public let providerPayload: XceleratorOrderResponse1
    public let providerPayloadHash: String
    public let schemaVersion: Int
    public let shippingIntegration: Xcelerator
    public let updatedAtTimestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        createdAtTimestamp: Date,
        integrationOrderId: String,
        mirroredAtTimestamp: Date,
        orgId: String,
        providerOrg: OrgPublicData1? = nil,
        providerOrgId: String,
        providerPayload: XceleratorOrderResponse1,
        providerPayloadHash: String,
        schemaVersion: Int,
        shippingIntegration: Xcelerator,
        updatedAtTimestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.createdAtTimestamp = createdAtTimestamp
        self.integrationOrderId = integrationOrderId
        self.mirroredAtTimestamp = mirroredAtTimestamp
        self.orgId = orgId
        self.providerOrg = providerOrg
        self.providerOrgId = providerOrgId
        self.providerPayload = providerPayload
        self.providerPayloadHash = providerPayloadHash
        self.schemaVersion = schemaVersion
        self.shippingIntegration = shippingIntegration
        self.updatedAtTimestamp = updatedAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.integrationOrderId = try container.decode(String.self, forKey: .integrationOrderId)
        self.mirroredAtTimestamp = try container.decode(Date.self, forKey: .mirroredAtTimestamp)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.providerOrg = try container.decodeIfPresent(OrgPublicData1.self, forKey: .providerOrg)
        self.providerOrgId = try container.decode(String.self, forKey: .providerOrgId)
        self.providerPayload = try container.decode(XceleratorOrderResponse1.self, forKey: .providerPayload)
        self.providerPayloadHash = try container.decode(String.self, forKey: .providerPayloadHash)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shippingIntegration = try container.decode(Xcelerator.self, forKey: .shippingIntegration)
        self.updatedAtTimestamp = try container.decode(Date.self, forKey: .updatedAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.integrationOrderId, forKey: .integrationOrderId)
        try container.encode(self.mirroredAtTimestamp, forKey: .mirroredAtTimestamp)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.providerOrg, forKey: .providerOrg)
        try container.encode(self.providerOrgId, forKey: .providerOrgId)
        try container.encode(self.providerPayload, forKey: .providerPayload)
        try container.encode(self.providerPayloadHash, forKey: .providerPayloadHash)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.shippingIntegration, forKey: .shippingIntegration)
        try container.encode(self.updatedAtTimestamp, forKey: .updatedAtTimestamp)
    }

    public enum Xcelerator: String, Codable, Hashable, CaseIterable, Sendable {
        case xcelerator
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case createdAtTimestamp = "created_at_timestamp"
        case integrationOrderId = "integration_order_id"
        case mirroredAtTimestamp = "mirrored_at_timestamp"
        case orgId = "org_id"
        case providerOrg = "provider_org"
        case providerOrgId = "provider_org_id"
        case providerPayload = "provider_payload"
        case providerPayloadHash = "provider_payload_hash"
        case schemaVersion = "schema_version"
        case shippingIntegration = "shipping_integration"
        case updatedAtTimestamp = "updated_at_timestamp"
    }
}