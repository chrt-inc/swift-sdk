import Foundation

public struct WaitTimeRate1: Codable, Hashable, Sendable {
    public let includedMinutes: Double
    public let ratePerMinute: Double
    public let sageItemId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        includedMinutes: Double,
        ratePerMinute: Double,
        sageItemId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.includedMinutes = includedMinutes
        self.ratePerMinute = ratePerMinute
        self.sageItemId = sageItemId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.includedMinutes = try container.decode(Double.self, forKey: .includedMinutes)
        self.ratePerMinute = try container.decode(Double.self, forKey: .ratePerMinute)
        self.sageItemId = try container.decodeIfPresent(String.self, forKey: .sageItemId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.includedMinutes, forKey: .includedMinutes)
        try container.encode(self.ratePerMinute, forKey: .ratePerMinute)
        try container.encodeIfPresent(self.sageItemId, forKey: .sageItemId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case includedMinutes = "included_minutes"
        case ratePerMinute = "rate_per_minute"
        case sageItemId = "sage_item_id"
    }
}