import Foundation

public struct ZoneToZoneChargeRule1: Codable, Hashable, Sendable {
    public let chargedPer: RateSheetRuleChargedPerEnum1?
    public let exportRefSageItemId: String?
    public let lineItemDescription: String
    public let ratesApplyBothDirections: Bool?
    public let ruleKey: String?
    public let zonePairRates: [RateSheetZonePairRate1]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargedPer: RateSheetRuleChargedPerEnum1? = nil,
        exportRefSageItemId: String? = nil,
        lineItemDescription: String,
        ratesApplyBothDirections: Bool? = nil,
        ruleKey: String? = nil,
        zonePairRates: [RateSheetZonePairRate1],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargedPer = chargedPer
        self.exportRefSageItemId = exportRefSageItemId
        self.lineItemDescription = lineItemDescription
        self.ratesApplyBothDirections = ratesApplyBothDirections
        self.ruleKey = ruleKey
        self.zonePairRates = zonePairRates
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargedPer = try container.decodeIfPresent(RateSheetRuleChargedPerEnum1.self, forKey: .chargedPer)
        self.exportRefSageItemId = try container.decodeIfPresent(String.self, forKey: .exportRefSageItemId)
        self.lineItemDescription = try container.decode(String.self, forKey: .lineItemDescription)
        self.ratesApplyBothDirections = try container.decodeIfPresent(Bool.self, forKey: .ratesApplyBothDirections)
        self.ruleKey = try container.decodeIfPresent(String.self, forKey: .ruleKey)
        self.zonePairRates = try container.decode([RateSheetZonePairRate1].self, forKey: .zonePairRates)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.chargedPer, forKey: .chargedPer)
        try container.encodeIfPresent(self.exportRefSageItemId, forKey: .exportRefSageItemId)
        try container.encode(self.lineItemDescription, forKey: .lineItemDescription)
        try container.encodeIfPresent(self.ratesApplyBothDirections, forKey: .ratesApplyBothDirections)
        try container.encodeIfPresent(self.ruleKey, forKey: .ruleKey)
        try container.encode(self.zonePairRates, forKey: .zonePairRates)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargedPer = "charged_per"
        case exportRefSageItemId = "export_ref__sage__item_id"
        case lineItemDescription = "line_item_description"
        case ratesApplyBothDirections = "rates_apply_both_directions"
        case ruleKey = "rule_key"
        case zonePairRates = "zone_pair_rates"
    }
}