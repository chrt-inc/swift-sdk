import Foundation

extension Requests {
    public struct SessionClientCreate1: Codable, Hashable, Sendable {
        public let comments: String?
        public let faFlightIds: [String]?
        public let flightNumbers: [String]?
        public let offChrtReferenceId: String?
        public let offChrtShipperOrgId: String?
        public let `public`: Bool?
        public let schemaVersion: Int
        public let terminationScheduledForTimestamp: Date?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            comments: String? = nil,
            faFlightIds: [String]? = nil,
            flightNumbers: [String]? = nil,
            offChrtReferenceId: String? = nil,
            offChrtShipperOrgId: String? = nil,
            public: Bool? = nil,
            schemaVersion: Int,
            terminationScheduledForTimestamp: Date? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.comments = comments
            self.faFlightIds = faFlightIds
            self.flightNumbers = flightNumbers
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
            self.faFlightIds = try container.decodeIfPresent([String].self, forKey: .faFlightIds)
            self.flightNumbers = try container.decodeIfPresent([String].self, forKey: .flightNumbers)
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
            try container.encodeIfPresent(self.faFlightIds, forKey: .faFlightIds)
            try container.encodeIfPresent(self.flightNumbers, forKey: .flightNumbers)
            try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
            try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
            try container.encodeIfPresent(self.public, forKey: .public)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.terminationScheduledForTimestamp, forKey: .terminationScheduledForTimestamp)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case comments
            case faFlightIds = "fa_flight_ids"
            case flightNumbers = "flight_numbers"
            case offChrtReferenceId = "off_chrt_reference_id"
            case offChrtShipperOrgId = "off_chrt_shipper_org_id"
            case `public`
            case schemaVersion = "schema_version"
            case terminationScheduledForTimestamp = "termination_scheduled_for_timestamp"
        }
    }
}