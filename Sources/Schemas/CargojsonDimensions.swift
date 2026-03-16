import Foundation

/// [WEBCARGO/CUSTOMER] Package dimensions from <Dimension> or customer input.
public struct CargojsonDimensions: Codable, Hashable, Sendable {
    public let unit: CargojsonDimensionUnit?
    public let length: Int
    public let width: Int
    public let height: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        unit: CargojsonDimensionUnit? = nil,
        length: Int,
        width: Int,
        height: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.unit = unit
        self.length = length
        self.width = width
        self.height = height
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.unit = try container.decodeIfPresent(CargojsonDimensionUnit.self, forKey: .unit)
        self.length = try container.decode(Int.self, forKey: .length)
        self.width = try container.decode(Int.self, forKey: .width)
        self.height = try container.decode(Int.self, forKey: .height)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.unit, forKey: .unit)
        try container.encode(self.length, forKey: .length)
        try container.encode(self.width, forKey: .width)
        try container.encode(self.height, forKey: .height)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case unit
        case length
        case width
        case height
    }
}