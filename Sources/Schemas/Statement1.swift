import Foundation

public struct Statement1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let id: String
    public let lineItemGroupIds: [String]?
    public let amount: Int
    public let units: UnitsEnum?
    /// Must be a string starting with `user_`
    public let stagedByUserId: String?
    public let settlementType: SettlementTypeEnum1
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let paymentVectorType: PaymentVectorTypeEnum1
    /// Must be a string starting with `org_`
    public let paymentOriginOrgId: String?
    public let paymentOriginOffChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let paymentDestinationOrgId: String?
    public let paymentDestinationDriverId: String?
    public let status: StatementStatusEnum1?
    public let stripeInvoiceId: String?
    public let stripeInvoiceUrl: String?
    /// Must be a string starting with `user_`
    public let stripeInvoiceCreatedByUserId: String?
    public let stripeInvoiceStatus: StripeConnectInvoiceStatusEnum?
    public let stagedAtTimestamp: Date?
    public let openedAtTimestamp: Date?
    public let paidAtTimestamp: Date?
    public let uncollectibleAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let markedOpenByUserId: String?
    /// Must be a string starting with `user_`
    public let markedPaidByUserId: String?
    /// Must be a string starting with `user_`
    public let markedUncollectibleByUserId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        id: String,
        lineItemGroupIds: [String]? = nil,
        amount: Int,
        units: UnitsEnum? = nil,
        stagedByUserId: String? = nil,
        settlementType: SettlementTypeEnum1,
        ownedByOrgId: String,
        paymentVectorType: PaymentVectorTypeEnum1,
        paymentOriginOrgId: String? = nil,
        paymentOriginOffChrtShipperOrgId: String? = nil,
        paymentDestinationOrgId: String? = nil,
        paymentDestinationDriverId: String? = nil,
        status: StatementStatusEnum1? = nil,
        stripeInvoiceId: String? = nil,
        stripeInvoiceUrl: String? = nil,
        stripeInvoiceCreatedByUserId: String? = nil,
        stripeInvoiceStatus: StripeConnectInvoiceStatusEnum? = nil,
        stagedAtTimestamp: Date? = nil,
        openedAtTimestamp: Date? = nil,
        paidAtTimestamp: Date? = nil,
        uncollectibleAtTimestamp: Date? = nil,
        markedOpenByUserId: String? = nil,
        markedPaidByUserId: String? = nil,
        markedUncollectibleByUserId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.id = id
        self.lineItemGroupIds = lineItemGroupIds
        self.amount = amount
        self.units = units
        self.stagedByUserId = stagedByUserId
        self.settlementType = settlementType
        self.ownedByOrgId = ownedByOrgId
        self.paymentVectorType = paymentVectorType
        self.paymentOriginOrgId = paymentOriginOrgId
        self.paymentOriginOffChrtShipperOrgId = paymentOriginOffChrtShipperOrgId
        self.paymentDestinationOrgId = paymentDestinationOrgId
        self.paymentDestinationDriverId = paymentDestinationDriverId
        self.status = status
        self.stripeInvoiceId = stripeInvoiceId
        self.stripeInvoiceUrl = stripeInvoiceUrl
        self.stripeInvoiceCreatedByUserId = stripeInvoiceCreatedByUserId
        self.stripeInvoiceStatus = stripeInvoiceStatus
        self.stagedAtTimestamp = stagedAtTimestamp
        self.openedAtTimestamp = openedAtTimestamp
        self.paidAtTimestamp = paidAtTimestamp
        self.uncollectibleAtTimestamp = uncollectibleAtTimestamp
        self.markedOpenByUserId = markedOpenByUserId
        self.markedPaidByUserId = markedPaidByUserId
        self.markedUncollectibleByUserId = markedUncollectibleByUserId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.id = try container.decode(String.self, forKey: .id)
        self.lineItemGroupIds = try container.decodeIfPresent([String].self, forKey: .lineItemGroupIds)
        self.amount = try container.decode(Int.self, forKey: .amount)
        self.units = try container.decodeIfPresent(UnitsEnum.self, forKey: .units)
        self.stagedByUserId = try container.decodeIfPresent(String.self, forKey: .stagedByUserId)
        self.settlementType = try container.decode(SettlementTypeEnum1.self, forKey: .settlementType)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.paymentVectorType = try container.decode(PaymentVectorTypeEnum1.self, forKey: .paymentVectorType)
        self.paymentOriginOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOrgId)
        self.paymentOriginOffChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOffChrtShipperOrgId)
        self.paymentDestinationOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOrgId)
        self.paymentDestinationDriverId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationDriverId)
        self.status = try container.decodeIfPresent(StatementStatusEnum1.self, forKey: .status)
        self.stripeInvoiceId = try container.decodeIfPresent(String.self, forKey: .stripeInvoiceId)
        self.stripeInvoiceUrl = try container.decodeIfPresent(String.self, forKey: .stripeInvoiceUrl)
        self.stripeInvoiceCreatedByUserId = try container.decodeIfPresent(String.self, forKey: .stripeInvoiceCreatedByUserId)
        self.stripeInvoiceStatus = try container.decodeIfPresent(StripeConnectInvoiceStatusEnum.self, forKey: .stripeInvoiceStatus)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.openedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .openedAtTimestamp)
        self.paidAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .paidAtTimestamp)
        self.uncollectibleAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .uncollectibleAtTimestamp)
        self.markedOpenByUserId = try container.decodeIfPresent(String.self, forKey: .markedOpenByUserId)
        self.markedPaidByUserId = try container.decodeIfPresent(String.self, forKey: .markedPaidByUserId)
        self.markedUncollectibleByUserId = try container.decodeIfPresent(String.self, forKey: .markedUncollectibleByUserId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.lineItemGroupIds, forKey: .lineItemGroupIds)
        try container.encode(self.amount, forKey: .amount)
        try container.encodeIfPresent(self.units, forKey: .units)
        try container.encodeIfPresent(self.stagedByUserId, forKey: .stagedByUserId)
        try container.encode(self.settlementType, forKey: .settlementType)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.paymentVectorType, forKey: .paymentVectorType)
        try container.encodeIfPresent(self.paymentOriginOrgId, forKey: .paymentOriginOrgId)
        try container.encodeIfPresent(self.paymentOriginOffChrtShipperOrgId, forKey: .paymentOriginOffChrtShipperOrgId)
        try container.encodeIfPresent(self.paymentDestinationOrgId, forKey: .paymentDestinationOrgId)
        try container.encodeIfPresent(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.stripeInvoiceId, forKey: .stripeInvoiceId)
        try container.encodeIfPresent(self.stripeInvoiceUrl, forKey: .stripeInvoiceUrl)
        try container.encodeIfPresent(self.stripeInvoiceCreatedByUserId, forKey: .stripeInvoiceCreatedByUserId)
        try container.encodeIfPresent(self.stripeInvoiceStatus, forKey: .stripeInvoiceStatus)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encodeIfPresent(self.openedAtTimestamp, forKey: .openedAtTimestamp)
        try container.encodeIfPresent(self.paidAtTimestamp, forKey: .paidAtTimestamp)
        try container.encodeIfPresent(self.uncollectibleAtTimestamp, forKey: .uncollectibleAtTimestamp)
        try container.encodeIfPresent(self.markedOpenByUserId, forKey: .markedOpenByUserId)
        try container.encodeIfPresent(self.markedPaidByUserId, forKey: .markedPaidByUserId)
        try container.encodeIfPresent(self.markedUncollectibleByUserId, forKey: .markedUncollectibleByUserId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case id = "_id"
        case lineItemGroupIds = "line_item_group_ids"
        case amount
        case units
        case stagedByUserId = "staged_by_user_id"
        case settlementType = "settlement_type"
        case ownedByOrgId = "owned_by_org_id"
        case paymentVectorType = "payment_vector_type"
        case paymentOriginOrgId = "payment_origin_org_id"
        case paymentOriginOffChrtShipperOrgId = "payment_origin_off_chrt_shipper_org_id"
        case paymentDestinationOrgId = "payment_destination_org_id"
        case paymentDestinationDriverId = "payment_destination_driver_id"
        case status
        case stripeInvoiceId = "stripe_invoice_id"
        case stripeInvoiceUrl = "stripe_invoice_url"
        case stripeInvoiceCreatedByUserId = "stripe_invoice_created_by_user_id"
        case stripeInvoiceStatus = "stripe_invoice_status"
        case stagedAtTimestamp = "staged_at_timestamp"
        case openedAtTimestamp = "opened_at_timestamp"
        case paidAtTimestamp = "paid_at_timestamp"
        case uncollectibleAtTimestamp = "uncollectible_at_timestamp"
        case markedOpenByUserId = "marked_open_by_user_id"
        case markedPaidByUserId = "marked_paid_by_user_id"
        case markedUncollectibleByUserId = "marked_uncollectible_by_user_id"
    }
}