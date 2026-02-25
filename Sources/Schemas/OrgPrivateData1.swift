import Foundation

public struct OrgPrivateData1: Codable, Hashable, Sendable {
    public let id: String
    public let defaultRateSheetOnDemandCourierPayDriver: String?
    public let defaultRateSheetOnDemandForwarderPayCourier: String?
    public let defaultRateSheetOnDemandShipperPayCourier: String?
    public let defaultRateSheetOnDemandShipperPayForwarder: String?
    public let defaultRateSheetRoutedCourierPayDriver: String?
    public let defaultRateSheetRoutedForwarderPayCourier: String?
    public let defaultRateSheetRoutedShipperPayCourier: String?
    public let defaultRateSheetRoutedShipperPayForwarder: String?
    /// Must be a string starting with `org_`
    public let orgId: String
    public let orgType: OrgTypeEnum
    public let schemaVersion: Int
    public let stripeConnectAccountId: String?
    public let svixAppId: String?
    public let webhookEnabled: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        defaultRateSheetOnDemandCourierPayDriver: String? = nil,
        defaultRateSheetOnDemandForwarderPayCourier: String? = nil,
        defaultRateSheetOnDemandShipperPayCourier: String? = nil,
        defaultRateSheetOnDemandShipperPayForwarder: String? = nil,
        defaultRateSheetRoutedCourierPayDriver: String? = nil,
        defaultRateSheetRoutedForwarderPayCourier: String? = nil,
        defaultRateSheetRoutedShipperPayCourier: String? = nil,
        defaultRateSheetRoutedShipperPayForwarder: String? = nil,
        orgId: String,
        orgType: OrgTypeEnum,
        schemaVersion: Int,
        stripeConnectAccountId: String? = nil,
        svixAppId: String? = nil,
        webhookEnabled: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.defaultRateSheetOnDemandCourierPayDriver = defaultRateSheetOnDemandCourierPayDriver
        self.defaultRateSheetOnDemandForwarderPayCourier = defaultRateSheetOnDemandForwarderPayCourier
        self.defaultRateSheetOnDemandShipperPayCourier = defaultRateSheetOnDemandShipperPayCourier
        self.defaultRateSheetOnDemandShipperPayForwarder = defaultRateSheetOnDemandShipperPayForwarder
        self.defaultRateSheetRoutedCourierPayDriver = defaultRateSheetRoutedCourierPayDriver
        self.defaultRateSheetRoutedForwarderPayCourier = defaultRateSheetRoutedForwarderPayCourier
        self.defaultRateSheetRoutedShipperPayCourier = defaultRateSheetRoutedShipperPayCourier
        self.defaultRateSheetRoutedShipperPayForwarder = defaultRateSheetRoutedShipperPayForwarder
        self.orgId = orgId
        self.orgType = orgType
        self.schemaVersion = schemaVersion
        self.stripeConnectAccountId = stripeConnectAccountId
        self.svixAppId = svixAppId
        self.webhookEnabled = webhookEnabled
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.defaultRateSheetOnDemandCourierPayDriver = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetOnDemandCourierPayDriver)
        self.defaultRateSheetOnDemandForwarderPayCourier = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetOnDemandForwarderPayCourier)
        self.defaultRateSheetOnDemandShipperPayCourier = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetOnDemandShipperPayCourier)
        self.defaultRateSheetOnDemandShipperPayForwarder = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetOnDemandShipperPayForwarder)
        self.defaultRateSheetRoutedCourierPayDriver = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetRoutedCourierPayDriver)
        self.defaultRateSheetRoutedForwarderPayCourier = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetRoutedForwarderPayCourier)
        self.defaultRateSheetRoutedShipperPayCourier = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetRoutedShipperPayCourier)
        self.defaultRateSheetRoutedShipperPayForwarder = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetRoutedShipperPayForwarder)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.orgType = try container.decode(OrgTypeEnum.self, forKey: .orgType)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.stripeConnectAccountId = try container.decodeIfPresent(String.self, forKey: .stripeConnectAccountId)
        self.svixAppId = try container.decodeIfPresent(String.self, forKey: .svixAppId)
        self.webhookEnabled = try container.decodeIfPresent(Bool.self, forKey: .webhookEnabled)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.defaultRateSheetOnDemandCourierPayDriver, forKey: .defaultRateSheetOnDemandCourierPayDriver)
        try container.encodeIfPresent(self.defaultRateSheetOnDemandForwarderPayCourier, forKey: .defaultRateSheetOnDemandForwarderPayCourier)
        try container.encodeIfPresent(self.defaultRateSheetOnDemandShipperPayCourier, forKey: .defaultRateSheetOnDemandShipperPayCourier)
        try container.encodeIfPresent(self.defaultRateSheetOnDemandShipperPayForwarder, forKey: .defaultRateSheetOnDemandShipperPayForwarder)
        try container.encodeIfPresent(self.defaultRateSheetRoutedCourierPayDriver, forKey: .defaultRateSheetRoutedCourierPayDriver)
        try container.encodeIfPresent(self.defaultRateSheetRoutedForwarderPayCourier, forKey: .defaultRateSheetRoutedForwarderPayCourier)
        try container.encodeIfPresent(self.defaultRateSheetRoutedShipperPayCourier, forKey: .defaultRateSheetRoutedShipperPayCourier)
        try container.encodeIfPresent(self.defaultRateSheetRoutedShipperPayForwarder, forKey: .defaultRateSheetRoutedShipperPayForwarder)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.orgType, forKey: .orgType)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.stripeConnectAccountId, forKey: .stripeConnectAccountId)
        try container.encodeIfPresent(self.svixAppId, forKey: .svixAppId)
        try container.encodeIfPresent(self.webhookEnabled, forKey: .webhookEnabled)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case defaultRateSheetOnDemandCourierPayDriver = "default_rate_sheet__on_demand__courier_pay_driver"
        case defaultRateSheetOnDemandForwarderPayCourier = "default_rate_sheet__on_demand__forwarder_pay_courier"
        case defaultRateSheetOnDemandShipperPayCourier = "default_rate_sheet__on_demand__shipper_pay_courier"
        case defaultRateSheetOnDemandShipperPayForwarder = "default_rate_sheet__on_demand__shipper_pay_forwarder"
        case defaultRateSheetRoutedCourierPayDriver = "default_rate_sheet__routed__courier_pay_driver"
        case defaultRateSheetRoutedForwarderPayCourier = "default_rate_sheet__routed__forwarder_pay_courier"
        case defaultRateSheetRoutedShipperPayCourier = "default_rate_sheet__routed__shipper_pay_courier"
        case defaultRateSheetRoutedShipperPayForwarder = "default_rate_sheet__routed__shipper_pay_forwarder"
        case orgId = "org_id"
        case orgType = "org_type"
        case schemaVersion = "schema_version"
        case stripeConnectAccountId = "stripe_connect_account_id"
        case svixAppId = "svix_app_id"
        case webhookEnabled = "webhook_enabled"
    }
}