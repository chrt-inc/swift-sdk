import Foundation

/// MultiLineString Model
public struct MultiLineString: Codable, Hashable, Sendable {
    public let bbox: Nullable<[JSONValue]>?
    public let coordinates: [[MultiLineStringCoordinatesItemItem]]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        bbox: Nullable<[JSONValue]>? = nil,
        coordinates: [[MultiLineStringCoordinatesItemItem]],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.bbox = bbox
        self.coordinates = coordinates
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.bbox = try container.decodeNullableIfPresent([JSONValue].self, forKey: .bbox)
        self.coordinates = try container.decode([[MultiLineStringCoordinatesItemItem]].self, forKey: .coordinates)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeNullableIfPresent(self.bbox, forKey: .bbox)
        try container.encode(self.coordinates, forKey: .coordinates)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case bbox
        case coordinates
    }
}