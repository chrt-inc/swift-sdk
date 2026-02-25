import Foundation

public struct ShipperCourierConnection1: Codable, Hashable, Sendable {
    public let id: String
    public let connected: Bool?
    /// Must be a string starting with `org_`
    public let courierOrgId: String
    public let defaultRateSheetOnDemand: String?
    public let defaultRateSheetRouted: String?
    public let schemaVersion: Int
    public let shipperCustomerIdForCourierStripeConnectAccount: String?
    /// Must be a string starting with `org_`
    public let shipperOrgId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        connected: Bool? = nil,
        courierOrgId: String,
        defaultRateSheetOnDemand: String? = nil,
        defaultRateSheetRouted: String? = nil,
        schemaVersion: Int,
        shipperCustomerIdForCourierStripeConnectAccount: String? = nil,
        shipperOrgId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.connected = connected
        self.courierOrgId = courierOrgId
        self.defaultRateSheetOnDemand = defaultRateSheetOnDemand
        self.defaultRateSheetRouted = defaultRateSheetRouted
        self.schemaVersion = schemaVersion
        self.shipperCustomerIdForCourierStripeConnectAccount = shipperCustomerIdForCourierStripeConnectAccount
        self.shipperOrgId = shipperOrgId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.connected = try container.decodeIfPresent(Bool.self, forKey: .connected)
        self.courierOrgId = try container.decode(String.self, forKey: .courierOrgId)
        self.defaultRateSheetOnDemand = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetOnDemand)
        self.defaultRateSheetRouted = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetRouted)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperCustomerIdForCourierStripeConnectAccount = try container.decodeIfPresent(String.self, forKey: .shipperCustomerIdForCourierStripeConnectAccount)
        self.shipperOrgId = try container.decode(String.self, forKey: .shipperOrgId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.connected, forKey: .connected)
        try container.encode(self.courierOrgId, forKey: .courierOrgId)
        try container.encodeIfPresent(self.defaultRateSheetOnDemand, forKey: .defaultRateSheetOnDemand)
        try container.encodeIfPresent(self.defaultRateSheetRouted, forKey: .defaultRateSheetRouted)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shipperCustomerIdForCourierStripeConnectAccount, forKey: .shipperCustomerIdForCourierStripeConnectAccount)
        try container.encode(self.shipperOrgId, forKey: .shipperOrgId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case connected
        case courierOrgId = "courier_org_id"
        case defaultRateSheetOnDemand = "default_rate_sheet__on_demand"
        case defaultRateSheetRouted = "default_rate_sheet__routed"
        case schemaVersion = "schema_version"
        case shipperCustomerIdForCourierStripeConnectAccount = "shipper_customer_id_for_courier_stripe_connect_account"
        case shipperOrgId = "shipper_org_id"
    }
}