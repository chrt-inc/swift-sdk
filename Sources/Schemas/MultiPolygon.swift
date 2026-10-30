import Foundation

/// MultiPolygon Model
public struct MultiPolygon: Codable, Hashable, Sendable {
    public let bbox: [JSONValue]?
    public let coordinates: [[[CoordinatesItemItemItem]]]
    public let type: MultiPolygon
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        bbox: [JSONValue]? = nil,
        coordinates: [[[CoordinatesItemItemItem]]],
        type: MultiPolygon,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.bbox = bbox
        self.coordinates = coordinates
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.bbox = try container.decodeIfPresent([JSONValue].self, forKey: .bbox)
        self.coordinates = try container.decode([[[CoordinatesItemItemItem]]].self, forKey: .coordinates)
        self.type = try container.decode(MultiPolygon.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.bbox, forKey: .bbox)
        try container.encode(self.coordinates, forKey: .coordinates)
        try container.encode(self.type, forKey: .type)
    }

    public enum MultiPolygon: String, Codable, Hashable, CaseIterable, Sendable {
        case multiPolygon = "MultiPolygon"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case bbox
        case coordinates
        case type
    }
}