import Foundation

extension Requests {
    public struct SessionGeofenceClientUpdate1: Codable, Hashable, Sendable {
        public let displayName: String?
        public let location: GeofencePointLocationFeature1?
        public let radiusMiles: Double?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            displayName: String? = nil,
            location: GeofencePointLocationFeature1? = nil,
            radiusMiles: Double? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.displayName = displayName
            self.location = location
            self.radiusMiles = radiusMiles
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.displayName = try container.decodeIfPresent(String.self, forKey: .displayName)
            self.location = try container.decodeIfPresent(GeofencePointLocationFeature1.self, forKey: .location)
            self.radiusMiles = try container.decodeIfPresent(Double.self, forKey: .radiusMiles)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.displayName, forKey: .displayName)
            try container.encodeIfPresent(self.location, forKey: .location)
            try container.encodeIfPresent(self.radiusMiles, forKey: .radiusMiles)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case displayName = "display_name"
            case location
            case radiusMiles = "radius_miles"
        }
    }
}