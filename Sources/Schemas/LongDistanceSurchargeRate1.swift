import Foundation

public struct LongDistanceSurchargeRate1: Codable, Hashable, Sendable {
    public let ratePerMile: Double
    public let sageItemId: String?
    public let startsAtTotalDistanceMiles: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        ratePerMile: Double,
        sageItemId: String? = nil,
        startsAtTotalDistanceMiles: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.ratePerMile = ratePerMile
        self.sageItemId = sageItemId
        self.startsAtTotalDistanceMiles = startsAtTotalDistanceMiles
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ratePerMile = try container.decode(Double.self, forKey: .ratePerMile)
        self.sageItemId = try container.decodeIfPresent(String.self, forKey: .sageItemId)
        self.startsAtTotalDistanceMiles = try container.decode(Double.self, forKey: .startsAtTotalDistanceMiles)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.ratePerMile, forKey: .ratePerMile)
        try container.encodeIfPresent(self.sageItemId, forKey: .sageItemId)
        try container.encode(self.startsAtTotalDistanceMiles, forKey: .startsAtTotalDistanceMiles)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case ratePerMile = "rate_per_mile"
        case sageItemId = "sage_item_id"
        case startsAtTotalDistanceMiles = "starts_at_total_distance_miles"
    }
}