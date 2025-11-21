import Foundation

public struct ShipperForwarderConnection1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    /// Must be a string starting with `org_`
    public let shipperOrgId: String
    /// Must be a string starting with `org_`
    public let forwarderOrgId: String
    public let connected: Bool?
    public let shipperCustomerIdForForwarderStripeConnectAccount: String?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        shipperOrgId: String,
        forwarderOrgId: String,
        connected: Bool? = nil,
        shipperCustomerIdForForwarderStripeConnectAccount: String? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.shipperOrgId = shipperOrgId
        self.forwarderOrgId = forwarderOrgId
        self.connected = connected
        self.shipperCustomerIdForForwarderStripeConnectAccount = shipperCustomerIdForForwarderStripeConnectAccount
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperOrgId = try container.decode(String.self, forKey: .shipperOrgId)
        self.forwarderOrgId = try container.decode(String.self, forKey: .forwarderOrgId)
        self.connected = try container.decodeIfPresent(Bool.self, forKey: .connected)
        self.shipperCustomerIdForForwarderStripeConnectAccount = try container.decodeIfPresent(String.self, forKey: .shipperCustomerIdForForwarderStripeConnectAccount)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encode(self.forwarderOrgId, forKey: .forwarderOrgId)
        try container.encodeIfPresent(self.connected, forKey: .connected)
        try container.encodeIfPresent(self.shipperCustomerIdForForwarderStripeConnectAccount, forKey: .shipperCustomerIdForForwarderStripeConnectAccount)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case shipperOrgId = "shipper_org_id"
        case forwarderOrgId = "forwarder_org_id"
        case connected
        case shipperCustomerIdForForwarderStripeConnectAccount = "shipper_customer_id_for_forwarder_stripe_connect_account"
        case id = "_id"
    }
}