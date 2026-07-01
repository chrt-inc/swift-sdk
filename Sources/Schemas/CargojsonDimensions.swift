import Foundation

/// [WEBCARGO/CUSTOMER] Package dimensions from <Dimension> or customer input.
public struct CargojsonDimensions: Codable, Hashable, Sendable {
    public let height: Int
    public let length: Int
    public let unit: CargojsonDimensionUnit?
    public let width: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        height: Int,
        length: Int,
        unit: CargojsonDimensionUnit? = nil,
        width: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.height = height
        self.length = length
        self.unit = unit
        self.width = width
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.height = try container.decode(Int.self, forKey: .height)
        self.length = try container.decode(Int.self, forKey: .length)
        self.unit = try container.decodeIfPresent(CargojsonDimensionUnit.self, forKey: .unit)
        self.width = try container.decode(Int.self, forKey: .width)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.height, forKey: .height)
        try container.encode(self.length, forKey: .length)
        try container.encodeIfPresent(self.unit, forKey: .unit)
        try container.encode(self.width, forKey: .width)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case height
        case length
        case unit
        case width
    }
}