import Foundation

/// `quantity` identical pieces, each of these dimensions and weight.
public struct CargoOnFlightBookingCargoDimension1: Codable, Hashable, Sendable {
    public let heightInches: Double
    public let lengthInches: Double
    public let quantity: Int
    public let stackable: Bool?
    public let turnable: Bool?
    public let weightPerPiecePounds: Double
    public let widthInches: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        heightInches: Double,
        lengthInches: Double,
        quantity: Int,
        stackable: Bool? = nil,
        turnable: Bool? = nil,
        weightPerPiecePounds: Double,
        widthInches: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.heightInches = heightInches
        self.lengthInches = lengthInches
        self.quantity = quantity
        self.stackable = stackable
        self.turnable = turnable
        self.weightPerPiecePounds = weightPerPiecePounds
        self.widthInches = widthInches
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.heightInches = try container.decode(Double.self, forKey: .heightInches)
        self.lengthInches = try container.decode(Double.self, forKey: .lengthInches)
        self.quantity = try container.decode(Int.self, forKey: .quantity)
        self.stackable = try container.decodeIfPresent(Bool.self, forKey: .stackable)
        self.turnable = try container.decodeIfPresent(Bool.self, forKey: .turnable)
        self.weightPerPiecePounds = try container.decode(Double.self, forKey: .weightPerPiecePounds)
        self.widthInches = try container.decode(Double.self, forKey: .widthInches)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.heightInches, forKey: .heightInches)
        try container.encode(self.lengthInches, forKey: .lengthInches)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.stackable, forKey: .stackable)
        try container.encodeIfPresent(self.turnable, forKey: .turnable)
        try container.encode(self.weightPerPiecePounds, forKey: .weightPerPiecePounds)
        try container.encode(self.widthInches, forKey: .widthInches)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case heightInches = "height_inches"
        case lengthInches = "length_inches"
        case quantity
        case stackable
        case turnable
        case weightPerPiecePounds = "weight_per_piece_pounds"
        case widthInches = "width_inches"
    }
}