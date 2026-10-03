import Foundation

/// `number_of_pieces` pieces, each of these dimensions.
public struct CargoOnFlightAirWaybillDimension1: Codable, Hashable, Sendable {
    public let heightInches: Double
    public let lengthInches: Double
    public let numberOfPieces: Int
    public let widthInches: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        heightInches: Double,
        lengthInches: Double,
        numberOfPieces: Int,
        widthInches: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.heightInches = heightInches
        self.lengthInches = lengthInches
        self.numberOfPieces = numberOfPieces
        self.widthInches = widthInches
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.heightInches = try container.decode(Double.self, forKey: .heightInches)
        self.lengthInches = try container.decode(Double.self, forKey: .lengthInches)
        self.numberOfPieces = try container.decode(Int.self, forKey: .numberOfPieces)
        self.widthInches = try container.decode(Double.self, forKey: .widthInches)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.heightInches, forKey: .heightInches)
        try container.encode(self.lengthInches, forKey: .lengthInches)
        try container.encode(self.numberOfPieces, forKey: .numberOfPieces)
        try container.encode(self.widthInches, forKey: .widthInches)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case heightInches = "height_inches"
        case lengthInches = "length_inches"
        case numberOfPieces = "number_of_pieces"
        case widthInches = "width_inches"
    }
}