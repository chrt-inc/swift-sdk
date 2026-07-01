import Foundation

public struct Statement1: Codable, Hashable, Sendable {
    public let id: String
    public let amount: Int?
    public let billingLedgerPeriodIds: [String]?
    public let lineItemGroupIds: [String]?
    /// Must be a string starting with `user_`
    public let markedOpenByUserId: String?
    /// Must be a string starting with `user_`
    public let markedPaidByUserId: String?
    /// Must be a string starting with `user_`
    public let markedUncollectibleByUserId: String?
    public let openedAtTimestamp: Date?
    public let orderGroupId: String?
    public let orderGroupShortId: String?
    public let orderIds: [String]?
    public let orderOffChrtReferenceIds: [String]?
    public let orderShortIds: [String]?
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let paidAtTimestamp: Date?
    public let paymentDestinationDriverId: String?
    public let paymentDestinationOffChrtProviderOrgId: String?
    public let paymentDestinationOffChrtVendorId: String?
    /// Must be a string starting with `org_`
    public let paymentDestinationOrgId: String?
    public let paymentOriginOffChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let paymentOriginOrgId: String?
    public let schemaVersion: Int
    public let settlementType: SettlementTypeEnum1
    public let stagedAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let stagedByUserId: String?
    public let status: StatementStatusEnum1?
    /// Must be a string starting with `user_`
    public let stripeInvoiceCreatedByUserId: String?
    public let stripeInvoiceId: String?
    public let stripeInvoiceStatus: StripeConnectInvoiceStatusEnum?
    public let stripeInvoiceUrl: String?
    public let uncollectibleAtTimestamp: Date?
    public let units: UnitsEnum?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        amount: Int? = nil,
        billingLedgerPeriodIds: [String]? = nil,
        lineItemGroupIds: [String]? = nil,
        markedOpenByUserId: String? = nil,
        markedPaidByUserId: String? = nil,
        markedUncollectibleByUserId: String? = nil,
        openedAtTimestamp: Date? = nil,
        orderGroupId: String? = nil,
        orderGroupShortId: String? = nil,
        orderIds: [String]? = nil,
        orderOffChrtReferenceIds: [String]? = nil,
        orderShortIds: [String]? = nil,
        ownedByOrgId: String,
        paidAtTimestamp: Date? = nil,
        paymentDestinationDriverId: String? = nil,
        paymentDestinationOffChrtProviderOrgId: String? = nil,
        paymentDestinationOffChrtVendorId: String? = nil,
        paymentDestinationOrgId: String? = nil,
        paymentOriginOffChrtShipperOrgId: String? = nil,
        paymentOriginOrgId: String? = nil,
        schemaVersion: Int,
        settlementType: SettlementTypeEnum1,
        stagedAtTimestamp: Date? = nil,
        stagedByUserId: String? = nil,
        status: StatementStatusEnum1? = nil,
        stripeInvoiceCreatedByUserId: String? = nil,
        stripeInvoiceId: String? = nil,
        stripeInvoiceStatus: StripeConnectInvoiceStatusEnum? = nil,
        stripeInvoiceUrl: String? = nil,
        uncollectibleAtTimestamp: Date? = nil,
        units: UnitsEnum? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.amount = amount
        self.billingLedgerPeriodIds = billingLedgerPeriodIds
        self.lineItemGroupIds = lineItemGroupIds
        self.markedOpenByUserId = markedOpenByUserId
        self.markedPaidByUserId = markedPaidByUserId
        self.markedUncollectibleByUserId = markedUncollectibleByUserId
        self.openedAtTimestamp = openedAtTimestamp
        self.orderGroupId = orderGroupId
        self.orderGroupShortId = orderGroupShortId
        self.orderIds = orderIds
        self.orderOffChrtReferenceIds = orderOffChrtReferenceIds
        self.orderShortIds = orderShortIds
        self.ownedByOrgId = ownedByOrgId
        self.paidAtTimestamp = paidAtTimestamp
        self.paymentDestinationDriverId = paymentDestinationDriverId
        self.paymentDestinationOffChrtProviderOrgId = paymentDestinationOffChrtProviderOrgId
        self.paymentDestinationOffChrtVendorId = paymentDestinationOffChrtVendorId
        self.paymentDestinationOrgId = paymentDestinationOrgId
        self.paymentOriginOffChrtShipperOrgId = paymentOriginOffChrtShipperOrgId
        self.paymentOriginOrgId = paymentOriginOrgId
        self.schemaVersion = schemaVersion
        self.settlementType = settlementType
        self.stagedAtTimestamp = stagedAtTimestamp
        self.stagedByUserId = stagedByUserId
        self.status = status
        self.stripeInvoiceCreatedByUserId = stripeInvoiceCreatedByUserId
        self.stripeInvoiceId = stripeInvoiceId
        self.stripeInvoiceStatus = stripeInvoiceStatus
        self.stripeInvoiceUrl = stripeInvoiceUrl
        self.uncollectibleAtTimestamp = uncollectibleAtTimestamp
        self.units = units
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.amount = try container.decodeIfPresent(Int.self, forKey: .amount)
        self.billingLedgerPeriodIds = try container.decodeIfPresent([String].self, forKey: .billingLedgerPeriodIds)
        self.lineItemGroupIds = try container.decodeIfPresent([String].self, forKey: .lineItemGroupIds)
        self.markedOpenByUserId = try container.decodeIfPresent(String.self, forKey: .markedOpenByUserId)
        self.markedPaidByUserId = try container.decodeIfPresent(String.self, forKey: .markedPaidByUserId)
        self.markedUncollectibleByUserId = try container.decodeIfPresent(String.self, forKey: .markedUncollectibleByUserId)
        self.openedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .openedAtTimestamp)
        self.orderGroupId = try container.decodeIfPresent(String.self, forKey: .orderGroupId)
        self.orderGroupShortId = try container.decodeIfPresent(String.self, forKey: .orderGroupShortId)
        self.orderIds = try container.decodeIfPresent([String].self, forKey: .orderIds)
        self.orderOffChrtReferenceIds = try container.decodeIfPresent([String].self, forKey: .orderOffChrtReferenceIds)
        self.orderShortIds = try container.decodeIfPresent([String].self, forKey: .orderShortIds)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.paidAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .paidAtTimestamp)
        self.paymentDestinationDriverId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationDriverId)
        self.paymentDestinationOffChrtProviderOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOffChrtProviderOrgId)
        self.paymentDestinationOffChrtVendorId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOffChrtVendorId)
        self.paymentDestinationOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOrgId)
        self.paymentOriginOffChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOffChrtShipperOrgId)
        self.paymentOriginOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOrgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.settlementType = try container.decode(SettlementTypeEnum1.self, forKey: .settlementType)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.stagedByUserId = try container.decodeIfPresent(String.self, forKey: .stagedByUserId)
        self.status = try container.decodeIfPresent(StatementStatusEnum1.self, forKey: .status)
        self.stripeInvoiceCreatedByUserId = try container.decodeIfPresent(String.self, forKey: .stripeInvoiceCreatedByUserId)
        self.stripeInvoiceId = try container.decodeIfPresent(String.self, forKey: .stripeInvoiceId)
        self.stripeInvoiceStatus = try container.decodeIfPresent(StripeConnectInvoiceStatusEnum.self, forKey: .stripeInvoiceStatus)
        self.stripeInvoiceUrl = try container.decodeIfPresent(String.self, forKey: .stripeInvoiceUrl)
        self.uncollectibleAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .uncollectibleAtTimestamp)
        self.units = try container.decodeIfPresent(UnitsEnum.self, forKey: .units)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.amount, forKey: .amount)
        try container.encodeIfPresent(self.billingLedgerPeriodIds, forKey: .billingLedgerPeriodIds)
        try container.encodeIfPresent(self.lineItemGroupIds, forKey: .lineItemGroupIds)
        try container.encodeIfPresent(self.markedOpenByUserId, forKey: .markedOpenByUserId)
        try container.encodeIfPresent(self.markedPaidByUserId, forKey: .markedPaidByUserId)
        try container.encodeIfPresent(self.markedUncollectibleByUserId, forKey: .markedUncollectibleByUserId)
        try container.encodeIfPresent(self.openedAtTimestamp, forKey: .openedAtTimestamp)
        try container.encodeIfPresent(self.orderGroupId, forKey: .orderGroupId)
        try container.encodeIfPresent(self.orderGroupShortId, forKey: .orderGroupShortId)
        try container.encodeIfPresent(self.orderIds, forKey: .orderIds)
        try container.encodeIfPresent(self.orderOffChrtReferenceIds, forKey: .orderOffChrtReferenceIds)
        try container.encodeIfPresent(self.orderShortIds, forKey: .orderShortIds)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encodeIfPresent(self.paidAtTimestamp, forKey: .paidAtTimestamp)
        try container.encodeIfPresent(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
        try container.encodeIfPresent(self.paymentDestinationOffChrtProviderOrgId, forKey: .paymentDestinationOffChrtProviderOrgId)
        try container.encodeIfPresent(self.paymentDestinationOffChrtVendorId, forKey: .paymentDestinationOffChrtVendorId)
        try container.encodeIfPresent(self.paymentDestinationOrgId, forKey: .paymentDestinationOrgId)
        try container.encodeIfPresent(self.paymentOriginOffChrtShipperOrgId, forKey: .paymentOriginOffChrtShipperOrgId)
        try container.encodeIfPresent(self.paymentOriginOrgId, forKey: .paymentOriginOrgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.settlementType, forKey: .settlementType)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encodeIfPresent(self.stagedByUserId, forKey: .stagedByUserId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.stripeInvoiceCreatedByUserId, forKey: .stripeInvoiceCreatedByUserId)
        try container.encodeIfPresent(self.stripeInvoiceId, forKey: .stripeInvoiceId)
        try container.encodeIfPresent(self.stripeInvoiceStatus, forKey: .stripeInvoiceStatus)
        try container.encodeIfPresent(self.stripeInvoiceUrl, forKey: .stripeInvoiceUrl)
        try container.encodeIfPresent(self.uncollectibleAtTimestamp, forKey: .uncollectibleAtTimestamp)
        try container.encodeIfPresent(self.units, forKey: .units)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case amount
        case billingLedgerPeriodIds = "billing_ledger_period_ids"
        case lineItemGroupIds = "line_item_group_ids"
        case markedOpenByUserId = "marked_open_by_user_id"
        case markedPaidByUserId = "marked_paid_by_user_id"
        case markedUncollectibleByUserId = "marked_uncollectible_by_user_id"
        case openedAtTimestamp = "opened_at_timestamp"
        case orderGroupId = "order_group_id"
        case orderGroupShortId = "order_group_short_id"
        case orderIds = "order_ids"
        case orderOffChrtReferenceIds = "order_off_chrt_reference_ids"
        case orderShortIds = "order_short_ids"
        case ownedByOrgId = "owned_by_org_id"
        case paidAtTimestamp = "paid_at_timestamp"
        case paymentDestinationDriverId = "payment_destination_driver_id"
        case paymentDestinationOffChrtProviderOrgId = "payment_destination_off_chrt_provider_org_id"
        case paymentDestinationOffChrtVendorId = "payment_destination_off_chrt_vendor_id"
        case paymentDestinationOrgId = "payment_destination_org_id"
        case paymentOriginOffChrtShipperOrgId = "payment_origin_off_chrt_shipper_org_id"
        case paymentOriginOrgId = "payment_origin_org_id"
        case schemaVersion = "schema_version"
        case settlementType = "settlement_type"
        case stagedAtTimestamp = "staged_at_timestamp"
        case stagedByUserId = "staged_by_user_id"
        case status
        case stripeInvoiceCreatedByUserId = "stripe_invoice_created_by_user_id"
        case stripeInvoiceId = "stripe_invoice_id"
        case stripeInvoiceStatus = "stripe_invoice_status"
        case stripeInvoiceUrl = "stripe_invoice_url"
        case uncollectibleAtTimestamp = "uncollectible_at_timestamp"
        case units
    }
}