import Foundation

public struct ChampQuantity: Codable, Hashable, Sendable {
    public let shipmentDescriptionCode: String?
    public let numberOfPieces: Int?
    public let weight: CargojsonWeight?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        shipmentDescriptionCode: String? = nil,
        numberOfPieces: Int? = nil,
        weight: CargojsonWeight? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.shipmentDescriptionCode = shipmentDescriptionCode
        self.numberOfPieces = numberOfPieces
        self.weight = weight
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.shipmentDescriptionCode = try container.decodeIfPresent(String.self, forKey: .shipmentDescriptionCode)
        self.numberOfPieces = try container.decodeIfPresent(Int.self, forKey: .numberOfPieces)
        self.weight = try container.decodeIfPresent(CargojsonWeight.self, forKey: .weight)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.shipmentDescriptionCode, forKey: .shipmentDescriptionCode)
        try container.encodeIfPresent(self.numberOfPieces, forKey: .numberOfPieces)
        try container.encodeIfPresent(self.weight, forKey: .weight)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case shipmentDescriptionCode
        case numberOfPieces
        case weight
    }
}