import Foundation

public struct OrgPrivateData1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let orgType: OrgTypeEnum
    /// Must be a string starting with `org_`
    public let orgId: String
    public let stripeConnectAccountId: String?
    public let defaultRateSheetRoutedShipperPayCourier: String?
    public let defaultRateSheetOnDemandShipperPayCourier: String?
    public let defaultRateSheetRoutedCourierPayDriver: String?
    public let defaultRateSheetOnDemandCourierPayDriver: String?
    public let defaultRateSheetRoutedShipperPayForwarder: String?
    public let defaultRateSheetOnDemandShipperPayForwarder: String?
    public let defaultRateSheetRoutedForwarderPayCourier: String?
    public let defaultRateSheetOnDemandForwarderPayCourier: String?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        orgType: OrgTypeEnum,
        orgId: String,
        stripeConnectAccountId: String? = nil,
        defaultRateSheetRoutedShipperPayCourier: String? = nil,
        defaultRateSheetOnDemandShipperPayCourier: String? = nil,
        defaultRateSheetRoutedCourierPayDriver: String? = nil,
        defaultRateSheetOnDemandCourierPayDriver: String? = nil,
        defaultRateSheetRoutedShipperPayForwarder: String? = nil,
        defaultRateSheetOnDemandShipperPayForwarder: String? = nil,
        defaultRateSheetRoutedForwarderPayCourier: String? = nil,
        defaultRateSheetOnDemandForwarderPayCourier: String? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.orgType = orgType
        self.orgId = orgId
        self.stripeConnectAccountId = stripeConnectAccountId
        self.defaultRateSheetRoutedShipperPayCourier = defaultRateSheetRoutedShipperPayCourier
        self.defaultRateSheetOnDemandShipperPayCourier = defaultRateSheetOnDemandShipperPayCourier
        self.defaultRateSheetRoutedCourierPayDriver = defaultRateSheetRoutedCourierPayDriver
        self.defaultRateSheetOnDemandCourierPayDriver = defaultRateSheetOnDemandCourierPayDriver
        self.defaultRateSheetRoutedShipperPayForwarder = defaultRateSheetRoutedShipperPayForwarder
        self.defaultRateSheetOnDemandShipperPayForwarder = defaultRateSheetOnDemandShipperPayForwarder
        self.defaultRateSheetRoutedForwarderPayCourier = defaultRateSheetRoutedForwarderPayCourier
        self.defaultRateSheetOnDemandForwarderPayCourier = defaultRateSheetOnDemandForwarderPayCourier
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.orgType = try container.decode(OrgTypeEnum.self, forKey: .orgType)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.stripeConnectAccountId = try container.decodeIfPresent(String.self, forKey: .stripeConnectAccountId)
        self.defaultRateSheetRoutedShipperPayCourier = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetRoutedShipperPayCourier)
        self.defaultRateSheetOnDemandShipperPayCourier = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetOnDemandShipperPayCourier)
        self.defaultRateSheetRoutedCourierPayDriver = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetRoutedCourierPayDriver)
        self.defaultRateSheetOnDemandCourierPayDriver = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetOnDemandCourierPayDriver)
        self.defaultRateSheetRoutedShipperPayForwarder = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetRoutedShipperPayForwarder)
        self.defaultRateSheetOnDemandShipperPayForwarder = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetOnDemandShipperPayForwarder)
        self.defaultRateSheetRoutedForwarderPayCourier = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetRoutedForwarderPayCourier)
        self.defaultRateSheetOnDemandForwarderPayCourier = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetOnDemandForwarderPayCourier)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.orgType, forKey: .orgType)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.stripeConnectAccountId, forKey: .stripeConnectAccountId)
        try container.encodeIfPresent(self.defaultRateSheetRoutedShipperPayCourier, forKey: .defaultRateSheetRoutedShipperPayCourier)
        try container.encodeIfPresent(self.defaultRateSheetOnDemandShipperPayCourier, forKey: .defaultRateSheetOnDemandShipperPayCourier)
        try container.encodeIfPresent(self.defaultRateSheetRoutedCourierPayDriver, forKey: .defaultRateSheetRoutedCourierPayDriver)
        try container.encodeIfPresent(self.defaultRateSheetOnDemandCourierPayDriver, forKey: .defaultRateSheetOnDemandCourierPayDriver)
        try container.encodeIfPresent(self.defaultRateSheetRoutedShipperPayForwarder, forKey: .defaultRateSheetRoutedShipperPayForwarder)
        try container.encodeIfPresent(self.defaultRateSheetOnDemandShipperPayForwarder, forKey: .defaultRateSheetOnDemandShipperPayForwarder)
        try container.encodeIfPresent(self.defaultRateSheetRoutedForwarderPayCourier, forKey: .defaultRateSheetRoutedForwarderPayCourier)
        try container.encodeIfPresent(self.defaultRateSheetOnDemandForwarderPayCourier, forKey: .defaultRateSheetOnDemandForwarderPayCourier)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case orgType = "org_type"
        case orgId = "org_id"
        case stripeConnectAccountId = "stripe_connect_account_id"
        case defaultRateSheetRoutedShipperPayCourier = "default_rate_sheet__routed__shipper_pay_courier"
        case defaultRateSheetOnDemandShipperPayCourier = "default_rate_sheet__on_demand__shipper_pay_courier"
        case defaultRateSheetRoutedCourierPayDriver = "default_rate_sheet__routed__courier_pay_driver"
        case defaultRateSheetOnDemandCourierPayDriver = "default_rate_sheet__on_demand__courier_pay_driver"
        case defaultRateSheetRoutedShipperPayForwarder = "default_rate_sheet__routed__shipper_pay_forwarder"
        case defaultRateSheetOnDemandShipperPayForwarder = "default_rate_sheet__on_demand__shipper_pay_forwarder"
        case defaultRateSheetRoutedForwarderPayCourier = "default_rate_sheet__routed__forwarder_pay_courier"
        case defaultRateSheetOnDemandForwarderPayCourier = "default_rate_sheet__on_demand__forwarder_pay_courier"
        case id = "_id"
    }
}