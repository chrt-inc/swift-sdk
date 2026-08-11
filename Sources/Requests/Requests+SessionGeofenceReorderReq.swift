import Foundation

extension Requests {
    public struct SessionGeofenceReorderReq: Codable, Hashable, Sendable {
        public let orderedGeofenceIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orderedGeofenceIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orderedGeofenceIds = orderedGeofenceIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orderedGeofenceIds = try container.decodeIfPresent([String].self, forKey: .orderedGeofenceIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.orderedGeofenceIds, forKey: .orderedGeofenceIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orderedGeofenceIds = "ordered_geofence_ids"
        }
    }
}