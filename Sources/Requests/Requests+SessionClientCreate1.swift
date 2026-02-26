import Foundation

extension Requests {
    public struct SessionClientCreate1: Codable, Hashable, Sendable {
        public let schemaVersion: Int
        public let offChrtReferenceId: String?
        public let comments: String?
        public let `public`: Bool?
        public let offChrtShipperOrgId: String?
        public let terminationScheduledForTimestamp: Date?
        public let flightNumbers: [String]?
        public let faFlightIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            schemaVersion: Int,
            offChrtReferenceId: String? = nil,
            comments: String? = nil,
            public: Bool? = nil,
            offChrtShipperOrgId: String? = nil,
            terminationScheduledForTimestamp: Date? = nil,
            flightNumbers: [String]? = nil,
            faFlightIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.schemaVersion = schemaVersion
            self.offChrtReferenceId = offChrtReferenceId
            self.comments = comments
            self.public = `public`
            self.offChrtShipperOrgId = offChrtShipperOrgId
            self.terminationScheduledForTimestamp = terminationScheduledForTimestamp
            self.flightNumbers = flightNumbers
            self.faFlightIds = faFlightIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.public = try container.decodeIfPresent(Bool.self, forKey: .public)
            self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
            self.terminationScheduledForTimestamp = try container.decodeIfPresent(Date.self, forKey: .terminationScheduledForTimestamp)
            self.flightNumbers = try container.decodeIfPresent([String].self, forKey: .flightNumbers)
            self.faFlightIds = try container.decodeIfPresent([String].self, forKey: .faFlightIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.public, forKey: .public)
            try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
            try container.encodeIfPresent(self.terminationScheduledForTimestamp, forKey: .terminationScheduledForTimestamp)
            try container.encodeIfPresent(self.flightNumbers, forKey: .flightNumbers)
            try container.encodeIfPresent(self.faFlightIds, forKey: .faFlightIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case schemaVersion = "schema_version"
            case offChrtReferenceId = "off_chrt_reference_id"
            case comments
            case `public`
            case offChrtShipperOrgId = "off_chrt_shipper_org_id"
            case terminationScheduledForTimestamp = "termination_scheduled_for_timestamp"
            case flightNumbers = "flight_numbers"
            case faFlightIds = "fa_flight_ids"
        }
    }
}