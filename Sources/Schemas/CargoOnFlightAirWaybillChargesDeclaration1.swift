import Foundation

/// Currency, payment, and declared values, for the master or a house air waybill.
public struct CargoOnFlightAirWaybillChargesDeclaration1: Codable, Hashable, Sendable {
    public let chargeCode: CargoOnFlightAirWaybillChargeCodeEnum1
    public let currencyCode: String
    public let declaredValueForCarriage: Double?
    public let declaredValueForCustoms: Double?
    public let declaredValueForInsurance: Double?
    public let paymentOtherCharges: CargoOnFlightAirWaybillPaymentConditionEnum1?
    public let paymentWeightValuation: CargoOnFlightAirWaybillPaymentConditionEnum1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargeCode: CargoOnFlightAirWaybillChargeCodeEnum1,
        currencyCode: String,
        declaredValueForCarriage: Double? = nil,
        declaredValueForCustoms: Double? = nil,
        declaredValueForInsurance: Double? = nil,
        paymentOtherCharges: CargoOnFlightAirWaybillPaymentConditionEnum1? = nil,
        paymentWeightValuation: CargoOnFlightAirWaybillPaymentConditionEnum1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargeCode = chargeCode
        self.currencyCode = currencyCode
        self.declaredValueForCarriage = declaredValueForCarriage
        self.declaredValueForCustoms = declaredValueForCustoms
        self.declaredValueForInsurance = declaredValueForInsurance
        self.paymentOtherCharges = paymentOtherCharges
        self.paymentWeightValuation = paymentWeightValuation
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargeCode = try container.decode(CargoOnFlightAirWaybillChargeCodeEnum1.self, forKey: .chargeCode)
        self.currencyCode = try container.decode(String.self, forKey: .currencyCode)
        self.declaredValueForCarriage = try container.decodeIfPresent(Double.self, forKey: .declaredValueForCarriage)
        self.declaredValueForCustoms = try container.decodeIfPresent(Double.self, forKey: .declaredValueForCustoms)
        self.declaredValueForInsurance = try container.decodeIfPresent(Double.self, forKey: .declaredValueForInsurance)
        self.paymentOtherCharges = try container.decodeIfPresent(CargoOnFlightAirWaybillPaymentConditionEnum1.self, forKey: .paymentOtherCharges)
        self.paymentWeightValuation = try container.decodeIfPresent(CargoOnFlightAirWaybillPaymentConditionEnum1.self, forKey: .paymentWeightValuation)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.chargeCode, forKey: .chargeCode)
        try container.encode(self.currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(self.declaredValueForCarriage, forKey: .declaredValueForCarriage)
        try container.encodeIfPresent(self.declaredValueForCustoms, forKey: .declaredValueForCustoms)
        try container.encodeIfPresent(self.declaredValueForInsurance, forKey: .declaredValueForInsurance)
        try container.encodeIfPresent(self.paymentOtherCharges, forKey: .paymentOtherCharges)
        try container.encodeIfPresent(self.paymentWeightValuation, forKey: .paymentWeightValuation)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargeCode = "charge_code"
        case currencyCode = "currency_code"
        case declaredValueForCarriage = "declared_value_for_carriage"
        case declaredValueForCustoms = "declared_value_for_customs"
        case declaredValueForInsurance = "declared_value_for_insurance"
        case paymentOtherCharges = "payment_other_charges"
        case paymentWeightValuation = "payment_weight_valuation"
    }
}