import Foundation

/// Polygon Model
public struct Polygon: Codable, Hashable, Sendable {
    public let bbox: [JSONValue]?
    public let coordinates: [[CoordinatesItemItem]]
    public let type: Polygon
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        bbox: [JSONValue]? = nil,
        coordinates: [[CoordinatesItemItem]],
        type: Polygon,
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
        self.coordinates = try container.decode([[CoordinatesItemItem]].self, forKey: .coordinates)
        self.type = try container.decode(Polygon.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.bbox, forKey: .bbox)
        try container.encode(self.coordinates, forKey: .coordinates)
        try container.encode(self.type, forKey: .type)
    }

    public enum Polygon: String, Codable, Hashable, CaseIterable, Sendable {
        case polygon = "Polygon"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case bbox
        case coordinates
        case type
    }
}