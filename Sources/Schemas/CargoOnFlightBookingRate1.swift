import Foundation

/// A price quoted for a shipment: one of a search result's rates, or the price a MANUAL booking was quoted.
public struct CargoOnFlightBookingRate1: Codable, Hashable, Sendable {
    public let allInRatePerKilogram: Double?
    public let chargeableWeightKilograms: Double?
    public let charges: [CargoOnFlightBookingRateCharge1]?
    public let currencyCode: String
    public let integrationRateId: String?
    public let netRatePerKilogram: Double?
    public let otherChargesDueCarrier: [CargoOnFlightBookingRateCharge1]?
    public let rateName: String?
    public let specialHandlingCodes: [String]?
    public let totalAmount: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        allInRatePerKilogram: Double? = nil,
        chargeableWeightKilograms: Double? = nil,
        charges: [CargoOnFlightBookingRateCharge1]? = nil,
        currencyCode: String,
        integrationRateId: String? = nil,
        netRatePerKilogram: Double? = nil,
        otherChargesDueCarrier: [CargoOnFlightBookingRateCharge1]? = nil,
        rateName: String? = nil,
        specialHandlingCodes: [String]? = nil,
        totalAmount: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.allInRatePerKilogram = allInRatePerKilogram
        self.chargeableWeightKilograms = chargeableWeightKilograms
        self.charges = charges
        self.currencyCode = currencyCode
        self.integrationRateId = integrationRateId
        self.netRatePerKilogram = netRatePerKilogram
        self.otherChargesDueCarrier = otherChargesDueCarrier
        self.rateName = rateName
        self.specialHandlingCodes = specialHandlingCodes
        self.totalAmount = totalAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.allInRatePerKilogram = try container.decodeIfPresent(Double.self, forKey: .allInRatePerKilogram)
        self.chargeableWeightKilograms = try container.decodeIfPresent(Double.self, forKey: .chargeableWeightKilograms)
        self.charges = try container.decodeIfPresent([CargoOnFlightBookingRateCharge1].self, forKey: .charges)
        self.currencyCode = try container.decode(String.self, forKey: .currencyCode)
        self.integrationRateId = try container.decodeIfPresent(String.self, forKey: .integrationRateId)
        self.netRatePerKilogram = try container.decodeIfPresent(Double.self, forKey: .netRatePerKilogram)
        self.otherChargesDueCarrier = try container.decodeIfPresent([CargoOnFlightBookingRateCharge1].self, forKey: .otherChargesDueCarrier)
        self.rateName = try container.decodeIfPresent(String.self, forKey: .rateName)
        self.specialHandlingCodes = try container.decodeIfPresent([String].self, forKey: .specialHandlingCodes)
        self.totalAmount = try container.decode(Double.self, forKey: .totalAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.allInRatePerKilogram, forKey: .allInRatePerKilogram)
        try container.encodeIfPresent(self.chargeableWeightKilograms, forKey: .chargeableWeightKilograms)
        try container.encodeIfPresent(self.charges, forKey: .charges)
        try container.encode(self.currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(self.integrationRateId, forKey: .integrationRateId)
        try container.encodeIfPresent(self.netRatePerKilogram, forKey: .netRatePerKilogram)
        try container.encodeIfPresent(self.otherChargesDueCarrier, forKey: .otherChargesDueCarrier)
        try container.encodeIfPresent(self.rateName, forKey: .rateName)
        try container.encodeIfPresent(self.specialHandlingCodes, forKey: .specialHandlingCodes)
        try container.encode(self.totalAmount, forKey: .totalAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case allInRatePerKilogram = "all_in_rate_per_kilogram"
        case chargeableWeightKilograms = "chargeable_weight_kilograms"
        case charges
        case currencyCode = "currency_code"
        case integrationRateId = "integration_rate_id"
        case netRatePerKilogram = "net_rate_per_kilogram"
        case otherChargesDueCarrier = "other_charges_due_carrier"
        case rateName = "rate_name"
        case specialHandlingCodes = "special_handling_codes"
        case totalAmount = "total_amount"
    }
}