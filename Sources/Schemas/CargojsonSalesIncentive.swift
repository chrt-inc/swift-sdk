import Foundation

/// [CUSTOMER] Sales incentive information.
public struct CargojsonSalesIncentive: Codable, Hashable, Sendable {
    public let cassIndicator: CargojsonCassIndicator?
    public let chargeAmount: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cassIndicator: CargojsonCassIndicator? = nil,
        chargeAmount: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cassIndicator = cassIndicator
        self.chargeAmount = chargeAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cassIndicator = try container.decodeIfPresent(CargojsonCassIndicator.self, forKey: .cassIndicator)
        self.chargeAmount = try container.decode(Double.self, forKey: .chargeAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.cassIndicator, forKey: .cassIndicator)
        try container.encode(self.chargeAmount, forKey: .chargeAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cassIndicator
        case chargeAmount
    }
}