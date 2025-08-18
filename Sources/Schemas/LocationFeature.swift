import Foundation

/// GeoJSON Feature with typed properties for locations
public struct LocationFeature: Codable, Hashable, Sendable {
    public let bbox: [JSONValue]?
    public let type: Feature
    public let geometry: JSONValue?
    public let properties: JSONValue?
    public let id: JSONValue?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        bbox: [JSONValue]? = nil,
        type: Feature,
        geometry: JSONValue? = nil,
        properties: JSONValue? = nil,
        id: JSONValue? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.bbox = bbox
        self.type = type
        self.geometry = geometry
        self.properties = properties
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.bbox = try container.decodeIfPresent([JSONValue].self, forKey: .bbox)
        self.type = try container.decode(Feature.self, forKey: .type)
        self.geometry = try container.decodeIfPresent(JSONValue.self, forKey: .geometry)
        self.properties = try container.decodeIfPresent(JSONValue.self, forKey: .properties)
        self.id = try container.decodeIfPresent(JSONValue.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.bbox, forKey: .bbox)
        try container.encode(self.type, forKey: .type)
        try container.encodeIfPresent(self.geometry, forKey: .geometry)
        try container.encodeIfPresent(self.properties, forKey: .properties)
        try container.encodeIfPresent(self.id, forKey: .id)
    }

    public enum Feature: String, Codable, Hashable, CaseIterable, Sendable {
        case feature = "Feature"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case bbox
        case type
        case geometry
        case properties
        case id
    }
}