import Foundation

public struct RateSheetWeightBreak1: Codable, Hashable, Sendable {
    public let ratePerWeightUnit: Double
    public let startsAtWeight: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        ratePerWeightUnit: Double,
        startsAtWeight: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.ratePerWeightUnit = ratePerWeightUnit
        self.startsAtWeight = startsAtWeight
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ratePerWeightUnit = try container.decode(Double.self, forKey: .ratePerWeightUnit)
        self.startsAtWeight = try container.decode(Double.self, forKey: .startsAtWeight)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.ratePerWeightUnit, forKey: .ratePerWeightUnit)
        try container.encode(self.startsAtWeight, forKey: .startsAtWeight)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case ratePerWeightUnit = "rate_per_weight_unit"
        case startsAtWeight = "starts_at_weight"
    }
}