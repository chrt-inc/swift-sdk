import Foundation

public struct TaskWaitTimeGeofenceRes: Codable, Hashable, Sendable {
    public let inGeofence: Bool
    public let driverLocationAvailable: Bool
    public let distanceMiles: Double?
    public let geofenceDistanceMiles: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        inGeofence: Bool,
        driverLocationAvailable: Bool,
        distanceMiles: Double? = nil,
        geofenceDistanceMiles: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.inGeofence = inGeofence
        self.driverLocationAvailable = driverLocationAvailable
        self.distanceMiles = distanceMiles
        self.geofenceDistanceMiles = geofenceDistanceMiles
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.inGeofence = try container.decode(Bool.self, forKey: .inGeofence)
        self.driverLocationAvailable = try container.decode(Bool.self, forKey: .driverLocationAvailable)
        self.distanceMiles = try container.decodeIfPresent(Double.self, forKey: .distanceMiles)
        self.geofenceDistanceMiles = try container.decode(Double.self, forKey: .geofenceDistanceMiles)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.inGeofence, forKey: .inGeofence)
        try container.encode(self.driverLocationAvailable, forKey: .driverLocationAvailable)
        try container.encodeIfPresent(self.distanceMiles, forKey: .distanceMiles)
        try container.encode(self.geofenceDistanceMiles, forKey: .geofenceDistanceMiles)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case inGeofence = "in_geofence"
        case driverLocationAvailable = "driver_location_available"
        case distanceMiles = "distance_miles"
        case geofenceDistanceMiles = "geofence_distance_miles"
    }
}