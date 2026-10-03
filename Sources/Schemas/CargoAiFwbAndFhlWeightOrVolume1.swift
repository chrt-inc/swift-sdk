import Foundation

public struct CargoAiFwbAndFhlWeightOrVolume1: Codable, Hashable, Sendable {
    public let uom: Uom
    public let value: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        uom: Uom,
        value: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.uom = uom
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.uom = try container.decode(Uom.self, forKey: .uom)
        self.value = try container.decode(Double.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.uom, forKey: .uom)
        try container.encode(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case uom
        case value
    }
}