import Foundation

public struct WaitTimeChargeRule1: Codable, Hashable, Sendable {
    public let chargedPer: Task?
    public let exportRefSageItemId: String?
    public let includedWaitMinutes: Double
    public let lineItemDescription: String
    public let ratePerWaitMinute: Double
    public let ruleKey: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargedPer: Task? = nil,
        exportRefSageItemId: String? = nil,
        includedWaitMinutes: Double,
        lineItemDescription: String,
        ratePerWaitMinute: Double,
        ruleKey: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargedPer = chargedPer
        self.exportRefSageItemId = exportRefSageItemId
        self.includedWaitMinutes = includedWaitMinutes
        self.lineItemDescription = lineItemDescription
        self.ratePerWaitMinute = ratePerWaitMinute
        self.ruleKey = ruleKey
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargedPer = try container.decodeIfPresent(Task.self, forKey: .chargedPer)
        self.exportRefSageItemId = try container.decodeIfPresent(String.self, forKey: .exportRefSageItemId)
        self.includedWaitMinutes = try container.decode(Double.self, forKey: .includedWaitMinutes)
        self.lineItemDescription = try container.decode(String.self, forKey: .lineItemDescription)
        self.ratePerWaitMinute = try container.decode(Double.self, forKey: .ratePerWaitMinute)
        self.ruleKey = try container.decodeIfPresent(String.self, forKey: .ruleKey)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.chargedPer, forKey: .chargedPer)
        try container.encodeIfPresent(self.exportRefSageItemId, forKey: .exportRefSageItemId)
        try container.encode(self.includedWaitMinutes, forKey: .includedWaitMinutes)
        try container.encode(self.lineItemDescription, forKey: .lineItemDescription)
        try container.encode(self.ratePerWaitMinute, forKey: .ratePerWaitMinute)
        try container.encodeIfPresent(self.ruleKey, forKey: .ruleKey)
    }

    public enum Task: String, Codable, Hashable, CaseIterable, Sendable {
        case task
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargedPer = "charged_per"
        case exportRefSageItemId = "export_ref__sage__item_id"
        case includedWaitMinutes = "included_wait_minutes"
        case lineItemDescription = "line_item_description"
        case ratePerWaitMinute = "rate_per_wait_minute"
        case ruleKey = "rule_key"
    }
}