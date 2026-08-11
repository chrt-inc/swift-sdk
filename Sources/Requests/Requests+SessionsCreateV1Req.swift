import Foundation

extension Requests {
    public struct SessionsCreateV1Req: Codable, Hashable, Sendable {
        public let comments: String?
        public let geofenceTemplateId: String?
        public let geofences: [SessionGeofenceClientCreate1]?
        /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
        public let offChrtReferenceId: String?
        public let offChrtShipperOrgDataId: String?
        public let `public`: Bool?
        public let schemaVersion: Int
        public let terminationScheduledForTimestamp: Date?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            comments: String? = nil,
            geofenceTemplateId: String? = nil,
            geofences: [SessionGeofenceClientCreate1]? = nil,
            offChrtReferenceId: String? = nil,
            offChrtShipperOrgDataId: String? = nil,
            public: Bool? = nil,
            schemaVersion: Int,
            terminationScheduledForTimestamp: Date? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.comments = comments
            self.geofenceTemplateId = geofenceTemplateId
            self.geofences = geofences
            self.offChrtReferenceId = offChrtReferenceId
            self.offChrtShipperOrgDataId = offChrtShipperOrgDataId
            self.public = `public`
            self.schemaVersion = schemaVersion
            self.terminationScheduledForTimestamp = terminationScheduledForTimestamp
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.geofenceTemplateId = try container.decodeIfPresent(String.self, forKey: .geofenceTemplateId)
            self.geofences = try container.decodeIfPresent([SessionGeofenceClientCreate1].self, forKey: .geofences)
            self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
            self.offChrtShipperOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgDataId)
            self.public = try container.decodeIfPresent(Bool.self, forKey: .public)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.terminationScheduledForTimestamp = try container.decodeIfPresent(Date.self, forKey: .terminationScheduledForTimestamp)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.geofenceTemplateId, forKey: .geofenceTemplateId)
            try container.encodeIfPresent(self.geofences, forKey: .geofences)
            try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
            try container.encodeIfPresent(self.offChrtShipperOrgDataId, forKey: .offChrtShipperOrgDataId)
            try container.encodeIfPresent(self.public, forKey: .public)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.terminationScheduledForTimestamp, forKey: .terminationScheduledForTimestamp)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case comments
            case geofenceTemplateId = "geofence_template_id"
            case geofences
            case offChrtReferenceId = "off_chrt_reference_id"
            case offChrtShipperOrgDataId = "off_chrt_shipper_org_data_id"
            case `public`
            case schemaVersion = "schema_version"
            case terminationScheduledForTimestamp = "termination_scheduled_for_timestamp"
        }
    }
}