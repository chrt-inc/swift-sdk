import Foundation

public struct PieceCountChargeRule1: Codable, Hashable, Sendable {
    public let chargedPer: PieceCountChargeRule1ChargedPer?
    public let exportRefSageItemId: String?
    public let includedPieces: Int
    public let lineItemDescription: String
    public let quantityBasis: RateSheetRuleQuantityBasisEnum1
    public let ratePerPiece: Double
    public let ruleKey: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargedPer: PieceCountChargeRule1ChargedPer? = nil,
        exportRefSageItemId: String? = nil,
        includedPieces: Int,
        lineItemDescription: String,
        quantityBasis: RateSheetRuleQuantityBasisEnum1,
        ratePerPiece: Double,
        ruleKey: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargedPer = chargedPer
        self.exportRefSageItemId = exportRefSageItemId
        self.includedPieces = includedPieces
        self.lineItemDescription = lineItemDescription
        self.quantityBasis = quantityBasis
        self.ratePerPiece = ratePerPiece
        self.ruleKey = ruleKey
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargedPer = try container.decodeIfPresent(PieceCountChargeRule1ChargedPer.self, forKey: .chargedPer)
        self.exportRefSageItemId = try container.decodeIfPresent(String.self, forKey: .exportRefSageItemId)
        self.includedPieces = try container.decode(Int.self, forKey: .includedPieces)
        self.lineItemDescription = try container.decode(String.self, forKey: .lineItemDescription)
        self.quantityBasis = try container.decode(RateSheetRuleQuantityBasisEnum1.self, forKey: .quantityBasis)
        self.ratePerPiece = try container.decode(Double.self, forKey: .ratePerPiece)
        self.ruleKey = try container.decodeIfPresent(String.self, forKey: .ruleKey)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.chargedPer, forKey: .chargedPer)
        try container.encodeIfPresent(self.exportRefSageItemId, forKey: .exportRefSageItemId)
        try container.encode(self.includedPieces, forKey: .includedPieces)
        try container.encode(self.lineItemDescription, forKey: .lineItemDescription)
        try container.encode(self.quantityBasis, forKey: .quantityBasis)
        try container.encode(self.ratePerPiece, forKey: .ratePerPiece)
        try container.encodeIfPresent(self.ruleKey, forKey: .ruleKey)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargedPer = "charged_per"
        case exportRefSageItemId = "export_ref__sage__item_id"
        case includedPieces = "included_pieces"
        case lineItemDescription = "line_item_description"
        case quantityBasis = "quantity_basis"
        case ratePerPiece = "rate_per_piece"
        case ruleKey = "rule_key"
    }
}