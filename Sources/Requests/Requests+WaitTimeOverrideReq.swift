import Foundation

extension Requests {
    public struct WaitTimeOverrideReq: Codable, Hashable, Sendable {
        public let geofenceDistanceMiles: Double?
        public let waitTimeEndTimestamp: Date?
        public let waitTimeStartTimestamp: Date?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            geofenceDistanceMiles: Double? = nil,
            waitTimeEndTimestamp: Date? = nil,
            waitTimeStartTimestamp: Date? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.geofenceDistanceMiles = geofenceDistanceMiles
            self.waitTimeEndTimestamp = waitTimeEndTimestamp
            self.waitTimeStartTimestamp = waitTimeStartTimestamp
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.geofenceDistanceMiles = try container.decodeIfPresent(Double.self, forKey: .geofenceDistanceMiles)
            self.waitTimeEndTimestamp = try container.decodeIfPresent(Date.self, forKey: .waitTimeEndTimestamp)
            self.waitTimeStartTimestamp = try container.decodeIfPresent(Date.self, forKey: .waitTimeStartTimestamp)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.geofenceDistanceMiles, forKey: .geofenceDistanceMiles)
            try container.encodeIfPresent(self.waitTimeEndTimestamp, forKey: .waitTimeEndTimestamp)
            try container.encodeIfPresent(self.waitTimeStartTimestamp, forKey: .waitTimeStartTimestamp)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case geofenceDistanceMiles = "geofence_distance_miles"
            case waitTimeEndTimestamp = "wait_time_end_timestamp"
            case waitTimeStartTimestamp = "wait_time_start_timestamp"
        }
    }
}