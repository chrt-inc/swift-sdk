import Foundation

/// An other charge, e.g. AW (air waybill fee) due agent.
public struct CargoOnFlightAirWaybillOtherCharge1: Codable, Hashable, Sendable {
    public let chargeAmount: Double
    public let entitlement: CargoOnFlightAirWaybillOtherChargeEntitlementEnum1
    public let otherChargeCode: String
    public let paymentCondition: CargoOnFlightAirWaybillPaymentConditionEnum1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargeAmount: Double,
        entitlement: CargoOnFlightAirWaybillOtherChargeEntitlementEnum1,
        otherChargeCode: String,
        paymentCondition: CargoOnFlightAirWaybillPaymentConditionEnum1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargeAmount = chargeAmount
        self.entitlement = entitlement
        self.otherChargeCode = otherChargeCode
        self.paymentCondition = paymentCondition
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargeAmount = try container.decode(Double.self, forKey: .chargeAmount)
        self.entitlement = try container.decode(CargoOnFlightAirWaybillOtherChargeEntitlementEnum1.self, forKey: .entitlement)
        self.otherChargeCode = try container.decode(String.self, forKey: .otherChargeCode)
        self.paymentCondition = try container.decode(CargoOnFlightAirWaybillPaymentConditionEnum1.self, forKey: .paymentCondition)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.chargeAmount, forKey: .chargeAmount)
        try container.encode(self.entitlement, forKey: .entitlement)
        try container.encode(self.otherChargeCode, forKey: .otherChargeCode)
        try container.encode(self.paymentCondition, forKey: .paymentCondition)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargeAmount = "charge_amount"
        case entitlement
        case otherChargeCode = "other_charge_code"
        case paymentCondition = "payment_condition"
    }
}