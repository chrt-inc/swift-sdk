import Foundation

/// [CUSTOMER] Commission information concerning CASS settlement.
public struct CargojsonCommissionInfo: Codable, Hashable, Sendable {
    public let amountCassSettlementFactor: Double?
    public let percentageCassSettlementFactor: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        amountCassSettlementFactor: Double? = nil,
        percentageCassSettlementFactor: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.amountCassSettlementFactor = amountCassSettlementFactor
        self.percentageCassSettlementFactor = percentageCassSettlementFactor
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.amountCassSettlementFactor = try container.decodeIfPresent(Double.self, forKey: .amountCassSettlementFactor)
        self.percentageCassSettlementFactor = try container.decodeIfPresent(Double.self, forKey: .percentageCassSettlementFactor)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.amountCassSettlementFactor, forKey: .amountCassSettlementFactor)
        try container.encodeIfPresent(self.percentageCassSettlementFactor, forKey: .percentageCassSettlementFactor)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case amountCassSettlementFactor = "amountCASSSettlementFactor"
        case percentageCassSettlementFactor = "percentageCASSSettlementFactor"
    }
}