import Foundation

/// [CUSTOMER] Sales incentive information.
public struct CargojsonSalesIncentive: Codable, Hashable, Sendable {
    public let chargeAmount: Double
    public let cassIndicator: CargojsonCassIndicator?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargeAmount: Double,
        cassIndicator: CargojsonCassIndicator? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargeAmount = chargeAmount
        self.cassIndicator = cassIndicator
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargeAmount = try container.decode(Double.self, forKey: .chargeAmount)
        self.cassIndicator = try container.decodeIfPresent(CargojsonCassIndicator.self, forKey: .cassIndicator)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.chargeAmount, forKey: .chargeAmount)
        try container.encodeIfPresent(self.cassIndicator, forKey: .cassIndicator)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargeAmount
        case cassIndicator
    }
}