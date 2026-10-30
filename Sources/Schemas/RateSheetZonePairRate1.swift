import Foundation

public struct RateSheetZonePairRate1: Codable, Hashable, Sendable {
    public let destinationPricingZoneId: String
    public let flatRate: Double
    public let originPricingZoneId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        destinationPricingZoneId: String,
        flatRate: Double,
        originPricingZoneId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.destinationPricingZoneId = destinationPricingZoneId
        self.flatRate = flatRate
        self.originPricingZoneId = originPricingZoneId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.destinationPricingZoneId = try container.decode(String.self, forKey: .destinationPricingZoneId)
        self.flatRate = try container.decode(Double.self, forKey: .flatRate)
        self.originPricingZoneId = try container.decode(String.self, forKey: .originPricingZoneId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.destinationPricingZoneId, forKey: .destinationPricingZoneId)
        try container.encode(self.flatRate, forKey: .flatRate)
        try container.encode(self.originPricingZoneId, forKey: .originPricingZoneId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case destinationPricingZoneId = "destination_pricing_zone_id"
        case flatRate = "flat_rate"
        case originPricingZoneId = "origin_pricing_zone_id"
    }
}