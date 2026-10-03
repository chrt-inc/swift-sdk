import Foundation

public struct CargoAiFwbAndFhlRate1: Codable, Hashable, Sendable {
    public let chargeAmount: Double?
    public let chargeableWeight: Double?
    public let commodityItemNumber: String?
    public let dims: [CargoAiFwbAndFhlDimension1]?
    public let grossWeight: CargoAiFwbAndFhlWeightOrVolume1
    public let hsc: [Int]?
    public let natureAndQuantityOfGoods: String?
    public let numberOfPieces: Int
    public let rateClassCode: String
    public let rateOrCharge: Double?
    public let slac: Int?
    public let uld: [CargoAiFwbAndFhlUld1]?
    public let volume: CargoAiFwbAndFhlWeightOrVolume1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargeAmount: Double? = nil,
        chargeableWeight: Double? = nil,
        commodityItemNumber: String? = nil,
        dims: [CargoAiFwbAndFhlDimension1]? = nil,
        grossWeight: CargoAiFwbAndFhlWeightOrVolume1,
        hsc: [Int]? = nil,
        natureAndQuantityOfGoods: String? = nil,
        numberOfPieces: Int,
        rateClassCode: String,
        rateOrCharge: Double? = nil,
        slac: Int? = nil,
        uld: [CargoAiFwbAndFhlUld1]? = nil,
        volume: CargoAiFwbAndFhlWeightOrVolume1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargeAmount = chargeAmount
        self.chargeableWeight = chargeableWeight
        self.commodityItemNumber = commodityItemNumber
        self.dims = dims
        self.grossWeight = grossWeight
        self.hsc = hsc
        self.natureAndQuantityOfGoods = natureAndQuantityOfGoods
        self.numberOfPieces = numberOfPieces
        self.rateClassCode = rateClassCode
        self.rateOrCharge = rateOrCharge
        self.slac = slac
        self.uld = uld
        self.volume = volume
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargeAmount = try container.decodeIfPresent(Double.self, forKey: .chargeAmount)
        self.chargeableWeight = try container.decodeIfPresent(Double.self, forKey: .chargeableWeight)
        self.commodityItemNumber = try container.decodeIfPresent(String.self, forKey: .commodityItemNumber)
        self.dims = try container.decodeIfPresent([CargoAiFwbAndFhlDimension1].self, forKey: .dims)
        self.grossWeight = try container.decode(CargoAiFwbAndFhlWeightOrVolume1.self, forKey: .grossWeight)
        self.hsc = try container.decodeIfPresent([Int].self, forKey: .hsc)
        self.natureAndQuantityOfGoods = try container.decodeIfPresent(String.self, forKey: .natureAndQuantityOfGoods)
        self.numberOfPieces = try container.decode(Int.self, forKey: .numberOfPieces)
        self.rateClassCode = try container.decode(String.self, forKey: .rateClassCode)
        self.rateOrCharge = try container.decodeIfPresent(Double.self, forKey: .rateOrCharge)
        self.slac = try container.decodeIfPresent(Int.self, forKey: .slac)
        self.uld = try container.decodeIfPresent([CargoAiFwbAndFhlUld1].self, forKey: .uld)
        self.volume = try container.decodeIfPresent(CargoAiFwbAndFhlWeightOrVolume1.self, forKey: .volume)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.chargeAmount, forKey: .chargeAmount)
        try container.encodeIfPresent(self.chargeableWeight, forKey: .chargeableWeight)
        try container.encodeIfPresent(self.commodityItemNumber, forKey: .commodityItemNumber)
        try container.encodeIfPresent(self.dims, forKey: .dims)
        try container.encode(self.grossWeight, forKey: .grossWeight)
        try container.encodeIfPresent(self.hsc, forKey: .hsc)
        try container.encodeIfPresent(self.natureAndQuantityOfGoods, forKey: .natureAndQuantityOfGoods)
        try container.encode(self.numberOfPieces, forKey: .numberOfPieces)
        try container.encode(self.rateClassCode, forKey: .rateClassCode)
        try container.encodeIfPresent(self.rateOrCharge, forKey: .rateOrCharge)
        try container.encodeIfPresent(self.slac, forKey: .slac)
        try container.encodeIfPresent(self.uld, forKey: .uld)
        try container.encodeIfPresent(self.volume, forKey: .volume)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargeAmount = "charge_amount"
        case chargeableWeight = "chargeable_weight"
        case commodityItemNumber = "commodity_item_number"
        case dims
        case grossWeight = "gross_weight"
        case hsc
        case natureAndQuantityOfGoods = "nature_and_quantity_of_goods"
        case numberOfPieces = "number_of_pieces"
        case rateClassCode = "rate_class_code"
        case rateOrCharge = "rate_or_charge"
        case slac
        case uld
        case volume
    }
}