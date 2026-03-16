import Foundation

/// [WEBCARGO/CUSTOMER] Per-piece-group packaging details.
public struct CargojsonPackaging: Codable, Hashable, Sendable {
    public let numberOfPieces: Int?
    public let weight: CargojsonWeight?
    public let volume: CargojsonVolume?
    public let dimensions: CargojsonDimensions?
    public let uld: CargojsonUld?
    public let shippersLoadAndCount: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        numberOfPieces: Int? = nil,
        weight: CargojsonWeight? = nil,
        volume: CargojsonVolume? = nil,
        dimensions: CargojsonDimensions? = nil,
        uld: CargojsonUld? = nil,
        shippersLoadAndCount: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.numberOfPieces = numberOfPieces
        self.weight = weight
        self.volume = volume
        self.dimensions = dimensions
        self.uld = uld
        self.shippersLoadAndCount = shippersLoadAndCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.numberOfPieces = try container.decodeIfPresent(Int.self, forKey: .numberOfPieces)
        self.weight = try container.decodeIfPresent(CargojsonWeight.self, forKey: .weight)
        self.volume = try container.decodeIfPresent(CargojsonVolume.self, forKey: .volume)
        self.dimensions = try container.decodeIfPresent(CargojsonDimensions.self, forKey: .dimensions)
        self.uld = try container.decodeIfPresent(CargojsonUld.self, forKey: .uld)
        self.shippersLoadAndCount = try container.decodeIfPresent(String.self, forKey: .shippersLoadAndCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.numberOfPieces, forKey: .numberOfPieces)
        try container.encodeIfPresent(self.weight, forKey: .weight)
        try container.encodeIfPresent(self.volume, forKey: .volume)
        try container.encodeIfPresent(self.dimensions, forKey: .dimensions)
        try container.encodeIfPresent(self.uld, forKey: .uld)
        try container.encodeIfPresent(self.shippersLoadAndCount, forKey: .shippersLoadAndCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case numberOfPieces
        case weight
        case volume
        case dimensions
        case uld
        case shippersLoadAndCount
    }
}