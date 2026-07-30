import Foundation

public struct InvoiceLineItemClientCreate1: Codable, Hashable, Sendable {
    public let counterpartyOffChrtOrgDataId: String?
    /// Must be a string starting with `org_`
    public let counterpartyOrgId: String?
    public let currencyCode: BillingCurrencyCodeEnum1
    public let description: String
    public let exportRefSageItemId: String?
    public let invoiceType: InvoiceTypeEnum1
    public let lineItemType: InvoiceLineItemTypeEnum1
    public let quantity: Double
    public let schemaVersion: Int
    public let shipperAccountId: String?
    public let taxPercentage: Double?
    public let unit: InvoiceLineItemUnitEnum1?
    public let unitPrice: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        counterpartyOffChrtOrgDataId: String? = nil,
        counterpartyOrgId: String? = nil,
        currencyCode: BillingCurrencyCodeEnum1,
        description: String,
        exportRefSageItemId: String? = nil,
        invoiceType: InvoiceTypeEnum1,
        lineItemType: InvoiceLineItemTypeEnum1,
        quantity: Double,
        schemaVersion: Int,
        shipperAccountId: String? = nil,
        taxPercentage: Double? = nil,
        unit: InvoiceLineItemUnitEnum1? = nil,
        unitPrice: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
        self.counterpartyOrgId = counterpartyOrgId
        self.currencyCode = currencyCode
        self.description = description
        self.exportRefSageItemId = exportRefSageItemId
        self.invoiceType = invoiceType
        self.lineItemType = lineItemType
        self.quantity = quantity
        self.schemaVersion = schemaVersion
        self.shipperAccountId = shipperAccountId
        self.taxPercentage = taxPercentage
        self.unit = unit
        self.unitPrice = unitPrice
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
        self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
        self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
        self.description = try container.decode(String.self, forKey: .description)
        self.exportRefSageItemId = try container.decodeIfPresent(String.self, forKey: .exportRefSageItemId)
        self.invoiceType = try container.decode(InvoiceTypeEnum1.self, forKey: .invoiceType)
        self.lineItemType = try container.decode(InvoiceLineItemTypeEnum1.self, forKey: .lineItemType)
        self.quantity = try container.decode(Double.self, forKey: .quantity)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperAccountId = try container.decodeIfPresent(String.self, forKey: .shipperAccountId)
        self.taxPercentage = try container.decodeIfPresent(Double.self, forKey: .taxPercentage)
        self.unit = try container.decodeIfPresent(InvoiceLineItemUnitEnum1.self, forKey: .unit)
        self.unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
        try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
        try container.encode(self.currencyCode, forKey: .currencyCode)
        try container.encode(self.description, forKey: .description)
        try container.encodeIfPresent(self.exportRefSageItemId, forKey: .exportRefSageItemId)
        try container.encode(self.invoiceType, forKey: .invoiceType)
        try container.encode(self.lineItemType, forKey: .lineItemType)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shipperAccountId, forKey: .shipperAccountId)
        try container.encodeIfPresent(self.taxPercentage, forKey: .taxPercentage)
        try container.encodeIfPresent(self.unit, forKey: .unit)
        try container.encode(self.unitPrice, forKey: .unitPrice)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
        case counterpartyOrgId = "counterparty_org_id"
        case currencyCode = "currency_code"
        case description
        case exportRefSageItemId = "export_ref__sage__item_id"
        case invoiceType = "invoice_type"
        case lineItemType = "line_item_type"
        case quantity
        case schemaVersion = "schema_version"
        case shipperAccountId = "shipper_account_id"
        case taxPercentage = "tax_percentage"
        case unit
        case unitPrice = "unit_price"
    }
}