import Foundation

public struct AttemptChargeRule1: Codable, Hashable, Sendable {
    public let chargedPer: Task?
    public let exportRefSageItemId: String?
    public let lineItemDescription: String
    public let ratePerOccurrence: Double
    public let ruleKey: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargedPer: Task? = nil,
        exportRefSageItemId: String? = nil,
        lineItemDescription: String,
        ratePerOccurrence: Double,
        ruleKey: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargedPer = chargedPer
        self.exportRefSageItemId = exportRefSageItemId
        self.lineItemDescription = lineItemDescription
        self.ratePerOccurrence = ratePerOccurrence
        self.ruleKey = ruleKey
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargedPer = try container.decodeIfPresent(Task.self, forKey: .chargedPer)
        self.exportRefSageItemId = try container.decodeIfPresent(String.self, forKey: .exportRefSageItemId)
        self.lineItemDescription = try container.decode(String.self, forKey: .lineItemDescription)
        self.ratePerOccurrence = try container.decode(Double.self, forKey: .ratePerOccurrence)
        self.ruleKey = try container.decodeIfPresent(String.self, forKey: .ruleKey)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.chargedPer, forKey: .chargedPer)
        try container.encodeIfPresent(self.exportRefSageItemId, forKey: .exportRefSageItemId)
        try container.encode(self.lineItemDescription, forKey: .lineItemDescription)
        try container.encode(self.ratePerOccurrence, forKey: .ratePerOccurrence)
        try container.encodeIfPresent(self.ruleKey, forKey: .ruleKey)
    }

    public enum Task: String, Codable, Hashable, CaseIterable, Sendable {
        case task
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargedPer = "charged_per"
        case exportRefSageItemId = "export_ref__sage__item_id"
        case lineItemDescription = "line_item_description"
        case ratePerOccurrence = "rate_per_occurrence"
        case ruleKey = "rule_key"
    }
}