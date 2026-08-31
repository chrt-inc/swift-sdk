import Foundation

public struct InvoiceLineItemServerCreate1: Codable, Hashable, Sendable {
    /// IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
    public let awbNumber: String?
    public let billingPeriodId: String?
    public let counterpartyDriverId: String?
    public let counterpartyOffChrtOrgDataId: String?
    /// Must be a string starting with `org_`
    public let counterpartyOrgId: String?
    public let createdAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let currencyCode: BillingCurrencyCodeEnum1
    public let currencyConversion: InvoiceLineItemCurrencyConversion1?
    public let description: String
    public let exportRefSageItemId: String?
    public let invoiceId: String?
    public let invoiceType: InvoiceTypeEnum1
    public let lastEditedAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let lastEditedByUserId: String
    public let lineItemType: InvoiceLineItemTypeEnum1
    public let orderId: String?
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let quantity: Double
    public let rateSheetId: String?
    public let schemaVersion: Int
    public let shipperAccountId: String?
    public let status: InvoiceLineItemStatusEnum1?
    public let taskGroupId: String?
    public let taxPercentage: Double?
    public let unit: InvoiceLineItemUnitEnum1?
    public let unitPrice: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        awbNumber: String? = nil,
        billingPeriodId: String? = nil,
        counterpartyDriverId: String? = nil,
        counterpartyOffChrtOrgDataId: String? = nil,
        counterpartyOrgId: String? = nil,
        createdAtTimestamp: Date,
        createdByUserId: String,
        currencyCode: BillingCurrencyCodeEnum1,
        currencyConversion: InvoiceLineItemCurrencyConversion1? = nil,
        description: String,
        exportRefSageItemId: String? = nil,
        invoiceId: String? = nil,
        invoiceType: InvoiceTypeEnum1,
        lastEditedAtTimestamp: Date,
        lastEditedByUserId: String,
        lineItemType: InvoiceLineItemTypeEnum1,
        orderId: String? = nil,
        ownedByOrgId: String,
        quantity: Double,
        rateSheetId: String? = nil,
        schemaVersion: Int,
        shipperAccountId: String? = nil,
        status: InvoiceLineItemStatusEnum1? = nil,
        taskGroupId: String? = nil,
        taxPercentage: Double? = nil,
        unit: InvoiceLineItemUnitEnum1? = nil,
        unitPrice: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.awbNumber = awbNumber
        self.billingPeriodId = billingPeriodId
        self.counterpartyDriverId = counterpartyDriverId
        self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
        self.counterpartyOrgId = counterpartyOrgId
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByUserId = createdByUserId
        self.currencyCode = currencyCode
        self.currencyConversion = currencyConversion
        self.description = description
        self.exportRefSageItemId = exportRefSageItemId
        self.invoiceId = invoiceId
        self.invoiceType = invoiceType
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.lastEditedByUserId = lastEditedByUserId
        self.lineItemType = lineItemType
        self.orderId = orderId
        self.ownedByOrgId = ownedByOrgId
        self.quantity = quantity
        self.rateSheetId = rateSheetId
        self.schemaVersion = schemaVersion
        self.shipperAccountId = shipperAccountId
        self.status = status
        self.taskGroupId = taskGroupId
        self.taxPercentage = taxPercentage
        self.unit = unit
        self.unitPrice = unitPrice
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.awbNumber = try container.decodeIfPresent(String.self, forKey: .awbNumber)
        self.billingPeriodId = try container.decodeIfPresent(String.self, forKey: .billingPeriodId)
        self.counterpartyDriverId = try container.decodeIfPresent(String.self, forKey: .counterpartyDriverId)
        self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
        self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
        self.currencyConversion = try container.decodeIfPresent(InvoiceLineItemCurrencyConversion1.self, forKey: .currencyConversion)
        self.description = try container.decode(String.self, forKey: .description)
        self.exportRefSageItemId = try container.decodeIfPresent(String.self, forKey: .exportRefSageItemId)
        self.invoiceId = try container.decodeIfPresent(String.self, forKey: .invoiceId)
        self.invoiceType = try container.decode(InvoiceTypeEnum1.self, forKey: .invoiceType)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.lastEditedByUserId = try container.decode(String.self, forKey: .lastEditedByUserId)
        self.lineItemType = try container.decode(InvoiceLineItemTypeEnum1.self, forKey: .lineItemType)
        self.orderId = try container.decodeIfPresent(String.self, forKey: .orderId)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.quantity = try container.decode(Double.self, forKey: .quantity)
        self.rateSheetId = try container.decodeIfPresent(String.self, forKey: .rateSheetId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperAccountId = try container.decodeIfPresent(String.self, forKey: .shipperAccountId)
        self.status = try container.decodeIfPresent(InvoiceLineItemStatusEnum1.self, forKey: .status)
        self.taskGroupId = try container.decodeIfPresent(String.self, forKey: .taskGroupId)
        self.taxPercentage = try container.decodeIfPresent(Double.self, forKey: .taxPercentage)
        self.unit = try container.decodeIfPresent(InvoiceLineItemUnitEnum1.self, forKey: .unit)
        self.unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.awbNumber, forKey: .awbNumber)
        try container.encodeIfPresent(self.billingPeriodId, forKey: .billingPeriodId)
        try container.encodeIfPresent(self.counterpartyDriverId, forKey: .counterpartyDriverId)
        try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
        try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(self.currencyConversion, forKey: .currencyConversion)
        try container.encode(self.description, forKey: .description)
        try container.encodeIfPresent(self.exportRefSageItemId, forKey: .exportRefSageItemId)
        try container.encodeIfPresent(self.invoiceId, forKey: .invoiceId)
        try container.encode(self.invoiceType, forKey: .invoiceType)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encode(self.lastEditedByUserId, forKey: .lastEditedByUserId)
        try container.encode(self.lineItemType, forKey: .lineItemType)
        try container.encodeIfPresent(self.orderId, forKey: .orderId)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.rateSheetId, forKey: .rateSheetId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shipperAccountId, forKey: .shipperAccountId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.taskGroupId, forKey: .taskGroupId)
        try container.encodeIfPresent(self.taxPercentage, forKey: .taxPercentage)
        try container.encodeIfPresent(self.unit, forKey: .unit)
        try container.encode(self.unitPrice, forKey: .unitPrice)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case awbNumber = "awb_number"
        case billingPeriodId = "billing_period_id"
        case counterpartyDriverId = "counterparty_driver_id"
        case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
        case counterpartyOrgId = "counterparty_org_id"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByUserId = "created_by_user_id"
        case currencyCode = "currency_code"
        case currencyConversion = "currency_conversion"
        case description
        case exportRefSageItemId = "export_ref__sage__item_id"
        case invoiceId = "invoice_id"
        case invoiceType = "invoice_type"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case lastEditedByUserId = "last_edited_by_user_id"
        case lineItemType = "line_item_type"
        case orderId = "order_id"
        case ownedByOrgId = "owned_by_org_id"
        case quantity
        case rateSheetId = "rate_sheet_id"
        case schemaVersion = "schema_version"
        case shipperAccountId = "shipper_account_id"
        case status
        case taskGroupId = "task_group_id"
        case taxPercentage = "tax_percentage"
        case unit
        case unitPrice = "unit_price"
    }
}