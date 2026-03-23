import Foundation

public struct CargoClientUpdate1: Codable, Hashable, Sendable {
    public let cargoType: CargoTypeEnum1?
    public let quantity: Int?
    public let weightPounds: Double?
    public let lengthInches: Double?
    public let widthInches: Double?
    public let heightInches: Double?
    public let turnable: Bool?
    public let stackable: Bool?
    public let description: String?
    public let quantitySetToNone: Bool?
    public let weightPoundsSetToNone: Bool?
    public let lengthInchesSetToNone: Bool?
    public let widthInchesSetToNone: Bool?
    public let heightInchesSetToNone: Bool?
    public let turnableSetToNone: Bool?
    public let stackableSetToNone: Bool?
    public let descriptionSetToNone: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cargoType: CargoTypeEnum1? = nil,
        quantity: Int? = nil,
        weightPounds: Double? = nil,
        lengthInches: Double? = nil,
        widthInches: Double? = nil,
        heightInches: Double? = nil,
        turnable: Bool? = nil,
        stackable: Bool? = nil,
        description: String? = nil,
        quantitySetToNone: Bool? = nil,
        weightPoundsSetToNone: Bool? = nil,
        lengthInchesSetToNone: Bool? = nil,
        widthInchesSetToNone: Bool? = nil,
        heightInchesSetToNone: Bool? = nil,
        turnableSetToNone: Bool? = nil,
        stackableSetToNone: Bool? = nil,
        descriptionSetToNone: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cargoType = cargoType
        self.quantity = quantity
        self.weightPounds = weightPounds
        self.lengthInches = lengthInches
        self.widthInches = widthInches
        self.heightInches = heightInches
        self.turnable = turnable
        self.stackable = stackable
        self.description = description
        self.quantitySetToNone = quantitySetToNone
        self.weightPoundsSetToNone = weightPoundsSetToNone
        self.lengthInchesSetToNone = lengthInchesSetToNone
        self.widthInchesSetToNone = widthInchesSetToNone
        self.heightInchesSetToNone = heightInchesSetToNone
        self.turnableSetToNone = turnableSetToNone
        self.stackableSetToNone = stackableSetToNone
        self.descriptionSetToNone = descriptionSetToNone
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cargoType = try container.decodeIfPresent(CargoTypeEnum1.self, forKey: .cargoType)
        self.quantity = try container.decodeIfPresent(Int.self, forKey: .quantity)
        self.weightPounds = try container.decodeIfPresent(Double.self, forKey: .weightPounds)
        self.lengthInches = try container.decodeIfPresent(Double.self, forKey: .lengthInches)
        self.widthInches = try container.decodeIfPresent(Double.self, forKey: .widthInches)
        self.heightInches = try container.decodeIfPresent(Double.self, forKey: .heightInches)
        self.turnable = try container.decodeIfPresent(Bool.self, forKey: .turnable)
        self.stackable = try container.decodeIfPresent(Bool.self, forKey: .stackable)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.quantitySetToNone = try container.decodeIfPresent(Bool.self, forKey: .quantitySetToNone)
        self.weightPoundsSetToNone = try container.decodeIfPresent(Bool.self, forKey: .weightPoundsSetToNone)
        self.lengthInchesSetToNone = try container.decodeIfPresent(Bool.self, forKey: .lengthInchesSetToNone)
        self.widthInchesSetToNone = try container.decodeIfPresent(Bool.self, forKey: .widthInchesSetToNone)
        self.heightInchesSetToNone = try container.decodeIfPresent(Bool.self, forKey: .heightInchesSetToNone)
        self.turnableSetToNone = try container.decodeIfPresent(Bool.self, forKey: .turnableSetToNone)
        self.stackableSetToNone = try container.decodeIfPresent(Bool.self, forKey: .stackableSetToNone)
        self.descriptionSetToNone = try container.decodeIfPresent(Bool.self, forKey: .descriptionSetToNone)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.cargoType, forKey: .cargoType)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.weightPounds, forKey: .weightPounds)
        try container.encodeIfPresent(self.lengthInches, forKey: .lengthInches)
        try container.encodeIfPresent(self.widthInches, forKey: .widthInches)
        try container.encodeIfPresent(self.heightInches, forKey: .heightInches)
        try container.encodeIfPresent(self.turnable, forKey: .turnable)
        try container.encodeIfPresent(self.stackable, forKey: .stackable)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.quantitySetToNone, forKey: .quantitySetToNone)
        try container.encodeIfPresent(self.weightPoundsSetToNone, forKey: .weightPoundsSetToNone)
        try container.encodeIfPresent(self.lengthInchesSetToNone, forKey: .lengthInchesSetToNone)
        try container.encodeIfPresent(self.widthInchesSetToNone, forKey: .widthInchesSetToNone)
        try container.encodeIfPresent(self.heightInchesSetToNone, forKey: .heightInchesSetToNone)
        try container.encodeIfPresent(self.turnableSetToNone, forKey: .turnableSetToNone)
        try container.encodeIfPresent(self.stackableSetToNone, forKey: .stackableSetToNone)
        try container.encodeIfPresent(self.descriptionSetToNone, forKey: .descriptionSetToNone)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cargoType = "cargo_type"
        case quantity
        case weightPounds = "weight_pounds"
        case lengthInches = "length_inches"
        case widthInches = "width_inches"
        case heightInches = "height_inches"
        case turnable
        case stackable
        case description
        case quantitySetToNone = "quantity__set_to_None"
        case weightPoundsSetToNone = "weight_pounds__set_to_None"
        case lengthInchesSetToNone = "length_inches__set_to_None"
        case widthInchesSetToNone = "width_inches__set_to_None"
        case heightInchesSetToNone = "height_inches__set_to_None"
        case turnableSetToNone = "turnable__set_to_None"
        case stackableSetToNone = "stackable__set_to_None"
        case descriptionSetToNone = "description__set_to_None"
    }
}