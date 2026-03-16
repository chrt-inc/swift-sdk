import Foundation

/// Reusable weight amount + unit pair.
/// 
/// Used for:
///   - AirWayBill.weight          -> [WEBCARGO] <NetWeight> (gross weight)
///   - Charge.chargeable_weight   -> [WEBCARGO] <TotalChargeableWeight> (billing weight)
///   - ChargeItem.gross_weight    -> [WEBCARGO] <NetWeight>
public struct CargojsonWeight: Codable, Hashable, Sendable {
    public let amount: Double
    public let unit: CargojsonWeightUnit?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        amount: Double,
        unit: CargojsonWeightUnit? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.amount = amount
        self.unit = unit
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.amount = try container.decode(Double.self, forKey: .amount)
        self.unit = try container.decodeIfPresent(CargojsonWeightUnit.self, forKey: .unit)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.amount, forKey: .amount)
        try container.encodeIfPresent(self.unit, forKey: .unit)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
        case unit
    }
}