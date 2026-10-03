import Foundation

/// One rated line of the tendered goods.
public struct CargoOnFlightAirWaybillRateLine1: Codable, Hashable, Sendable {
    public let chargeableWeightKilograms: Double?
    public let commodityItemNumber: String?
    public let dimensions: [CargoOnFlightAirWaybillDimension1]?
    public let grossWeightKilograms: Double
    public let harmonizedCommodityCodes: [String]?
    public let natureAndQuantityOfGoods: String
    public let numberOfPieces: Int
    public let rateClassCode: CargoOnFlightAirWaybillRateClassCodeEnum1
    public let rateOrCharge: Double?
    public let totalChargeAmount: Double?
    public let uldNumbers: [String]?
    public let volumeCubicMeters: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargeableWeightKilograms: Double? = nil,
        commodityItemNumber: String? = nil,
        dimensions: [CargoOnFlightAirWaybillDimension1]? = nil,
        grossWeightKilograms: Double,
        harmonizedCommodityCodes: [String]? = nil,
        natureAndQuantityOfGoods: String,
        numberOfPieces: Int,
        rateClassCode: CargoOnFlightAirWaybillRateClassCodeEnum1,
        rateOrCharge: Double? = nil,
        totalChargeAmount: Double? = nil,
        uldNumbers: [String]? = nil,
        volumeCubicMeters: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargeableWeightKilograms = chargeableWeightKilograms
        self.commodityItemNumber = commodityItemNumber
        self.dimensions = dimensions
        self.grossWeightKilograms = grossWeightKilograms
        self.harmonizedCommodityCodes = harmonizedCommodityCodes
        self.natureAndQuantityOfGoods = natureAndQuantityOfGoods
        self.numberOfPieces = numberOfPieces
        self.rateClassCode = rateClassCode
        self.rateOrCharge = rateOrCharge
        self.totalChargeAmount = totalChargeAmount
        self.uldNumbers = uldNumbers
        self.volumeCubicMeters = volumeCubicMeters
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargeableWeightKilograms = try container.decodeIfPresent(Double.self, forKey: .chargeableWeightKilograms)
        self.commodityItemNumber = try container.decodeIfPresent(String.self, forKey: .commodityItemNumber)
        self.dimensions = try container.decodeIfPresent([CargoOnFlightAirWaybillDimension1].self, forKey: .dimensions)
        self.grossWeightKilograms = try container.decode(Double.self, forKey: .grossWeightKilograms)
        self.harmonizedCommodityCodes = try container.decodeIfPresent([String].self, forKey: .harmonizedCommodityCodes)
        self.natureAndQuantityOfGoods = try container.decode(String.self, forKey: .natureAndQuantityOfGoods)
        self.numberOfPieces = try container.decode(Int.self, forKey: .numberOfPieces)
        self.rateClassCode = try container.decode(CargoOnFlightAirWaybillRateClassCodeEnum1.self, forKey: .rateClassCode)
        self.rateOrCharge = try container.decodeIfPresent(Double.self, forKey: .rateOrCharge)
        self.totalChargeAmount = try container.decodeIfPresent(Double.self, forKey: .totalChargeAmount)
        self.uldNumbers = try container.decodeIfPresent([String].self, forKey: .uldNumbers)
        self.volumeCubicMeters = try container.decodeIfPresent(Double.self, forKey: .volumeCubicMeters)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.chargeableWeightKilograms, forKey: .chargeableWeightKilograms)
        try container.encodeIfPresent(self.commodityItemNumber, forKey: .commodityItemNumber)
        try container.encodeIfPresent(self.dimensions, forKey: .dimensions)
        try container.encode(self.grossWeightKilograms, forKey: .grossWeightKilograms)
        try container.encodeIfPresent(self.harmonizedCommodityCodes, forKey: .harmonizedCommodityCodes)
        try container.encode(self.natureAndQuantityOfGoods, forKey: .natureAndQuantityOfGoods)
        try container.encode(self.numberOfPieces, forKey: .numberOfPieces)
        try container.encode(self.rateClassCode, forKey: .rateClassCode)
        try container.encodeIfPresent(self.rateOrCharge, forKey: .rateOrCharge)
        try container.encodeIfPresent(self.totalChargeAmount, forKey: .totalChargeAmount)
        try container.encodeIfPresent(self.uldNumbers, forKey: .uldNumbers)
        try container.encodeIfPresent(self.volumeCubicMeters, forKey: .volumeCubicMeters)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargeableWeightKilograms = "chargeable_weight_kilograms"
        case commodityItemNumber = "commodity_item_number"
        case dimensions
        case grossWeightKilograms = "gross_weight_kilograms"
        case harmonizedCommodityCodes = "harmonized_commodity_codes"
        case natureAndQuantityOfGoods = "nature_and_quantity_of_goods"
        case numberOfPieces = "number_of_pieces"
        case rateClassCode = "rate_class_code"
        case rateOrCharge = "rate_or_charge"
        case totalChargeAmount = "total_charge_amount"
        case uldNumbers = "uld_numbers"
        case volumeCubicMeters = "volume_cubic_meters"
    }
}