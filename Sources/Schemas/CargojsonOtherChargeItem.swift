import Foundation

/// [CUSTOMER] Individual other-charge line (e.g. handling, security, fuel).
public struct CargojsonOtherChargeItem: Codable, Hashable, Sendable {
    public let paymentCondition: CargojsonPaymentCondition
    public let otherChargeCode: CargojsonOtherChargeCode
    public let entitlementCode: CargojsonEntitlementCode
    public let chargeAmount: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        paymentCondition: CargojsonPaymentCondition,
        otherChargeCode: CargojsonOtherChargeCode,
        entitlementCode: CargojsonEntitlementCode,
        chargeAmount: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.paymentCondition = paymentCondition
        self.otherChargeCode = otherChargeCode
        self.entitlementCode = entitlementCode
        self.chargeAmount = chargeAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.paymentCondition = try container.decode(CargojsonPaymentCondition.self, forKey: .paymentCondition)
        self.otherChargeCode = try container.decode(CargojsonOtherChargeCode.self, forKey: .otherChargeCode)
        self.entitlementCode = try container.decode(CargojsonEntitlementCode.self, forKey: .entitlementCode)
        self.chargeAmount = try container.decode(Double.self, forKey: .chargeAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.paymentCondition, forKey: .paymentCondition)
        try container.encode(self.otherChargeCode, forKey: .otherChargeCode)
        try container.encode(self.entitlementCode, forKey: .entitlementCode)
        try container.encode(self.chargeAmount, forKey: .chargeAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case paymentCondition
        case otherChargeCode
        case entitlementCode
        case chargeAmount
    }
}