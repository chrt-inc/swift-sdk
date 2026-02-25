import Foundation

public struct ForwarderCourierConnection1: Codable, Hashable, Sendable {
    public let id: String
    public let connected: Bool?
    /// Must be a string starting with `org_`
    public let courierOrgId: String
    public let defaultRateSheetOnDemand: String?
    public let defaultRateSheetRouted: String?
    public let forwarderCustomerIdForCourierStripeConnectAccount: String?
    /// Must be a string starting with `org_`
    public let forwarderOrgId: String
    public let schemaVersion: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        connected: Bool? = nil,
        courierOrgId: String,
        defaultRateSheetOnDemand: String? = nil,
        defaultRateSheetRouted: String? = nil,
        forwarderCustomerIdForCourierStripeConnectAccount: String? = nil,
        forwarderOrgId: String,
        schemaVersion: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.connected = connected
        self.courierOrgId = courierOrgId
        self.defaultRateSheetOnDemand = defaultRateSheetOnDemand
        self.defaultRateSheetRouted = defaultRateSheetRouted
        self.forwarderCustomerIdForCourierStripeConnectAccount = forwarderCustomerIdForCourierStripeConnectAccount
        self.forwarderOrgId = forwarderOrgId
        self.schemaVersion = schemaVersion
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.connected = try container.decodeIfPresent(Bool.self, forKey: .connected)
        self.courierOrgId = try container.decode(String.self, forKey: .courierOrgId)
        self.defaultRateSheetOnDemand = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetOnDemand)
        self.defaultRateSheetRouted = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetRouted)
        self.forwarderCustomerIdForCourierStripeConnectAccount = try container.decodeIfPresent(String.self, forKey: .forwarderCustomerIdForCourierStripeConnectAccount)
        self.forwarderOrgId = try container.decode(String.self, forKey: .forwarderOrgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
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
        try container.encodeIfPresent(self.forwarderCustomerIdForCourierStripeConnectAccount, forKey: .forwarderCustomerIdForCourierStripeConnectAccount)
        try container.encode(self.forwarderOrgId, forKey: .forwarderOrgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case connected
        case courierOrgId = "courier_org_id"
        case defaultRateSheetOnDemand = "default_rate_sheet__on_demand"
        case defaultRateSheetRouted = "default_rate_sheet__routed"
        case forwarderCustomerIdForCourierStripeConnectAccount = "forwarder_customer_id_for_courier_stripe_connect_account"
        case forwarderOrgId = "forwarder_org_id"
        case schemaVersion = "schema_version"
    }
}