import Foundation

public struct CargoAiFwbAndFhlHouse1: Codable, Hashable, Sendable {
    public let chargeCode: String?
    public let commodity: String?
    public let currencyCode: String?
    public let grossWeight: CargoAiFwbAndFhlWeightOrVolume1
    public let hawbNumber: String
    public let locations: CargoAiFwbAndFhlHouseLocations1
    public let mawbNumber: String
    public let numberOfPieces: Int
    public let other: Other?
    public let slac: Int?
    public let valuesForCarriage: Double?
    public let valuesForCustom: Double?
    public let valuesForInsurance: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chargeCode: String? = nil,
        commodity: String? = nil,
        currencyCode: String? = nil,
        grossWeight: CargoAiFwbAndFhlWeightOrVolume1,
        hawbNumber: String,
        locations: CargoAiFwbAndFhlHouseLocations1,
        mawbNumber: String,
        numberOfPieces: Int,
        other: Other? = nil,
        slac: Int? = nil,
        valuesForCarriage: Double? = nil,
        valuesForCustom: Double? = nil,
        valuesForInsurance: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chargeCode = chargeCode
        self.commodity = commodity
        self.currencyCode = currencyCode
        self.grossWeight = grossWeight
        self.hawbNumber = hawbNumber
        self.locations = locations
        self.mawbNumber = mawbNumber
        self.numberOfPieces = numberOfPieces
        self.other = other
        self.slac = slac
        self.valuesForCarriage = valuesForCarriage
        self.valuesForCustom = valuesForCustom
        self.valuesForInsurance = valuesForInsurance
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargeCode = try container.decodeIfPresent(String.self, forKey: .chargeCode)
        self.commodity = try container.decodeIfPresent(String.self, forKey: .commodity)
        self.currencyCode = try container.decodeIfPresent(String.self, forKey: .currencyCode)
        self.grossWeight = try container.decode(CargoAiFwbAndFhlWeightOrVolume1.self, forKey: .grossWeight)
        self.hawbNumber = try container.decode(String.self, forKey: .hawbNumber)
        self.locations = try container.decode(CargoAiFwbAndFhlHouseLocations1.self, forKey: .locations)
        self.mawbNumber = try container.decode(String.self, forKey: .mawbNumber)
        self.numberOfPieces = try container.decode(Int.self, forKey: .numberOfPieces)
        self.other = try container.decodeIfPresent(Other.self, forKey: .other)
        self.slac = try container.decodeIfPresent(Int.self, forKey: .slac)
        self.valuesForCarriage = try container.decodeIfPresent(Double.self, forKey: .valuesForCarriage)
        self.valuesForCustom = try container.decodeIfPresent(Double.self, forKey: .valuesForCustom)
        self.valuesForInsurance = try container.decodeIfPresent(Double.self, forKey: .valuesForInsurance)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.chargeCode, forKey: .chargeCode)
        try container.encodeIfPresent(self.commodity, forKey: .commodity)
        try container.encodeIfPresent(self.currencyCode, forKey: .currencyCode)
        try container.encode(self.grossWeight, forKey: .grossWeight)
        try container.encode(self.hawbNumber, forKey: .hawbNumber)
        try container.encode(self.locations, forKey: .locations)
        try container.encode(self.mawbNumber, forKey: .mawbNumber)
        try container.encode(self.numberOfPieces, forKey: .numberOfPieces)
        try container.encodeIfPresent(self.other, forKey: .other)
        try container.encodeIfPresent(self.slac, forKey: .slac)
        try container.encodeIfPresent(self.valuesForCarriage, forKey: .valuesForCarriage)
        try container.encodeIfPresent(self.valuesForCustom, forKey: .valuesForCustom)
        try container.encodeIfPresent(self.valuesForInsurance, forKey: .valuesForInsurance)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chargeCode = "charge_code"
        case commodity
        case currencyCode = "currency_code"
        case grossWeight = "gross_weight"
        case hawbNumber = "hawb_number"
        case locations
        case mawbNumber
        case numberOfPieces = "number_of_pieces"
        case other
        case slac
        case valuesForCarriage = "values_for_carriage"
        case valuesForCustom = "values_for_custom"
        case valuesForInsurance = "values_for_insurance"
    }
}