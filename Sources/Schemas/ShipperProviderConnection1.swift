import Foundation

public struct ShipperProviderConnection1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    /// Must be a string starting with `org_`
    public let shipperOrgId: String
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String
    public let connected: Bool?
    public let shipperCustomerIdForCoordinatorStripeConnectAccount: String?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        shipperOrgId: String,
        coordinatorOrgId: String,
        connected: Bool? = nil,
        shipperCustomerIdForCoordinatorStripeConnectAccount: String? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.shipperOrgId = shipperOrgId
        self.coordinatorOrgId = coordinatorOrgId
        self.connected = connected
        self.shipperCustomerIdForCoordinatorStripeConnectAccount = shipperCustomerIdForCoordinatorStripeConnectAccount
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperOrgId = try container.decode(String.self, forKey: .shipperOrgId)
        self.coordinatorOrgId = try container.decode(String.self, forKey: .coordinatorOrgId)
        self.connected = try container.decodeIfPresent(Bool.self, forKey: .connected)
        self.shipperCustomerIdForCoordinatorStripeConnectAccount = try container.decodeIfPresent(String.self, forKey: .shipperCustomerIdForCoordinatorStripeConnectAccount)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encode(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encodeIfPresent(self.connected, forKey: .connected)
        try container.encodeIfPresent(self.shipperCustomerIdForCoordinatorStripeConnectAccount, forKey: .shipperCustomerIdForCoordinatorStripeConnectAccount)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case shipperOrgId = "shipper_org_id"
        case coordinatorOrgId = "coordinator_org_id"
        case connected
        case shipperCustomerIdForCoordinatorStripeConnectAccount = "shipper_customer_id_for_coordinator_stripe_connect_account"
        case id = "_id"
    }
}