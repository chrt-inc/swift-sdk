import Foundation

public struct CargoClientUpdate1: Codable, Hashable, Sendable {
    /// IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
    public let awbNumber: String?
    public let awbNumberSetToNone: Bool?
    public let cargoType: CargoTypeEnum1?
    public let description: String?
    public let descriptionSetToNone: Bool?
    public let heightInches: Double?
    public let heightInchesSetToNone: Bool?
    public let lengthInches: Double?
    public let lengthInchesSetToNone: Bool?
    public let quantity: Int?
    public let quantitySetToNone: Bool?
    public let stackable: Bool?
    public let stackableSetToNone: Bool?
    public let turnable: Bool?
    public let turnableSetToNone: Bool?
    public let weightPounds: Double?
    public let weightPoundsSetToNone: Bool?
    public let widthInches: Double?
    public let widthInchesSetToNone: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        awbNumber: String? = nil,
        awbNumberSetToNone: Bool? = nil,
        cargoType: CargoTypeEnum1? = nil,
        description: String? = nil,
        descriptionSetToNone: Bool? = nil,
        heightInches: Double? = nil,
        heightInchesSetToNone: Bool? = nil,
        lengthInches: Double? = nil,
        lengthInchesSetToNone: Bool? = nil,
        quantity: Int? = nil,
        quantitySetToNone: Bool? = nil,
        stackable: Bool? = nil,
        stackableSetToNone: Bool? = nil,
        turnable: Bool? = nil,
        turnableSetToNone: Bool? = nil,
        weightPounds: Double? = nil,
        weightPoundsSetToNone: Bool? = nil,
        widthInches: Double? = nil,
        widthInchesSetToNone: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.awbNumber = awbNumber
        self.awbNumberSetToNone = awbNumberSetToNone
        self.cargoType = cargoType
        self.description = description
        self.descriptionSetToNone = descriptionSetToNone
        self.heightInches = heightInches
        self.heightInchesSetToNone = heightInchesSetToNone
        self.lengthInches = lengthInches
        self.lengthInchesSetToNone = lengthInchesSetToNone
        self.quantity = quantity
        self.quantitySetToNone = quantitySetToNone
        self.stackable = stackable
        self.stackableSetToNone = stackableSetToNone
        self.turnable = turnable
        self.turnableSetToNone = turnableSetToNone
        self.weightPounds = weightPounds
        self.weightPoundsSetToNone = weightPoundsSetToNone
        self.widthInches = widthInches
        self.widthInchesSetToNone = widthInchesSetToNone
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.awbNumber = try container.decodeIfPresent(String.self, forKey: .awbNumber)
        self.awbNumberSetToNone = try container.decodeIfPresent(Bool.self, forKey: .awbNumberSetToNone)
        self.cargoType = try container.decodeIfPresent(CargoTypeEnum1.self, forKey: .cargoType)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.descriptionSetToNone = try container.decodeIfPresent(Bool.self, forKey: .descriptionSetToNone)
        self.heightInches = try container.decodeIfPresent(Double.self, forKey: .heightInches)
        self.heightInchesSetToNone = try container.decodeIfPresent(Bool.self, forKey: .heightInchesSetToNone)
        self.lengthInches = try container.decodeIfPresent(Double.self, forKey: .lengthInches)
        self.lengthInchesSetToNone = try container.decodeIfPresent(Bool.self, forKey: .lengthInchesSetToNone)
        self.quantity = try container.decodeIfPresent(Int.self, forKey: .quantity)
        self.quantitySetToNone = try container.decodeIfPresent(Bool.self, forKey: .quantitySetToNone)
        self.stackable = try container.decodeIfPresent(Bool.self, forKey: .stackable)
        self.stackableSetToNone = try container.decodeIfPresent(Bool.self, forKey: .stackableSetToNone)
        self.turnable = try container.decodeIfPresent(Bool.self, forKey: .turnable)
        self.turnableSetToNone = try container.decodeIfPresent(Bool.self, forKey: .turnableSetToNone)
        self.weightPounds = try container.decodeIfPresent(Double.self, forKey: .weightPounds)
        self.weightPoundsSetToNone = try container.decodeIfPresent(Bool.self, forKey: .weightPoundsSetToNone)
        self.widthInches = try container.decodeIfPresent(Double.self, forKey: .widthInches)
        self.widthInchesSetToNone = try container.decodeIfPresent(Bool.self, forKey: .widthInchesSetToNone)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.awbNumber, forKey: .awbNumber)
        try container.encodeIfPresent(self.awbNumberSetToNone, forKey: .awbNumberSetToNone)
        try container.encodeIfPresent(self.cargoType, forKey: .cargoType)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.descriptionSetToNone, forKey: .descriptionSetToNone)
        try container.encodeIfPresent(self.heightInches, forKey: .heightInches)
        try container.encodeIfPresent(self.heightInchesSetToNone, forKey: .heightInchesSetToNone)
        try container.encodeIfPresent(self.lengthInches, forKey: .lengthInches)
        try container.encodeIfPresent(self.lengthInchesSetToNone, forKey: .lengthInchesSetToNone)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.quantitySetToNone, forKey: .quantitySetToNone)
        try container.encodeIfPresent(self.stackable, forKey: .stackable)
        try container.encodeIfPresent(self.stackableSetToNone, forKey: .stackableSetToNone)
        try container.encodeIfPresent(self.turnable, forKey: .turnable)
        try container.encodeIfPresent(self.turnableSetToNone, forKey: .turnableSetToNone)
        try container.encodeIfPresent(self.weightPounds, forKey: .weightPounds)
        try container.encodeIfPresent(self.weightPoundsSetToNone, forKey: .weightPoundsSetToNone)
        try container.encodeIfPresent(self.widthInches, forKey: .widthInches)
        try container.encodeIfPresent(self.widthInchesSetToNone, forKey: .widthInchesSetToNone)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case awbNumber = "awb_number"
        case awbNumberSetToNone = "awb_number__set_to_None"
        case cargoType = "cargo_type"
        case description
        case descriptionSetToNone = "description__set_to_None"
        case heightInches = "height_inches"
        case heightInchesSetToNone = "height_inches__set_to_None"
        case lengthInches = "length_inches"
        case lengthInchesSetToNone = "length_inches__set_to_None"
        case quantity
        case quantitySetToNone = "quantity__set_to_None"
        case stackable
        case stackableSetToNone = "stackable__set_to_None"
        case turnable
        case turnableSetToNone = "turnable__set_to_None"
        case weightPounds = "weight_pounds"
        case weightPoundsSetToNone = "weight_pounds__set_to_None"
        case widthInches = "width_inches"
        case widthInchesSetToNone = "width_inches__set_to_None"
    }
}