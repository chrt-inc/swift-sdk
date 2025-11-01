import Foundation

public struct CargoClientCreate1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let cargoType: CargoTypeEnum1
    public let quantity: Int?
    public let weightPounds: Double?
    public let lengthInches: Double?
    public let widthInches: Double?
    public let heightInches: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        cargoType: CargoTypeEnum1,
        quantity: Int? = nil,
        weightPounds: Double? = nil,
        lengthInches: Double? = nil,
        widthInches: Double? = nil,
        heightInches: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.cargoType = cargoType
        self.quantity = quantity
        self.weightPounds = weightPounds
        self.lengthInches = lengthInches
        self.widthInches = widthInches
        self.heightInches = heightInches
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.cargoType = try container.decode(CargoTypeEnum1.self, forKey: .cargoType)
        self.quantity = try container.decodeIfPresent(Int.self, forKey: .quantity)
        self.weightPounds = try container.decodeIfPresent(Double.self, forKey: .weightPounds)
        self.lengthInches = try container.decodeIfPresent(Double.self, forKey: .lengthInches)
        self.widthInches = try container.decodeIfPresent(Double.self, forKey: .widthInches)
        self.heightInches = try container.decodeIfPresent(Double.self, forKey: .heightInches)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.cargoType, forKey: .cargoType)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.weightPounds, forKey: .weightPounds)
        try container.encodeIfPresent(self.lengthInches, forKey: .lengthInches)
        try container.encodeIfPresent(self.widthInches, forKey: .widthInches)
        try container.encodeIfPresent(self.heightInches, forKey: .heightInches)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case cargoType = "cargo_type"
        case quantity
        case weightPounds = "weight_pounds"
        case lengthInches = "length_inches"
        case widthInches = "width_inches"
        case heightInches = "height_inches"
    }
}