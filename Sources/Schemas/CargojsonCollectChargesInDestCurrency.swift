import Foundation

/// [CUSTOMER] Charges Collect expressed in destination currency.
public struct CargojsonCollectChargesInDestCurrency: Codable, Hashable, Sendable {
    public let isoCurrencyCode: String
    public let currencyConversionRateOfExchange: Double
    public let chargesInDestinationCurrency: Double
    public let chargesAtDestination: Double
    public let totalCollectCharges: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        isoCurrencyCode: String,
        currencyConversionRateOfExchange: Double,
        chargesInDestinationCurrency: Double,
        chargesAtDestination: Double,
        totalCollectCharges: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.isoCurrencyCode = isoCurrencyCode
        self.currencyConversionRateOfExchange = currencyConversionRateOfExchange
        self.chargesInDestinationCurrency = chargesInDestinationCurrency
        self.chargesAtDestination = chargesAtDestination
        self.totalCollectCharges = totalCollectCharges
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.isoCurrencyCode = try container.decode(String.self, forKey: .isoCurrencyCode)
        self.currencyConversionRateOfExchange = try container.decode(Double.self, forKey: .currencyConversionRateOfExchange)
        self.chargesInDestinationCurrency = try container.decode(Double.self, forKey: .chargesInDestinationCurrency)
        self.chargesAtDestination = try container.decode(Double.self, forKey: .chargesAtDestination)
        self.totalCollectCharges = try container.decode(Double.self, forKey: .totalCollectCharges)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.isoCurrencyCode, forKey: .isoCurrencyCode)
        try container.encode(self.currencyConversionRateOfExchange, forKey: .currencyConversionRateOfExchange)
        try container.encode(self.chargesInDestinationCurrency, forKey: .chargesInDestinationCurrency)
        try container.encode(self.chargesAtDestination, forKey: .chargesAtDestination)
        try container.encode(self.totalCollectCharges, forKey: .totalCollectCharges)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case isoCurrencyCode
        case currencyConversionRateOfExchange
        case chargesInDestinationCurrency
        case chargesAtDestination
        case totalCollectCharges
    }
}