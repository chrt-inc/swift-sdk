import Foundation

public struct CargoClientCreate1: Codable, Hashable, Sendable {
    public let cargoType: CargoTypeEnum1
    public let description: String?
    public let heightInches: Double?
    public let lengthInches: Double?
    public let quantity: Int?
    public let schemaVersion: Int
    public let stackable: Bool?
    public let turnable: Bool?
    public let weightPounds: Double?
    public let widthInches: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cargoType: CargoTypeEnum1,
        description: String? = nil,
        heightInches: Double? = nil,
        lengthInches: Double? = nil,
        quantity: Int? = nil,
        schemaVersion: Int,
        stackable: Bool? = nil,
        turnable: Bool? = nil,
        weightPounds: Double? = nil,
        widthInches: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cargoType = cargoType
        self.description = description
        self.heightInches = heightInches
        self.lengthInches = lengthInches
        self.quantity = quantity
        self.schemaVersion = schemaVersion
        self.stackable = stackable
        self.turnable = turnable
        self.weightPounds = weightPounds
        self.widthInches = widthInches
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cargoType = try container.decode(CargoTypeEnum1.self, forKey: .cargoType)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.heightInches = try container.decodeIfPresent(Double.self, forKey: .heightInches)
        self.lengthInches = try container.decodeIfPresent(Double.self, forKey: .lengthInches)
        self.quantity = try container.decodeIfPresent(Int.self, forKey: .quantity)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.stackable = try container.decodeIfPresent(Bool.self, forKey: .stackable)
        self.turnable = try container.decodeIfPresent(Bool.self, forKey: .turnable)
        self.weightPounds = try container.decodeIfPresent(Double.self, forKey: .weightPounds)
        self.widthInches = try container.decodeIfPresent(Double.self, forKey: .widthInches)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.cargoType, forKey: .cargoType)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.heightInches, forKey: .heightInches)
        try container.encodeIfPresent(self.lengthInches, forKey: .lengthInches)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.stackable, forKey: .stackable)
        try container.encodeIfPresent(self.turnable, forKey: .turnable)
        try container.encodeIfPresent(self.weightPounds, forKey: .weightPounds)
        try container.encodeIfPresent(self.widthInches, forKey: .widthInches)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cargoType = "cargo_type"
        case description
        case heightInches = "height_inches"
        case lengthInches = "length_inches"
        case quantity
        case schemaVersion = "schema_version"
        case stackable
        case turnable
        case weightPounds = "weight_pounds"
        case widthInches = "width_inches"
    }
}