import Foundation

public struct ShipperProviderConnection1: Codable, Hashable, Sendable {
    public let id: String
    public let connected: Bool?
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String
    public let schemaVersion: Int
    public let shipperCustomerIdForCoordinatorStripeConnectAccount: String?
    /// Must be a string starting with `org_`
    public let shipperOrgId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        connected: Bool? = nil,
        coordinatorOrgId: String,
        schemaVersion: Int,
        shipperCustomerIdForCoordinatorStripeConnectAccount: String? = nil,
        shipperOrgId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.connected = connected
        self.coordinatorOrgId = coordinatorOrgId
        self.schemaVersion = schemaVersion
        self.shipperCustomerIdForCoordinatorStripeConnectAccount = shipperCustomerIdForCoordinatorStripeConnectAccount
        self.shipperOrgId = shipperOrgId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.connected = try container.decodeIfPresent(Bool.self, forKey: .connected)
        self.coordinatorOrgId = try container.decode(String.self, forKey: .coordinatorOrgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperCustomerIdForCoordinatorStripeConnectAccount = try container.decodeIfPresent(String.self, forKey: .shipperCustomerIdForCoordinatorStripeConnectAccount)
        self.shipperOrgId = try container.decode(String.self, forKey: .shipperOrgId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.connected, forKey: .connected)
        try container.encode(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shipperCustomerIdForCoordinatorStripeConnectAccount, forKey: .shipperCustomerIdForCoordinatorStripeConnectAccount)
        try container.encode(self.shipperOrgId, forKey: .shipperOrgId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case connected
        case coordinatorOrgId = "coordinator_org_id"
        case schemaVersion = "schema_version"
        case shipperCustomerIdForCoordinatorStripeConnectAccount = "shipper_customer_id_for_coordinator_stripe_connect_account"
        case shipperOrgId = "shipper_org_id"
    }
}