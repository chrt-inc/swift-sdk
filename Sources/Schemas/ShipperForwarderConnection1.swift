import Foundation

public struct ShipperForwarderConnection1: Codable, Hashable, Sendable {
    public let id: String
    public let connected: Bool?
    public let defaultRateSheetOnDemand: String?
    public let defaultRateSheetRouted: String?
    /// Must be a string starting with `org_`
    public let forwarderOrgId: String
    public let schemaVersion: Int
    public let shipperCustomerIdForForwarderStripeConnectAccount: String?
    /// Must be a string starting with `org_`
    public let shipperOrgId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        connected: Bool? = nil,
        defaultRateSheetOnDemand: String? = nil,
        defaultRateSheetRouted: String? = nil,
        forwarderOrgId: String,
        schemaVersion: Int,
        shipperCustomerIdForForwarderStripeConnectAccount: String? = nil,
        shipperOrgId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.connected = connected
        self.defaultRateSheetOnDemand = defaultRateSheetOnDemand
        self.defaultRateSheetRouted = defaultRateSheetRouted
        self.forwarderOrgId = forwarderOrgId
        self.schemaVersion = schemaVersion
        self.shipperCustomerIdForForwarderStripeConnectAccount = shipperCustomerIdForForwarderStripeConnectAccount
        self.shipperOrgId = shipperOrgId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.connected = try container.decodeIfPresent(Bool.self, forKey: .connected)
        self.defaultRateSheetOnDemand = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetOnDemand)
        self.defaultRateSheetRouted = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetRouted)
        self.forwarderOrgId = try container.decode(String.self, forKey: .forwarderOrgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperCustomerIdForForwarderStripeConnectAccount = try container.decodeIfPresent(String.self, forKey: .shipperCustomerIdForForwarderStripeConnectAccount)
        self.shipperOrgId = try container.decode(String.self, forKey: .shipperOrgId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.connected, forKey: .connected)
        try container.encodeIfPresent(self.defaultRateSheetOnDemand, forKey: .defaultRateSheetOnDemand)
        try container.encodeIfPresent(self.defaultRateSheetRouted, forKey: .defaultRateSheetRouted)
        try container.encode(self.forwarderOrgId, forKey: .forwarderOrgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shipperCustomerIdForForwarderStripeConnectAccount, forKey: .shipperCustomerIdForForwarderStripeConnectAccount)
        try container.encode(self.shipperOrgId, forKey: .shipperOrgId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case connected
        case defaultRateSheetOnDemand = "default_rate_sheet__on_demand"
        case defaultRateSheetRouted = "default_rate_sheet__routed"
        case forwarderOrgId = "forwarder_org_id"
        case schemaVersion = "schema_version"
        case shipperCustomerIdForForwarderStripeConnectAccount = "shipper_customer_id_for_forwarder_stripe_connect_account"
        case shipperOrgId = "shipper_org_id"
    }
}