import Foundation

/// [WEBCARGO/CUSTOMER] Per-piece-group packaging details.
public struct CargojsonPackaging: Codable, Hashable, Sendable {
    public let dimensions: CargojsonDimensions?
    public let numberOfPieces: Int?
    public let shippersLoadAndCount: String?
    public let uld: CargojsonUld?
    public let volume: CargojsonVolume?
    public let weight: CargojsonWeight?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        dimensions: CargojsonDimensions? = nil,
        numberOfPieces: Int? = nil,
        shippersLoadAndCount: String? = nil,
        uld: CargojsonUld? = nil,
        volume: CargojsonVolume? = nil,
        weight: CargojsonWeight? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.dimensions = dimensions
        self.numberOfPieces = numberOfPieces
        self.shippersLoadAndCount = shippersLoadAndCount
        self.uld = uld
        self.volume = volume
        self.weight = weight
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.dimensions = try container.decodeIfPresent(CargojsonDimensions.self, forKey: .dimensions)
        self.numberOfPieces = try container.decodeIfPresent(Int.self, forKey: .numberOfPieces)
        self.shippersLoadAndCount = try container.decodeIfPresent(String.self, forKey: .shippersLoadAndCount)
        self.uld = try container.decodeIfPresent(CargojsonUld.self, forKey: .uld)
        self.volume = try container.decodeIfPresent(CargojsonVolume.self, forKey: .volume)
        self.weight = try container.decodeIfPresent(CargojsonWeight.self, forKey: .weight)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.dimensions, forKey: .dimensions)
        try container.encodeIfPresent(self.numberOfPieces, forKey: .numberOfPieces)
        try container.encodeIfPresent(self.shippersLoadAndCount, forKey: .shippersLoadAndCount)
        try container.encodeIfPresent(self.uld, forKey: .uld)
        try container.encodeIfPresent(self.volume, forKey: .volume)
        try container.encodeIfPresent(self.weight, forKey: .weight)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case dimensions
        case numberOfPieces
        case shippersLoadAndCount
        case uld
        case volume
        case weight
    }
}