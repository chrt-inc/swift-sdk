import Foundation

/// GeometryCollection Model
public struct GeometryCollection: Codable, Hashable, Sendable {
    public let bbox: [JSONValue]?
    public let geometries: [GeometryCollectionOutputGeometriesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        bbox: [JSONValue]? = nil,
        geometries: [GeometryCollectionOutputGeometriesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.bbox = bbox
        self.geometries = geometries
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.bbox = try container.decodeIfPresent([JSONValue].self, forKey: .bbox)
        self.geometries = try container.decode([GeometryCollectionOutputGeometriesItem].self, forKey: .geometries)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.bbox, forKey: .bbox)
        try container.encode(self.geometries, forKey: .geometries)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case bbox
        case geometries
    }
}