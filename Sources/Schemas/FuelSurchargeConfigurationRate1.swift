import Foundation

public struct FuelSurchargeConfigurationRate1: Codable, Hashable, Sendable {
    public let effectiveFromDate: String
    public let surchargePercentage: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        effectiveFromDate: String,
        surchargePercentage: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.effectiveFromDate = effectiveFromDate
        self.surchargePercentage = surchargePercentage
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.effectiveFromDate = try container.decode(String.self, forKey: .effectiveFromDate)
        self.surchargePercentage = try container.decode(Double.self, forKey: .surchargePercentage)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.effectiveFromDate, forKey: .effectiveFromDate)
        try container.encode(self.surchargePercentage, forKey: .surchargePercentage)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case effectiveFromDate = "effective_from_date"
        case surchargePercentage = "surcharge_percentage"
    }
}