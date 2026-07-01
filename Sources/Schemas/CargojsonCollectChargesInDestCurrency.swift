import Foundation

/// [CUSTOMER] Charges Collect expressed in destination currency.
public struct CargojsonCollectChargesInDestCurrency: Codable, Hashable, Sendable {
    public let chargesAtDestination: Double
    public let chargesInDestinationCurrency: Double
    public let currencyConversionRateOfExchange: Double
    public let isoCurrencyCode: String
    public let totalCollectCharges: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargesAtDestination: Double,
        chargesInDestinationCurrency: Double,
        currencyConversionRateOfExchange: Double,
        isoCurrencyCode: String,
        totalCollectCharges: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargesAtDestination = chargesAtDestination
        self.chargesInDestinationCurrency = chargesInDestinationCurrency
        self.currencyConversionRateOfExchange = currencyConversionRateOfExchange
        self.isoCurrencyCode = isoCurrencyCode
        self.totalCollectCharges = totalCollectCharges
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargesAtDestination = try container.decode(Double.self, forKey: .chargesAtDestination)
        self.chargesInDestinationCurrency = try container.decode(Double.self, forKey: .chargesInDestinationCurrency)
        self.currencyConversionRateOfExchange = try container.decode(Double.self, forKey: .currencyConversionRateOfExchange)
        self.isoCurrencyCode = try container.decode(String.self, forKey: .isoCurrencyCode)
        self.totalCollectCharges = try container.decode(Double.self, forKey: .totalCollectCharges)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.chargesAtDestination, forKey: .chargesAtDestination)
        try container.encode(self.chargesInDestinationCurrency, forKey: .chargesInDestinationCurrency)
        try container.encode(self.currencyConversionRateOfExchange, forKey: .currencyConversionRateOfExchange)
        try container.encode(self.isoCurrencyCode, forKey: .isoCurrencyCode)
        try container.encode(self.totalCollectCharges, forKey: .totalCollectCharges)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargesAtDestination
        case chargesInDestinationCurrency
        case currencyConversionRateOfExchange
        case isoCurrencyCode
        case totalCollectCharges
    }
}