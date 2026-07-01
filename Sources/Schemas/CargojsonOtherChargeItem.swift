import Foundation

/// [CUSTOMER] Individual other-charge line (e.g. handling, security, fuel).
public struct CargojsonOtherChargeItem: Codable, Hashable, Sendable {
    public let chargeAmount: Double
    public let entitlementCode: CargojsonEntitlementCode
    public let otherChargeCode: CargojsonOtherChargeCode
    public let paymentCondition: CargojsonPaymentCondition
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargeAmount: Double,
        entitlementCode: CargojsonEntitlementCode,
        otherChargeCode: CargojsonOtherChargeCode,
        paymentCondition: CargojsonPaymentCondition,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargeAmount = chargeAmount
        self.entitlementCode = entitlementCode
        self.otherChargeCode = otherChargeCode
        self.paymentCondition = paymentCondition
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargeAmount = try container.decode(Double.self, forKey: .chargeAmount)
        self.entitlementCode = try container.decode(CargojsonEntitlementCode.self, forKey: .entitlementCode)
        self.otherChargeCode = try container.decode(CargojsonOtherChargeCode.self, forKey: .otherChargeCode)
        self.paymentCondition = try container.decode(CargojsonPaymentCondition.self, forKey: .paymentCondition)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.chargeAmount, forKey: .chargeAmount)
        try container.encode(self.entitlementCode, forKey: .entitlementCode)
        try container.encode(self.otherChargeCode, forKey: .otherChargeCode)
        try container.encode(self.paymentCondition, forKey: .paymentCondition)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargeAmount
        case entitlementCode
        case otherChargeCode
        case paymentCondition
    }
}