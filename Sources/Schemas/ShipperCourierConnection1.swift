import Foundation

public struct ShipperCourierConnection1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    /// Must be a string starting with `org_`
    public let shipperOrgId: String
    /// Must be a string starting with `org_`
    public let courierOrgId: String
    public let connected: Bool?
    public let shipperCustomerIdForCourierStripeConnectAccount: String?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        shipperOrgId: String,
        courierOrgId: String,
        connected: Bool? = nil,
        shipperCustomerIdForCourierStripeConnectAccount: String? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.shipperOrgId = shipperOrgId
        self.courierOrgId = courierOrgId
        self.connected = connected
        self.shipperCustomerIdForCourierStripeConnectAccount = shipperCustomerIdForCourierStripeConnectAccount
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperOrgId = try container.decode(String.self, forKey: .shipperOrgId)
        self.courierOrgId = try container.decode(String.self, forKey: .courierOrgId)
        self.connected = try container.decodeIfPresent(Bool.self, forKey: .connected)
        self.shipperCustomerIdForCourierStripeConnectAccount = try container.decodeIfPresent(String.self, forKey: .shipperCustomerIdForCourierStripeConnectAccount)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encode(self.courierOrgId, forKey: .courierOrgId)
        try container.encodeIfPresent(self.connected, forKey: .connected)
        try container.encodeIfPresent(self.shipperCustomerIdForCourierStripeConnectAccount, forKey: .shipperCustomerIdForCourierStripeConnectAccount)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case shipperOrgId = "shipper_org_id"
        case courierOrgId = "courier_org_id"
        case connected
        case shipperCustomerIdForCourierStripeConnectAccount = "shipper_customer_id_for_courier_stripe_connect_account"
        case id = "_id"
    }
}