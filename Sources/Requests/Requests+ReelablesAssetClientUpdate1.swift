import Foundation

extension Requests {
    public struct ReelablesAssetClientUpdate1: Codable, Hashable, Sendable {
        public let destinationGeofenceLocation: LocationFeature?
        public let destinationGeofenceLocationSetToNone: Bool?
        public let destinationGeofenceRadiusMiles: Double?
        public let name: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            destinationGeofenceLocation: LocationFeature? = nil,
            destinationGeofenceLocationSetToNone: Bool? = nil,
            destinationGeofenceRadiusMiles: Double? = nil,
            name: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.destinationGeofenceLocation = destinationGeofenceLocation
            self.destinationGeofenceLocationSetToNone = destinationGeofenceLocationSetToNone
            self.destinationGeofenceRadiusMiles = destinationGeofenceRadiusMiles
            self.name = name
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.destinationGeofenceLocation = try container.decodeIfPresent(LocationFeature.self, forKey: .destinationGeofenceLocation)
            self.destinationGeofenceLocationSetToNone = try container.decodeIfPresent(Bool.self, forKey: .destinationGeofenceLocationSetToNone)
            self.destinationGeofenceRadiusMiles = try container.decodeIfPresent(Double.self, forKey: .destinationGeofenceRadiusMiles)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.destinationGeofenceLocation, forKey: .destinationGeofenceLocation)
            try container.encodeIfPresent(self.destinationGeofenceLocationSetToNone, forKey: .destinationGeofenceLocationSetToNone)
            try container.encodeIfPresent(self.destinationGeofenceRadiusMiles, forKey: .destinationGeofenceRadiusMiles)
            try container.encodeIfPresent(self.name, forKey: .name)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case destinationGeofenceLocation = "destination_geofence_location"
            case destinationGeofenceLocationSetToNone = "destination_geofence_location__set_to_None"
            case destinationGeofenceRadiusMiles = "destination_geofence_radius_miles"
            case name
        }
    }
}