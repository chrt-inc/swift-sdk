import Foundation

public struct OrderBillingCurrencyTotals1: Codable, Hashable, Sendable {
    public let accountsPayableTotalAmount: Double
    public let accountsReceivableTotalAmount: Double
    public let currencyCode: BillingCurrencyCodeEnum1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountsPayableTotalAmount: Double,
        accountsReceivableTotalAmount: Double,
        currencyCode: BillingCurrencyCodeEnum1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountsPayableTotalAmount = accountsPayableTotalAmount
        self.accountsReceivableTotalAmount = accountsReceivableTotalAmount
        self.currencyCode = currencyCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountsPayableTotalAmount = try container.decode(Double.self, forKey: .accountsPayableTotalAmount)
        self.accountsReceivableTotalAmount = try container.decode(Double.self, forKey: .accountsReceivableTotalAmount)
        self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.accountsPayableTotalAmount, forKey: .accountsPayableTotalAmount)
        try container.encode(self.accountsReceivableTotalAmount, forKey: .accountsReceivableTotalAmount)
        try container.encode(self.currencyCode, forKey: .currencyCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountsPayableTotalAmount = "accounts_payable_total_amount"
        case accountsReceivableTotalAmount = "accounts_receivable_total_amount"
        case currencyCode = "currency_code"
    }
}