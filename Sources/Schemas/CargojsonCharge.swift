import Foundation

/// [WEBCARGO/CUSTOMER] Rate line item.
public struct CargojsonCharge: Codable, Hashable, Sendable {
    public let chargeableWeight: CargojsonWeight?
    public let classRatePercentage: Double?
    public let rateClassCode: CargojsonRateClassCode?
    public let rateClassCodeBasis: CargojsonRateClassCode?
    public let rateOrCharge: Double?
    public let totalChargeAmount: Double?
    public let uldRateClassType: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargeableWeight: CargojsonWeight? = nil,
        classRatePercentage: Double? = nil,
        rateClassCode: CargojsonRateClassCode? = nil,
        rateClassCodeBasis: CargojsonRateClassCode? = nil,
        rateOrCharge: Double? = nil,
        totalChargeAmount: Double? = nil,
        uldRateClassType: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargeableWeight = chargeableWeight
        self.classRatePercentage = classRatePercentage
        self.rateClassCode = rateClassCode
        self.rateClassCodeBasis = rateClassCodeBasis
        self.rateOrCharge = rateOrCharge
        self.totalChargeAmount = totalChargeAmount
        self.uldRateClassType = uldRateClassType
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargeableWeight = try container.decodeIfPresent(CargojsonWeight.self, forKey: .chargeableWeight)
        self.classRatePercentage = try container.decodeIfPresent(Double.self, forKey: .classRatePercentage)
        self.rateClassCode = try container.decodeIfPresent(CargojsonRateClassCode.self, forKey: .rateClassCode)
        self.rateClassCodeBasis = try container.decodeIfPresent(CargojsonRateClassCode.self, forKey: .rateClassCodeBasis)
        self.rateOrCharge = try container.decodeIfPresent(Double.self, forKey: .rateOrCharge)
        self.totalChargeAmount = try container.decodeIfPresent(Double.self, forKey: .totalChargeAmount)
        self.uldRateClassType = try container.decodeIfPresent(String.self, forKey: .uldRateClassType)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.chargeableWeight, forKey: .chargeableWeight)
        try container.encodeIfPresent(self.classRatePercentage, forKey: .classRatePercentage)
        try container.encodeIfPresent(self.rateClassCode, forKey: .rateClassCode)
        try container.encodeIfPresent(self.rateClassCodeBasis, forKey: .rateClassCodeBasis)
        try container.encodeIfPresent(self.rateOrCharge, forKey: .rateOrCharge)
        try container.encodeIfPresent(self.totalChargeAmount, forKey: .totalChargeAmount)
        try container.encodeIfPresent(self.uldRateClassType, forKey: .uldRateClassType)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargeableWeight
        case classRatePercentage
        case rateClassCode
        case rateClassCodeBasis
        case rateOrCharge
        case totalChargeAmount
        case uldRateClassType
    }
}