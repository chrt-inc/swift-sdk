import Foundation

public struct ForwarderCourierConnection1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    /// Must be a string starting with `org_`
    public let forwarderOrgId: String
    /// Must be a string starting with `org_`
    public let courierOrgId: String
    public let connected: Bool?
    public let forwarderCustomerIdForCourierStripeConnectAccount: String?
    public let defaultRateSheetRouted: String?
    public let defaultRateSheetOnDemand: String?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        forwarderOrgId: String,
        courierOrgId: String,
        connected: Bool? = nil,
        forwarderCustomerIdForCourierStripeConnectAccount: String? = nil,
        defaultRateSheetRouted: String? = nil,
        defaultRateSheetOnDemand: String? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.forwarderOrgId = forwarderOrgId
        self.courierOrgId = courierOrgId
        self.connected = connected
        self.forwarderCustomerIdForCourierStripeConnectAccount = forwarderCustomerIdForCourierStripeConnectAccount
        self.defaultRateSheetRouted = defaultRateSheetRouted
        self.defaultRateSheetOnDemand = defaultRateSheetOnDemand
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.forwarderOrgId = try container.decode(String.self, forKey: .forwarderOrgId)
        self.courierOrgId = try container.decode(String.self, forKey: .courierOrgId)
        self.connected = try container.decodeIfPresent(Bool.self, forKey: .connected)
        self.forwarderCustomerIdForCourierStripeConnectAccount = try container.decodeIfPresent(String.self, forKey: .forwarderCustomerIdForCourierStripeConnectAccount)
        self.defaultRateSheetRouted = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetRouted)
        self.defaultRateSheetOnDemand = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetOnDemand)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.forwarderOrgId, forKey: .forwarderOrgId)
        try container.encode(self.courierOrgId, forKey: .courierOrgId)
        try container.encodeIfPresent(self.connected, forKey: .connected)
        try container.encodeIfPresent(self.forwarderCustomerIdForCourierStripeConnectAccount, forKey: .forwarderCustomerIdForCourierStripeConnectAccount)
        try container.encodeIfPresent(self.defaultRateSheetRouted, forKey: .defaultRateSheetRouted)
        try container.encodeIfPresent(self.defaultRateSheetOnDemand, forKey: .defaultRateSheetOnDemand)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case forwarderOrgId = "forwarder_org_id"
        case courierOrgId = "courier_org_id"
        case connected
        case forwarderCustomerIdForCourierStripeConnectAccount = "forwarder_customer_id_for_courier_stripe_connect_account"
        case defaultRateSheetRouted = "default_rate_sheet__routed"
        case defaultRateSheetOnDemand = "default_rate_sheet__on_demand"
        case id = "_id"
    }
}