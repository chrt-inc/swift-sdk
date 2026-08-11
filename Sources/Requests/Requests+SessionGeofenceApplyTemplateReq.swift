import Foundation

extension Requests {
    public struct SessionGeofenceApplyTemplateReq: Codable, Hashable, Sendable {
        public let geofenceTemplateId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            geofenceTemplateId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.geofenceTemplateId = geofenceTemplateId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.geofenceTemplateId = try container.decode(String.self, forKey: .geofenceTemplateId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.geofenceTemplateId, forKey: .geofenceTemplateId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case geofenceTemplateId = "geofence_template_id"
        }
    }
}