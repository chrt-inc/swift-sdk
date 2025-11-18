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
    }
}