import Foundation

public struct SessionGeofence1: Codable, Hashable, Sendable {
    public let displayName: String
    public let entered: Bool?
    public let enteredAtTimestamp: Date?
    public let geofenceId: String
    public let location: GeofencePointLocationFeature1
    public let radiusMiles: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        displayName: String,
        entered: Bool? = nil,
        enteredAtTimestamp: Date? = nil,
        geofenceId: String,
        location: GeofencePointLocationFeature1,
        radiusMiles: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.displayName = displayName
        self.entered = entered
        self.enteredAtTimestamp = enteredAtTimestamp
        self.geofenceId = geofenceId
        self.location = location
        self.radiusMiles = radiusMiles
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.displayName = try container.decode(String.self, forKey: .displayName)
        self.entered = try container.decodeIfPresent(Bool.self, forKey: .entered)
        self.enteredAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .enteredAtTimestamp)
        self.geofenceId = try container.decode(String.self, forKey: .geofenceId)
        self.location = try container.decode(GeofencePointLocationFeature1.self, forKey: .location)
        self.radiusMiles = try container.decode(Double.self, forKey: .radiusMiles)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.displayName, forKey: .displayName)
        try container.encodeIfPresent(self.entered, forKey: .entered)
        try container.encodeIfPresent(self.enteredAtTimestamp, forKey: .enteredAtTimestamp)
        try container.encode(self.geofenceId, forKey: .geofenceId)
        try container.encode(self.location, forKey: .location)
        try container.encode(self.radiusMiles, forKey: .radiusMiles)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case displayName = "display_name"
        case entered
        case enteredAtTimestamp = "entered_at_timestamp"
        case geofenceId = "geofence_id"
        case location
        case radiusMiles = "radius_miles"
    }
}