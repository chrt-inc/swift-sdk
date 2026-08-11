import Foundation

public struct SessionGeofenceClientCreate1: Codable, Hashable, Sendable {
    public let displayName: String
    public let location: GeofencePointLocationFeature1
    public let radiusMiles: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        displayName: String,
        location: GeofencePointLocationFeature1,
        radiusMiles: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.displayName = displayName
        self.location = location
        self.radiusMiles = radiusMiles
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.displayName = try container.decode(String.self, forKey: .displayName)
        self.location = try container.decode(GeofencePointLocationFeature1.self, forKey: .location)
        self.radiusMiles = try container.decode(Double.self, forKey: .radiusMiles)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.displayName, forKey: .displayName)
        try container.encode(self.location, forKey: .location)
        try container.encode(self.radiusMiles, forKey: .radiusMiles)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case displayName = "display_name"
        case location
        case radiusMiles = "radius_miles"
    }
}