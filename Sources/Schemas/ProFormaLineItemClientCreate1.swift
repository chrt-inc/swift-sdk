import Foundation

public struct ProFormaLineItemClientCreate1: Codable, Hashable, Sendable {
    /// IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
    public let awbNumber: String?
    public let currencyCode: BillingCurrencyCodeEnum1
    public let description: String
    public let lineItemType: InvoiceLineItemTypeEnum1
    public let quantity: Double
    public let schemaVersion: Int?
    public let taxPercentage: Double?
    public let unit: InvoiceLineItemUnitEnum1?
    public let unitPrice: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        awbNumber: String? = nil,
        currencyCode: BillingCurrencyCodeEnum1,
        description: String,
        lineItemType: InvoiceLineItemTypeEnum1,
        quantity: Double,
        schemaVersion: Int? = nil,
        taxPercentage: Double? = nil,
        unit: InvoiceLineItemUnitEnum1? = nil,
        unitPrice: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.awbNumber = awbNumber
        self.currencyCode = currencyCode
        self.description = description
        self.lineItemType = lineItemType
        self.quantity = quantity
        self.schemaVersion = schemaVersion
        self.taxPercentage = taxPercentage
        self.unit = unit
        self.unitPrice = unitPrice
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.awbNumber = try container.decodeIfPresent(String.self, forKey: .awbNumber)
        self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
        self.description = try container.decode(String.self, forKey: .description)
        self.lineItemType = try container.decode(InvoiceLineItemTypeEnum1.self, forKey: .lineItemType)
        self.quantity = try container.decode(Double.self, forKey: .quantity)
        self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
        self.taxPercentage = try container.decodeIfPresent(Double.self, forKey: .taxPercentage)
        self.unit = try container.decodeIfPresent(InvoiceLineItemUnitEnum1.self, forKey: .unit)
        self.unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.awbNumber, forKey: .awbNumber)
        try container.encode(self.currencyCode, forKey: .currencyCode)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.lineItemType, forKey: .lineItemType)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.taxPercentage, forKey: .taxPercentage)
        try container.encodeIfPresent(self.unit, forKey: .unit)
        try container.encode(self.unitPrice, forKey: .unitPrice)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case awbNumber = "awb_number"
        case currencyCode = "currency_code"
        case description
        case lineItemType = "line_item_type"
        case quantity
        case schemaVersion = "schema_version"
        case taxPercentage = "tax_percentage"
        case unit
        case unitPrice = "unit_price"
    }
}