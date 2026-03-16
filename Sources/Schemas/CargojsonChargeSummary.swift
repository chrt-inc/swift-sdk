import Foundation

/// [CUSTOMER] Prepaid or collect charge totals.
/// One of prepaid or collect charge summary must be given.
public struct CargojsonChargeSummary: Codable, Hashable, Sendable {
    public let totalWeightCharge: Double?
    public let valuationCharge: Double?
    public let taxes: Double?
    public let totalOtherChargesDueAgent: Double?
    public let totalOtherChargesDueCarrier: Double?
    public let chargeSummaryTotal: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        totalWeightCharge: Double? = nil,
        valuationCharge: Double? = nil,
        taxes: Double? = nil,
        totalOtherChargesDueAgent: Double? = nil,
        totalOtherChargesDueCarrier: Double? = nil,
        chargeSummaryTotal: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.totalWeightCharge = totalWeightCharge
        self.valuationCharge = valuationCharge
        self.taxes = taxes
        self.totalOtherChargesDueAgent = totalOtherChargesDueAgent
        self.totalOtherChargesDueCarrier = totalOtherChargesDueCarrier
        self.chargeSummaryTotal = chargeSummaryTotal
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.totalWeightCharge = try container.decodeIfPresent(Double.self, forKey: .totalWeightCharge)
        self.valuationCharge = try container.decodeIfPresent(Double.self, forKey: .valuationCharge)
        self.taxes = try container.decodeIfPresent(Double.self, forKey: .taxes)
        self.totalOtherChargesDueAgent = try container.decodeIfPresent(Double.self, forKey: .totalOtherChargesDueAgent)
        self.totalOtherChargesDueCarrier = try container.decodeIfPresent(Double.self, forKey: .totalOtherChargesDueCarrier)
        self.chargeSummaryTotal = try container.decode(Double.self, forKey: .chargeSummaryTotal)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.totalWeightCharge, forKey: .totalWeightCharge)
        try container.encodeIfPresent(self.valuationCharge, forKey: .valuationCharge)
        try container.encodeIfPresent(self.taxes, forKey: .taxes)
        try container.encodeIfPresent(self.totalOtherChargesDueAgent, forKey: .totalOtherChargesDueAgent)
        try container.encodeIfPresent(self.totalOtherChargesDueCarrier, forKey: .totalOtherChargesDueCarrier)
        try container.encode(self.chargeSummaryTotal, forKey: .chargeSummaryTotal)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case totalWeightCharge
        case valuationCharge
        case taxes
        case totalOtherChargesDueAgent
        case totalOtherChargesDueCarrier
        case chargeSummaryTotal
    }
}