import Foundation

public struct OrderBillingQuote1: Codable, Hashable, Sendable {
    public let id: String
    public let acceptedAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let acceptedByUserId: String?
    public let counterpartyOffChrtOrgDataId: String?
    /// Must be a string starting with `org_`
    public let counterpartyOrgId: String?
    public let createdAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let currencyCode: BillingCurrencyCodeEnum1
    public let lastEditedAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let lastEditedByUserId: String
    public let lineItems: [ProFormaLineItem1]?
    public let orderId: String
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let quoteType: OrderBillingQuoteTypeEnum1
    public let schemaVersion: Int
    public let shipperAccountId: String?
    public let status: OrderBillingQuoteStatusEnum1?
    public let supersededAtTimestamp: Date?
    public let supersededByOrderBillingQuoteId: String?
    public let withdrawnAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let withdrawnByUserId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        acceptedAtTimestamp: Date? = nil,
        acceptedByUserId: String? = nil,
        counterpartyOffChrtOrgDataId: String? = nil,
        counterpartyOrgId: String? = nil,
        createdAtTimestamp: Date,
        createdByUserId: String,
        currencyCode: BillingCurrencyCodeEnum1,
        lastEditedAtTimestamp: Date,
        lastEditedByUserId: String,
        lineItems: [ProFormaLineItem1]? = nil,
        orderId: String,
        ownedByOrgId: String,
        quoteType: OrderBillingQuoteTypeEnum1,
        schemaVersion: Int,
        shipperAccountId: String? = nil,
        status: OrderBillingQuoteStatusEnum1? = nil,
        supersededAtTimestamp: Date? = nil,
        supersededByOrderBillingQuoteId: String? = nil,
        withdrawnAtTimestamp: Date? = nil,
        withdrawnByUserId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.acceptedAtTimestamp = acceptedAtTimestamp
        self.acceptedByUserId = acceptedByUserId
        self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
        self.counterpartyOrgId = counterpartyOrgId
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByUserId = createdByUserId
        self.currencyCode = currencyCode
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.lastEditedByUserId = lastEditedByUserId
        self.lineItems = lineItems
        self.orderId = orderId
        self.ownedByOrgId = ownedByOrgId
        self.quoteType = quoteType
        self.schemaVersion = schemaVersion
        self.shipperAccountId = shipperAccountId
        self.status = status
        self.supersededAtTimestamp = supersededAtTimestamp
        self.supersededByOrderBillingQuoteId = supersededByOrderBillingQuoteId
        self.withdrawnAtTimestamp = withdrawnAtTimestamp
        self.withdrawnByUserId = withdrawnByUserId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.acceptedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .acceptedAtTimestamp)
        self.acceptedByUserId = try container.decodeIfPresent(String.self, forKey: .acceptedByUserId)
        self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
        self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.lastEditedByUserId = try container.decode(String.self, forKey: .lastEditedByUserId)
        self.lineItems = try container.decodeIfPresent([ProFormaLineItem1].self, forKey: .lineItems)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.quoteType = try container.decode(OrderBillingQuoteTypeEnum1.self, forKey: .quoteType)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperAccountId = try container.decodeIfPresent(String.self, forKey: .shipperAccountId)
        self.status = try container.decodeIfPresent(OrderBillingQuoteStatusEnum1.self, forKey: .status)
        self.supersededAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .supersededAtTimestamp)
        self.supersededByOrderBillingQuoteId = try container.decodeIfPresent(String.self, forKey: .supersededByOrderBillingQuoteId)
        self.withdrawnAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .withdrawnAtTimestamp)
        self.withdrawnByUserId = try container.decodeIfPresent(String.self, forKey: .withdrawnByUserId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.acceptedAtTimestamp, forKey: .acceptedAtTimestamp)
        try container.encodeIfPresent(self.acceptedByUserId, forKey: .acceptedByUserId)
        try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
        try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.currencyCode, forKey: .currencyCode)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encode(self.lastEditedByUserId, forKey: .lastEditedByUserId)
        try container.encodeIfPresent(self.lineItems, forKey: .lineItems)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.quoteType, forKey: .quoteType)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shipperAccountId, forKey: .shipperAccountId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.supersededAtTimestamp, forKey: .supersededAtTimestamp)
        try container.encodeIfPresent(self.supersededByOrderBillingQuoteId, forKey: .supersededByOrderBillingQuoteId)
        try container.encodeIfPresent(self.withdrawnAtTimestamp, forKey: .withdrawnAtTimestamp)
        try container.encodeIfPresent(self.withdrawnByUserId, forKey: .withdrawnByUserId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case acceptedAtTimestamp = "accepted_at_timestamp"
        case acceptedByUserId = "accepted_by_user_id"
        case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
        case counterpartyOrgId = "counterparty_org_id"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByUserId = "created_by_user_id"
        case currencyCode = "currency_code"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case lastEditedByUserId = "last_edited_by_user_id"
        case lineItems = "line_items"
        case orderId = "order_id"
        case ownedByOrgId = "owned_by_org_id"
        case quoteType = "quote_type"
        case schemaVersion = "schema_version"
        case shipperAccountId = "shipper_account_id"
        case status
        case supersededAtTimestamp = "superseded_at_timestamp"
        case supersededByOrderBillingQuoteId = "superseded_by_order_billing_quote_id"
        case withdrawnAtTimestamp = "withdrawn_at_timestamp"
        case withdrawnByUserId = "withdrawn_by_user_id"
    }
}