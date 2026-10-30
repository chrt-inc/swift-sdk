import Foundation

public struct OrderMinimumChargeRule1: Codable, Hashable, Sendable {
    public let chargedPer: Order?
    public let exportRefSageItemId: String?
    public let lineItemDescription: String
    public let minimumCharge: Double
    public let ruleKey: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargedPer: Order? = nil,
        exportRefSageItemId: String? = nil,
        lineItemDescription: String,
        minimumCharge: Double,
        ruleKey: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargedPer = chargedPer
        self.exportRefSageItemId = exportRefSageItemId
        self.lineItemDescription = lineItemDescription
        self.minimumCharge = minimumCharge
        self.ruleKey = ruleKey
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargedPer = try container.decodeIfPresent(Order.self, forKey: .chargedPer)
        self.exportRefSageItemId = try container.decodeIfPresent(String.self, forKey: .exportRefSageItemId)
        self.lineItemDescription = try container.decode(String.self, forKey: .lineItemDescription)
        self.minimumCharge = try container.decode(Double.self, forKey: .minimumCharge)
        self.ruleKey = try container.decodeIfPresent(String.self, forKey: .ruleKey)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.chargedPer, forKey: .chargedPer)
        try container.encodeIfPresent(self.exportRefSageItemId, forKey: .exportRefSageItemId)
        try container.encode(self.lineItemDescription, forKey: .lineItemDescription)
        try container.encode(self.minimumCharge, forKey: .minimumCharge)
        try container.encodeIfPresent(self.ruleKey, forKey: .ruleKey)
    }

    public enum Order: String, Codable, Hashable, CaseIterable, Sendable {
        case order
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargedPer = "charged_per"
        case exportRefSageItemId = "export_ref__sage__item_id"
        case lineItemDescription = "line_item_description"
        case minimumCharge = "minimum_charge"
        case ruleKey = "rule_key"
    }
}