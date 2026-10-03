import Foundation

public struct CargoAiFwbAndFhlChargesDeclaration1: Codable, Hashable, Sendable {
    public let chargeCode: String
    public let currencyCode: String
    public let valuesForCarriage: Double?
    public let valuesForCustom: Double?
    public let valuesForInsurance: Double?
    public let weightOrValuation: CargoAiFwbAndFhlChargesDeclaration1WeightOrValuation?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargeCode: String,
        currencyCode: String,
        valuesForCarriage: Double? = nil,
        valuesForCustom: Double? = nil,
        valuesForInsurance: Double? = nil,
        weightOrValuation: CargoAiFwbAndFhlChargesDeclaration1WeightOrValuation? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargeCode = chargeCode
        self.currencyCode = currencyCode
        self.valuesForCarriage = valuesForCarriage
        self.valuesForCustom = valuesForCustom
        self.valuesForInsurance = valuesForInsurance
        self.weightOrValuation = weightOrValuation
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargeCode = try container.decode(String.self, forKey: .chargeCode)
        self.currencyCode = try container.decode(String.self, forKey: .currencyCode)
        self.valuesForCarriage = try container.decodeIfPresent(Double.self, forKey: .valuesForCarriage)
        self.valuesForCustom = try container.decodeIfPresent(Double.self, forKey: .valuesForCustom)
        self.valuesForInsurance = try container.decodeIfPresent(Double.self, forKey: .valuesForInsurance)
        self.weightOrValuation = try container.decodeIfPresent(CargoAiFwbAndFhlChargesDeclaration1WeightOrValuation.self, forKey: .weightOrValuation)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.chargeCode, forKey: .chargeCode)
        try container.encode(self.currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(self.valuesForCarriage, forKey: .valuesForCarriage)
        try container.encodeIfPresent(self.valuesForCustom, forKey: .valuesForCustom)
        try container.encodeIfPresent(self.valuesForInsurance, forKey: .valuesForInsurance)
        try container.encodeIfPresent(self.weightOrValuation, forKey: .weightOrValuation)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargeCode = "charge_code"
        case currencyCode = "currency_code"
        case valuesForCarriage = "values_for_carriage"
        case valuesForCustom = "values_for_custom"
        case valuesForInsurance = "values_for_insurance"
        case weightOrValuation = "weight_or_valuation"
    }
}