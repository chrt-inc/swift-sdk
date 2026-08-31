import Foundation

public struct InvoiceLineItemCurrencyConversion1: Codable, Hashable, Sendable {
    /// Units of the target currency per one unit of source_currency_code. unit_price = source_unit_price * conversion_rate.
    public let conversionRate: Double
    public let description: String?
    public let sourceCurrencyCode: BillingCurrencyCodeEnum1
    public let sourceUnitPrice: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        conversionRate: Double,
        description: String? = nil,
        sourceCurrencyCode: BillingCurrencyCodeEnum1,
        sourceUnitPrice: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.conversionRate = conversionRate
        self.description = description
        self.sourceCurrencyCode = sourceCurrencyCode
        self.sourceUnitPrice = sourceUnitPrice
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.conversionRate = try container.decode(Double.self, forKey: .conversionRate)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.sourceCurrencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .sourceCurrencyCode)
        self.sourceUnitPrice = try container.decode(Double.self, forKey: .sourceUnitPrice)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.conversionRate, forKey: .conversionRate)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encode(self.sourceCurrencyCode, forKey: .sourceCurrencyCode)
        try container.encode(self.sourceUnitPrice, forKey: .sourceUnitPrice)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case conversionRate = "conversion_rate"
        case description
        case sourceCurrencyCode = "source_currency_code"
        case sourceUnitPrice = "source_unit_price"
    }
}