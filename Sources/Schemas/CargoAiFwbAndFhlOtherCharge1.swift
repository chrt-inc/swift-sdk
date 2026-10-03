import Foundation

public struct CargoAiFwbAndFhlOtherCharge1: Codable, Hashable, Sendable {
    public let chargeAmount: Double
    public let chargeCode: String
    public let entitlementCode: CargoAiFwbAndFhlOtherCharge1EntitlementCode
    public let pcIndicator: CargoAiFwbAndFhlOtherCharge1PcIndicator
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargeAmount: Double,
        chargeCode: String,
        entitlementCode: CargoAiFwbAndFhlOtherCharge1EntitlementCode,
        pcIndicator: CargoAiFwbAndFhlOtherCharge1PcIndicator,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargeAmount = chargeAmount
        self.chargeCode = chargeCode
        self.entitlementCode = entitlementCode
        self.pcIndicator = pcIndicator
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargeAmount = try container.decode(Double.self, forKey: .chargeAmount)
        self.chargeCode = try container.decode(String.self, forKey: .chargeCode)
        self.entitlementCode = try container.decode(CargoAiFwbAndFhlOtherCharge1EntitlementCode.self, forKey: .entitlementCode)
        self.pcIndicator = try container.decode(CargoAiFwbAndFhlOtherCharge1PcIndicator.self, forKey: .pcIndicator)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.chargeAmount, forKey: .chargeAmount)
        try container.encode(self.chargeCode, forKey: .chargeCode)
        try container.encode(self.entitlementCode, forKey: .entitlementCode)
        try container.encode(self.pcIndicator, forKey: .pcIndicator)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargeAmount = "charge_amount"
        case chargeCode = "charge_code"
        case entitlementCode = "entitlement_code"
        case pcIndicator = "pc_indicator"
    }
}