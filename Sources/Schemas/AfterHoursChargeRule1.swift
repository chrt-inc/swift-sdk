import Foundation

public struct AfterHoursChargeRule1: Codable, Hashable, Sendable {
    public let chargedPer: RateSheetRuleChargedPerEnum1?
    public let exportRefSageItemId: String?
    public let flatRate: Double
    public let lineItemDescription: String
    public let ruleKey: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargedPer: RateSheetRuleChargedPerEnum1? = nil,
        exportRefSageItemId: String? = nil,
        flatRate: Double,
        lineItemDescription: String,
        ruleKey: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargedPer = chargedPer
        self.exportRefSageItemId = exportRefSageItemId
        self.flatRate = flatRate
        self.lineItemDescription = lineItemDescription
        self.ruleKey = ruleKey
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargedPer = try container.decodeIfPresent(RateSheetRuleChargedPerEnum1.self, forKey: .chargedPer)
        self.exportRefSageItemId = try container.decodeIfPresent(String.self, forKey: .exportRefSageItemId)
        self.flatRate = try container.decode(Double.self, forKey: .flatRate)
        self.lineItemDescription = try container.decode(String.self, forKey: .lineItemDescription)
        self.ruleKey = try container.decodeIfPresent(String.self, forKey: .ruleKey)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.chargedPer, forKey: .chargedPer)
        try container.encodeIfPresent(self.exportRefSageItemId, forKey: .exportRefSageItemId)
        try container.encode(self.flatRate, forKey: .flatRate)
        try container.encode(self.lineItemDescription, forKey: .lineItemDescription)
        try container.encodeIfPresent(self.ruleKey, forKey: .ruleKey)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargedPer = "charged_per"
        case exportRefSageItemId = "export_ref__sage__item_id"
        case flatRate = "flat_rate"
        case lineItemDescription = "line_item_description"
        case ruleKey = "rule_key"
    }
}