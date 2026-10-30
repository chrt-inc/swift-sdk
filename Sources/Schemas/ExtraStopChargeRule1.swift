import Foundation

public struct ExtraStopChargeRule1: Codable, Hashable, Sendable {
    public let attemptedStopsCountAsStops: Bool?
    public let chargedPer: TaskGroup?
    public let exportRefSageItemId: String?
    public let includedStops: Int?
    public let lineItemDescription: String
    public let ratePerExtraStop: Double
    public let ruleKey: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        attemptedStopsCountAsStops: Bool? = nil,
        chargedPer: TaskGroup? = nil,
        exportRefSageItemId: String? = nil,
        includedStops: Int? = nil,
        lineItemDescription: String,
        ratePerExtraStop: Double,
        ruleKey: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.attemptedStopsCountAsStops = attemptedStopsCountAsStops
        self.chargedPer = chargedPer
        self.exportRefSageItemId = exportRefSageItemId
        self.includedStops = includedStops
        self.lineItemDescription = lineItemDescription
        self.ratePerExtraStop = ratePerExtraStop
        self.ruleKey = ruleKey
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.attemptedStopsCountAsStops = try container.decodeIfPresent(Bool.self, forKey: .attemptedStopsCountAsStops)
        self.chargedPer = try container.decodeIfPresent(TaskGroup.self, forKey: .chargedPer)
        self.exportRefSageItemId = try container.decodeIfPresent(String.self, forKey: .exportRefSageItemId)
        self.includedStops = try container.decodeIfPresent(Int.self, forKey: .includedStops)
        self.lineItemDescription = try container.decode(String.self, forKey: .lineItemDescription)
        self.ratePerExtraStop = try container.decode(Double.self, forKey: .ratePerExtraStop)
        self.ruleKey = try container.decodeIfPresent(String.self, forKey: .ruleKey)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.attemptedStopsCountAsStops, forKey: .attemptedStopsCountAsStops)
        try container.encodeIfPresent(self.chargedPer, forKey: .chargedPer)
        try container.encodeIfPresent(self.exportRefSageItemId, forKey: .exportRefSageItemId)
        try container.encodeIfPresent(self.includedStops, forKey: .includedStops)
        try container.encode(self.lineItemDescription, forKey: .lineItemDescription)
        try container.encode(self.ratePerExtraStop, forKey: .ratePerExtraStop)
        try container.encodeIfPresent(self.ruleKey, forKey: .ruleKey)
    }

    public enum TaskGroup: String, Codable, Hashable, CaseIterable, Sendable {
        case taskGroup = "task_group"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case attemptedStopsCountAsStops = "attempted_stops_count_as_stops"
        case chargedPer = "charged_per"
        case exportRefSageItemId = "export_ref__sage__item_id"
        case includedStops = "included_stops"
        case lineItemDescription = "line_item_description"
        case ratePerExtraStop = "rate_per_extra_stop"
        case ruleKey = "rule_key"
    }
}