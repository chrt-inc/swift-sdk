import Foundation

public struct InvoiceTaxCalculation1: Codable, Hashable, Sendable {
    public let currencyCode: BillingCurrencyCodeEnum1
    public let netAmounts: [String: Double]?
    public let subtotal: Double
    public let taxBreakdown: [CalculatedInvoiceTax1]?
    public let taxTotal: Double
    public let totalAmount: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        currencyCode: BillingCurrencyCodeEnum1,
        netAmounts: [String: Double]? = nil,
        subtotal: Double,
        taxBreakdown: [CalculatedInvoiceTax1]? = nil,
        taxTotal: Double,
        totalAmount: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.currencyCode = currencyCode
        self.netAmounts = netAmounts
        self.subtotal = subtotal
        self.taxBreakdown = taxBreakdown
        self.taxTotal = taxTotal
        self.totalAmount = totalAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
        self.netAmounts = try container.decodeIfPresent([String: Double].self, forKey: .netAmounts)
        self.subtotal = try container.decode(Double.self, forKey: .subtotal)
        self.taxBreakdown = try container.decodeIfPresent([CalculatedInvoiceTax1].self, forKey: .taxBreakdown)
        self.taxTotal = try container.decode(Double.self, forKey: .taxTotal)
        self.totalAmount = try container.decode(Double.self, forKey: .totalAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(self.netAmounts, forKey: .netAmounts)
        try container.encode(self.subtotal, forKey: .subtotal)
        try container.encodeIfPresent(self.taxBreakdown, forKey: .taxBreakdown)
        try container.encode(self.taxTotal, forKey: .taxTotal)
        try container.encode(self.totalAmount, forKey: .totalAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case currencyCode = "currency_code"
        case netAmounts = "net_amounts"
        case subtotal
        case taxBreakdown = "tax_breakdown"
        case taxTotal = "tax_total"
        case totalAmount = "total_amount"
    }
}