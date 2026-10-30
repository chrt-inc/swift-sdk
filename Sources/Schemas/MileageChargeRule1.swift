import Foundation

public struct MileageChargeRule1: Codable, Hashable, Sendable {
    public let chargedPer: MileageChargeRule1ChargedPer?
    public let endsAtTotalDistanceMiles: Double?
    public let exportRefSageItemId: String?
    public let includedDistanceMiles: Double?
    public let lineItemDescription: String
    public let minimumCharge: Double?
    public let ratePerMile: Double
    public let ruleKey: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargedPer: MileageChargeRule1ChargedPer? = nil,
        endsAtTotalDistanceMiles: Double? = nil,
        exportRefSageItemId: String? = nil,
        includedDistanceMiles: Double? = nil,
        lineItemDescription: String,
        minimumCharge: Double? = nil,
        ratePerMile: Double,
        ruleKey: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargedPer = chargedPer
        self.endsAtTotalDistanceMiles = endsAtTotalDistanceMiles
        self.exportRefSageItemId = exportRefSageItemId
        self.includedDistanceMiles = includedDistanceMiles
        self.lineItemDescription = lineItemDescription
        self.minimumCharge = minimumCharge
        self.ratePerMile = ratePerMile
        self.ruleKey = ruleKey
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargedPer = try container.decodeIfPresent(MileageChargeRule1ChargedPer.self, forKey: .chargedPer)
        self.endsAtTotalDistanceMiles = try container.decodeIfPresent(Double.self, forKey: .endsAtTotalDistanceMiles)
        self.exportRefSageItemId = try container.decodeIfPresent(String.self, forKey: .exportRefSageItemId)
        self.includedDistanceMiles = try container.decodeIfPresent(Double.self, forKey: .includedDistanceMiles)
        self.lineItemDescription = try container.decode(String.self, forKey: .lineItemDescription)
        self.minimumCharge = try container.decodeIfPresent(Double.self, forKey: .minimumCharge)
        self.ratePerMile = try container.decode(Double.self, forKey: .ratePerMile)
        self.ruleKey = try container.decodeIfPresent(String.self, forKey: .ruleKey)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.chargedPer, forKey: .chargedPer)
        try container.encodeIfPresent(self.endsAtTotalDistanceMiles, forKey: .endsAtTotalDistanceMiles)
        try container.encodeIfPresent(self.exportRefSageItemId, forKey: .exportRefSageItemId)
        try container.encodeIfPresent(self.includedDistanceMiles, forKey: .includedDistanceMiles)
        try container.encode(self.lineItemDescription, forKey: .lineItemDescription)
        try container.encodeIfPresent(self.minimumCharge, forKey: .minimumCharge)
        try container.encode(self.ratePerMile, forKey: .ratePerMile)
        try container.encodeIfPresent(self.ruleKey, forKey: .ruleKey)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargedPer = "charged_per"
        case endsAtTotalDistanceMiles = "ends_at_total_distance_miles"
        case exportRefSageItemId = "export_ref__sage__item_id"
        case includedDistanceMiles = "included_distance_miles"
        case lineItemDescription = "line_item_description"
        case minimumCharge = "minimum_charge"
        case ratePerMile = "rate_per_mile"
        case ruleKey = "rule_key"
    }
}