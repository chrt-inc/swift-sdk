import Foundation

extension Requests {
    public struct SessionClientCreate1: Codable, Hashable, Sendable {
        public let comments: String?
        public let destinationGeofenceLocation: LocationFeature?
        public let destinationGeofenceRadiusMiles: Double?
        /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
        public let offChrtReferenceId: String?
        public let offChrtShipperOrgId: String?
        public let `public`: Bool?
        public let schemaVersion: Int
        public let terminationScheduledForTimestamp: Date?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            comments: String? = nil,
            destinationGeofenceLocation: LocationFeature? = nil,
            destinationGeofenceRadiusMiles: Double? = nil,
            offChrtReferenceId: String? = nil,
            offChrtShipperOrgId: String? = nil,
            public: Bool? = nil,
            schemaVersion: Int,
            terminationScheduledForTimestamp: Date? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.comments = comments
            self.destinationGeofenceLocation = destinationGeofenceLocation
            self.destinationGeofenceRadiusMiles = destinationGeofenceRadiusMiles
            self.offChrtReferenceId = offChrtReferenceId
            self.offChrtShipperOrgId = offChrtShipperOrgId
            self.public = `public`
            self.schemaVersion = schemaVersion
            self.terminationScheduledForTimestamp = terminationScheduledForTimestamp
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.destinationGeofenceLocation = try container.decodeIfPresent(LocationFeature.self, forKey: .destinationGeofenceLocation)
            self.destinationGeofenceRadiusMiles = try container.decodeIfPresent(Double.self, forKey: .destinationGeofenceRadiusMiles)
            self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
            self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
            self.public = try container.decodeIfPresent(Bool.self, forKey: .public)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.terminationScheduledForTimestamp = try container.decodeIfPresent(Date.self, forKey: .terminationScheduledForTimestamp)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.destinationGeofenceLocation, forKey: .destinationGeofenceLocation)
            try container.encodeIfPresent(self.destinationGeofenceRadiusMiles, forKey: .destinationGeofenceRadiusMiles)
            try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
            try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
            try container.encodeIfPresent(self.public, forKey: .public)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.terminationScheduledForTimestamp, forKey: .terminationScheduledForTimestamp)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case comments
            case destinationGeofenceLocation = "destination_geofence_location"
            case destinationGeofenceRadiusMiles = "destination_geofence_radius_miles"
            case offChrtReferenceId = "off_chrt_reference_id"
            case offChrtShipperOrgId = "off_chrt_shipper_org_id"
            case `public`
            case schemaVersion = "schema_version"
            case terminationScheduledForTimestamp = "termination_scheduled_for_timestamp"
        }
    }
}