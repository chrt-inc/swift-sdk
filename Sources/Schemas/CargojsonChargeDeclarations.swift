import Foundation

/// [CUSTOMER/WEBCARGO] Currency from WebCargo <PriceIndicator>,
/// payment conditions from customer's commercial terms.
public struct CargojsonChargeDeclarations: Codable, Hashable, Sendable {
    public let chargeCode: CargojsonChargeCode?
    public let declaredValueForCarriage: Double?
    public let declaredValueForCustoms: Double?
    public let declaredValueForInsurance: Double?
    public let isoCurrencyCode: String
    public let paymentOtherCharges: CargojsonPaymentCondition?
    public let paymentWeightValuation: CargojsonPaymentCondition?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargeCode: CargojsonChargeCode? = nil,
        declaredValueForCarriage: Double? = nil,
        declaredValueForCustoms: Double? = nil,
        declaredValueForInsurance: Double? = nil,
        isoCurrencyCode: String,
        paymentOtherCharges: CargojsonPaymentCondition? = nil,
        paymentWeightValuation: CargojsonPaymentCondition? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargeCode = chargeCode
        self.declaredValueForCarriage = declaredValueForCarriage
        self.declaredValueForCustoms = declaredValueForCustoms
        self.declaredValueForInsurance = declaredValueForInsurance
        self.isoCurrencyCode = isoCurrencyCode
        self.paymentOtherCharges = paymentOtherCharges
        self.paymentWeightValuation = paymentWeightValuation
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargeCode = try container.decodeIfPresent(CargojsonChargeCode.self, forKey: .chargeCode)
        self.declaredValueForCarriage = try container.decodeIfPresent(Double.self, forKey: .declaredValueForCarriage)
        self.declaredValueForCustoms = try container.decodeIfPresent(Double.self, forKey: .declaredValueForCustoms)
        self.declaredValueForInsurance = try container.decodeIfPresent(Double.self, forKey: .declaredValueForInsurance)
        self.isoCurrencyCode = try container.decode(String.self, forKey: .isoCurrencyCode)
        self.paymentOtherCharges = try container.decodeIfPresent(CargojsonPaymentCondition.self, forKey: .paymentOtherCharges)
        self.paymentWeightValuation = try container.decodeIfPresent(CargojsonPaymentCondition.self, forKey: .paymentWeightValuation)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.chargeCode, forKey: .chargeCode)
        try container.encodeIfPresent(self.declaredValueForCarriage, forKey: .declaredValueForCarriage)
        try container.encodeIfPresent(self.declaredValueForCustoms, forKey: .declaredValueForCustoms)
        try container.encodeIfPresent(self.declaredValueForInsurance, forKey: .declaredValueForInsurance)
        try container.encode(self.isoCurrencyCode, forKey: .isoCurrencyCode)
        try container.encodeIfPresent(self.paymentOtherCharges, forKey: .paymentOtherCharges)
        try container.encodeIfPresent(self.paymentWeightValuation, forKey: .paymentWeightValuation)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargeCode
        case declaredValueForCarriage
        case declaredValueForCustoms
        case declaredValueForInsurance
        case isoCurrencyCode
        case paymentOtherCharges = "payment_OtherCharges"
        case paymentWeightValuation = "payment_WeightValuation"
    }
}