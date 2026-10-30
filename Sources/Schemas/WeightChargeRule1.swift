import Foundation

public struct WeightChargeRule1: Codable, Hashable, Sendable {
    public let chargedPer: WeightChargeRule1ChargedPer?
    public let dimFactorCubicInchesPerPound: Double?
    public let exportRefSageItemId: String?
    public let includedWeight: Double
    public let lineItemDescription: String
    public let minimumCharge: Double?
    public let quantityBasis: RateSheetRuleQuantityBasisEnum1
    public let ratePerWeightUnit: Double
    public let ruleKey: String?
    public let weightBreaks: [RateSheetWeightBreak1]?
    public let weightType: RateSheetRuleWeightTypeEnum1
    public let weightUnit: RateSheetRuleWeightUnitEnum1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargedPer: WeightChargeRule1ChargedPer? = nil,
        dimFactorCubicInchesPerPound: Double? = nil,
        exportRefSageItemId: String? = nil,
        includedWeight: Double,
        lineItemDescription: String,
        minimumCharge: Double? = nil,
        quantityBasis: RateSheetRuleQuantityBasisEnum1,
        ratePerWeightUnit: Double,
        ruleKey: String? = nil,
        weightBreaks: [RateSheetWeightBreak1]? = nil,
        weightType: RateSheetRuleWeightTypeEnum1,
        weightUnit: RateSheetRuleWeightUnitEnum1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargedPer = chargedPer
        self.dimFactorCubicInchesPerPound = dimFactorCubicInchesPerPound
        self.exportRefSageItemId = exportRefSageItemId
        self.includedWeight = includedWeight
        self.lineItemDescription = lineItemDescription
        self.minimumCharge = minimumCharge
        self.quantityBasis = quantityBasis
        self.ratePerWeightUnit = ratePerWeightUnit
        self.ruleKey = ruleKey
        self.weightBreaks = weightBreaks
        self.weightType = weightType
        self.weightUnit = weightUnit
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargedPer = try container.decodeIfPresent(WeightChargeRule1ChargedPer.self, forKey: .chargedPer)
        self.dimFactorCubicInchesPerPound = try container.decodeIfPresent(Double.self, forKey: .dimFactorCubicInchesPerPound)
        self.exportRefSageItemId = try container.decodeIfPresent(String.self, forKey: .exportRefSageItemId)
        self.includedWeight = try container.decode(Double.self, forKey: .includedWeight)
        self.lineItemDescription = try container.decode(String.self, forKey: .lineItemDescription)
        self.minimumCharge = try container.decodeIfPresent(Double.self, forKey: .minimumCharge)
        self.quantityBasis = try container.decode(RateSheetRuleQuantityBasisEnum1.self, forKey: .quantityBasis)
        self.ratePerWeightUnit = try container.decode(Double.self, forKey: .ratePerWeightUnit)
        self.ruleKey = try container.decodeIfPresent(String.self, forKey: .ruleKey)
        self.weightBreaks = try container.decodeIfPresent([RateSheetWeightBreak1].self, forKey: .weightBreaks)
        self.weightType = try container.decode(RateSheetRuleWeightTypeEnum1.self, forKey: .weightType)
        self.weightUnit = try container.decode(RateSheetRuleWeightUnitEnum1.self, forKey: .weightUnit)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.chargedPer, forKey: .chargedPer)
        try container.encodeIfPresent(self.dimFactorCubicInchesPerPound, forKey: .dimFactorCubicInchesPerPound)
        try container.encodeIfPresent(self.exportRefSageItemId, forKey: .exportRefSageItemId)
        try container.encode(self.includedWeight, forKey: .includedWeight)
        try container.encode(self.lineItemDescription, forKey: .lineItemDescription)
        try container.encodeIfPresent(self.minimumCharge, forKey: .minimumCharge)
        try container.encode(self.quantityBasis, forKey: .quantityBasis)
        try container.encode(self.ratePerWeightUnit, forKey: .ratePerWeightUnit)
        try container.encodeIfPresent(self.ruleKey, forKey: .ruleKey)
        try container.encodeIfPresent(self.weightBreaks, forKey: .weightBreaks)
        try container.encode(self.weightType, forKey: .weightType)
        try container.encode(self.weightUnit, forKey: .weightUnit)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargedPer = "charged_per"
        case dimFactorCubicInchesPerPound = "dim_factor_cubic_inches_per_pound"
        case exportRefSageItemId = "export_ref__sage__item_id"
        case includedWeight = "included_weight"
        case lineItemDescription = "line_item_description"
        case minimumCharge = "minimum_charge"
        case quantityBasis = "quantity_basis"
        case ratePerWeightUnit = "rate_per_weight_unit"
        case ruleKey = "rule_key"
        case weightBreaks = "weight_breaks"
        case weightType = "weight_type"
        case weightUnit = "weight_unit"
    }
}