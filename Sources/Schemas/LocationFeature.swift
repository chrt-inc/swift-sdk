import Foundation

/// GeoJSON Feature with typed properties for locations
/// 
/// The geometry field is strongly typed as Geometry (union of all geometry types)
/// but remains optional to match the base Feature class specification.
/// To ensure geometry is always present, validate it at runtime or make it required.
public struct LocationFeature: Codable, Hashable, Sendable {
    public let bbox: [JSONValue]?
    public let type: Feature
    public let geometry: Geometry
    public let properties: Nullable<LocationProperties>?
    public let id: Nullable<Id>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        bbox: [JSONValue]? = nil,
        type: Feature,
        geometry: Geometry,
        properties: Nullable<LocationProperties>? = nil,
        id: Nullable<Id>? = nil,
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
        self.geometry = try container.decode(Geometry.self, forKey: .geometry)
        self.properties = try container.decodeNullableIfPresent(LocationProperties.self, forKey: .properties)
        self.id = try container.decodeNullableIfPresent(Id.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.bbox, forKey: .bbox)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.geometry, forKey: .geometry)
        try container.encodeNullableIfPresent(self.properties, forKey: .properties)
        try container.encodeNullableIfPresent(self.id, forKey: .id)
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