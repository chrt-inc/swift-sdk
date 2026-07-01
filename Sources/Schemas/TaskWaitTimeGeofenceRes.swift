import Foundation

public struct TaskWaitTimeGeofenceRes: Codable, Hashable, Sendable {
    public let distanceMiles: Double?
    public let driverLocationAvailable: Bool
    public let geofenceDistanceMiles: Double
    public let inGeofence: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        distanceMiles: Double? = nil,
        driverLocationAvailable: Bool,
        geofenceDistanceMiles: Double,
        inGeofence: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.distanceMiles = distanceMiles
        self.driverLocationAvailable = driverLocationAvailable
        self.geofenceDistanceMiles = geofenceDistanceMiles
        self.inGeofence = inGeofence
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.distanceMiles = try container.decodeIfPresent(Double.self, forKey: .distanceMiles)
        self.driverLocationAvailable = try container.decode(Bool.self, forKey: .driverLocationAvailable)
        self.geofenceDistanceMiles = try container.decode(Double.self, forKey: .geofenceDistanceMiles)
        self.inGeofence = try container.decode(Bool.self, forKey: .inGeofence)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.distanceMiles, forKey: .distanceMiles)
        try container.encode(self.driverLocationAvailable, forKey: .driverLocationAvailable)
        try container.encode(self.geofenceDistanceMiles, forKey: .geofenceDistanceMiles)
        try container.encode(self.inGeofence, forKey: .inGeofence)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case distanceMiles = "distance_miles"
        case driverLocationAvailable = "driver_location_available"
        case geofenceDistanceMiles = "geofence_distance_miles"
        case inGeofence = "in_geofence"
    }
}