import Foundation

public struct CargoAiFwbAndFhlDimension1: Codable, Hashable, Sendable {
    public let height: Double
    public let length: Double
    public let pcs: Int
    public let uom: CargoAiFwbAndFhlDimensionUomEnum1
    public let width: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        height: Double,
        length: Double,
        pcs: Int,
        uom: CargoAiFwbAndFhlDimensionUomEnum1,
        width: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.height = height
        self.length = length
        self.pcs = pcs
        self.uom = uom
        self.width = width
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.height = try container.decode(Double.self, forKey: .height)
        self.length = try container.decode(Double.self, forKey: .length)
        self.pcs = try container.decode(Int.self, forKey: .pcs)
        self.uom = try container.decode(CargoAiFwbAndFhlDimensionUomEnum1.self, forKey: .uom)
        self.width = try container.decode(Double.self, forKey: .width)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.height, forKey: .height)
        try container.encode(self.length, forKey: .length)
        try container.encode(self.pcs, forKey: .pcs)
        try container.encode(self.uom, forKey: .uom)
        try container.encode(self.width, forKey: .width)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case height
        case length
        case pcs
        case uom
        case width
    }
}