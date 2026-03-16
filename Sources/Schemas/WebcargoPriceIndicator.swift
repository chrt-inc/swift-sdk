import Foundation

public struct WebcargoPriceIndicator: Codable, Hashable, Sendable {
    public let rateCurrency: String?
    public let rateType: String?
    public let unitOfMeasure: String?
    public let unitRate: String?
    public let totalCharge: String?
    public let validFrom: String?
    public let validTo: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        rateCurrency: String? = nil,
        rateType: String? = nil,
        unitOfMeasure: String? = nil,
        unitRate: String? = nil,
        totalCharge: String? = nil,
        validFrom: String? = nil,
        validTo: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.rateCurrency = rateCurrency
        self.rateType = rateType
        self.unitOfMeasure = unitOfMeasure
        self.unitRate = unitRate
        self.totalCharge = totalCharge
        self.validFrom = validFrom
        self.validTo = validTo
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.rateCurrency = try container.decodeIfPresent(String.self, forKey: .rateCurrency)
        self.rateType = try container.decodeIfPresent(String.self, forKey: .rateType)
        self.unitOfMeasure = try container.decodeIfPresent(String.self, forKey: .unitOfMeasure)
        self.unitRate = try container.decodeIfPresent(String.self, forKey: .unitRate)
        self.totalCharge = try container.decodeIfPresent(String.self, forKey: .totalCharge)
        self.validFrom = try container.decodeIfPresent(String.self, forKey: .validFrom)
        self.validTo = try container.decodeIfPresent(String.self, forKey: .validTo)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.rateCurrency, forKey: .rateCurrency)
        try container.encodeIfPresent(self.rateType, forKey: .rateType)
        try container.encodeIfPresent(self.unitOfMeasure, forKey: .unitOfMeasure)
        try container.encodeIfPresent(self.unitRate, forKey: .unitRate)
        try container.encodeIfPresent(self.totalCharge, forKey: .totalCharge)
        try container.encodeIfPresent(self.validFrom, forKey: .validFrom)
        try container.encodeIfPresent(self.validTo, forKey: .validTo)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case rateCurrency = "rate_currency"
        case rateType = "rate_type"
        case unitOfMeasure = "unit_of_measure"
        case unitRate = "unit_rate"
        case totalCharge = "total_charge"
        case validFrom = "valid_from"
        case validTo = "valid_to"
    }
}