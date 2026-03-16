import Foundation

/// [WEBCARGO/CUSTOMER] Rate line item.
public struct CargojsonCharge: Codable, Hashable, Sendable {
    public let chargeableWeight: CargojsonWeight?
    public let rateClassCode: CargojsonRateClassCode?
    public let rateClassCodeBasis: CargojsonRateClassCode?
    public let classRatePercentage: Double?
    public let uldRateClassType: String?
    public let rateOrCharge: Double?
    public let totalChargeAmount: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargeableWeight: CargojsonWeight? = nil,
        rateClassCode: CargojsonRateClassCode? = nil,
        rateClassCodeBasis: CargojsonRateClassCode? = nil,
        classRatePercentage: Double? = nil,
        uldRateClassType: String? = nil,
        rateOrCharge: Double? = nil,
        totalChargeAmount: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargeableWeight = chargeableWeight
        self.rateClassCode = rateClassCode
        self.rateClassCodeBasis = rateClassCodeBasis
        self.classRatePercentage = classRatePercentage
        self.uldRateClassType = uldRateClassType
        self.rateOrCharge = rateOrCharge
        self.totalChargeAmount = totalChargeAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargeableWeight = try container.decodeIfPresent(CargojsonWeight.self, forKey: .chargeableWeight)
        self.rateClassCode = try container.decodeIfPresent(CargojsonRateClassCode.self, forKey: .rateClassCode)
        self.rateClassCodeBasis = try container.decodeIfPresent(CargojsonRateClassCode.self, forKey: .rateClassCodeBasis)
        self.classRatePercentage = try container.decodeIfPresent(Double.self, forKey: .classRatePercentage)
        self.uldRateClassType = try container.decodeIfPresent(String.self, forKey: .uldRateClassType)
        self.rateOrCharge = try container.decodeIfPresent(Double.self, forKey: .rateOrCharge)
        self.totalChargeAmount = try container.decodeIfPresent(Double.self, forKey: .totalChargeAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.chargeableWeight, forKey: .chargeableWeight)
        try container.encodeIfPresent(self.rateClassCode, forKey: .rateClassCode)
        try container.encodeIfPresent(self.rateClassCodeBasis, forKey: .rateClassCodeBasis)
        try container.encodeIfPresent(self.classRatePercentage, forKey: .classRatePercentage)
        try container.encodeIfPresent(self.uldRateClassType, forKey: .uldRateClassType)
        try container.encodeIfPresent(self.rateOrCharge, forKey: .rateOrCharge)
        try container.encodeIfPresent(self.totalChargeAmount, forKey: .totalChargeAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargeableWeight
        case rateClassCode
        case rateClassCodeBasis
        case classRatePercentage
        case uldRateClassType
        case rateOrCharge
        case totalChargeAmount
    }
}