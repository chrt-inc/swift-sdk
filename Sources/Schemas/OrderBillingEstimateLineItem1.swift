import Foundation

public struct OrderBillingEstimateLineItem1: Codable, Hashable, Sendable {
    public let billingLineKey: String
    public let counterpartyDriverId: String?
    public let counterpartyOffChrtOrgDataId: String?
    /// Must be a string starting with `org_`
    public let counterpartyOrgId: String?
    public let currencyCode: BillingCurrencyCodeEnum1
    public let description: String
    public let invoiceType: InvoiceTypeEnum1
    public let lineItemType: InvoiceLineItemTypeEnum1
    public let quantity: Double
    public let rateSheetId: String?
    public let taskGroupId: String?
    public let unit: InvoiceLineItemUnitEnum1?
    public let unitPrice: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        billingLineKey: String,
        counterpartyDriverId: String? = nil,
        counterpartyOffChrtOrgDataId: String? = nil,
        counterpartyOrgId: String? = nil,
        currencyCode: BillingCurrencyCodeEnum1,
        description: String,
        invoiceType: InvoiceTypeEnum1,
        lineItemType: InvoiceLineItemTypeEnum1,
        quantity: Double,
        rateSheetId: String? = nil,
        taskGroupId: String? = nil,
        unit: InvoiceLineItemUnitEnum1? = nil,
        unitPrice: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.billingLineKey = billingLineKey
        self.counterpartyDriverId = counterpartyDriverId
        self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
        self.counterpartyOrgId = counterpartyOrgId
        self.currencyCode = currencyCode
        self.description = description
        self.invoiceType = invoiceType
        self.lineItemType = lineItemType
        self.quantity = quantity
        self.rateSheetId = rateSheetId
        self.taskGroupId = taskGroupId
        self.unit = unit
        self.unitPrice = unitPrice
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.billingLineKey = try container.decode(String.self, forKey: .billingLineKey)
        self.counterpartyDriverId = try container.decodeIfPresent(String.self, forKey: .counterpartyDriverId)
        self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
        self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
        self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
        self.description = try container.decode(String.self, forKey: .description)
        self.invoiceType = try container.decode(InvoiceTypeEnum1.self, forKey: .invoiceType)
        self.lineItemType = try container.decode(InvoiceLineItemTypeEnum1.self, forKey: .lineItemType)
        self.quantity = try container.decode(Double.self, forKey: .quantity)
        self.rateSheetId = try container.decodeIfPresent(String.self, forKey: .rateSheetId)
        self.taskGroupId = try container.decodeIfPresent(String.self, forKey: .taskGroupId)
        self.unit = try container.decodeIfPresent(InvoiceLineItemUnitEnum1.self, forKey: .unit)
        self.unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.billingLineKey, forKey: .billingLineKey)
        try container.encodeIfPresent(self.counterpartyDriverId, forKey: .counterpartyDriverId)
        try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
        try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
        try container.encode(self.currencyCode, forKey: .currencyCode)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.invoiceType, forKey: .invoiceType)
        try container.encode(self.lineItemType, forKey: .lineItemType)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.rateSheetId, forKey: .rateSheetId)
        try container.encodeIfPresent(self.taskGroupId, forKey: .taskGroupId)
        try container.encodeIfPresent(self.unit, forKey: .unit)
        try container.encode(self.unitPrice, forKey: .unitPrice)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case billingLineKey = "billing_line_key"
        case counterpartyDriverId = "counterparty_driver_id"
        case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
        case counterpartyOrgId = "counterparty_org_id"
        case currencyCode = "currency_code"
        case description
        case invoiceType = "invoice_type"
        case lineItemType = "line_item_type"
        case quantity
        case rateSheetId = "rate_sheet_id"
        case taskGroupId = "task_group_id"
        case unit
        case unitPrice = "unit_price"
    }
}