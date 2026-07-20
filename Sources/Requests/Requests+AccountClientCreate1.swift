import Foundation

extension Requests {
    public struct AccountClientCreate1: Codable, Hashable, Sendable {
        public let location: LocationFeature?
        public let name: String
        public let offChrtOrgDataId: String?
        /// Must be a string starting with `org_`
        public let orgId: String?
        public let schemaVersion: Int
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            location: LocationFeature? = nil,
            name: String,
            offChrtOrgDataId: String? = nil,
            orgId: String? = nil,
            schemaVersion: Int,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.location = location
            self.name = name
            self.offChrtOrgDataId = offChrtOrgDataId
            self.orgId = orgId
            self.schemaVersion = schemaVersion
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
            self.name = try container.decode(String.self, forKey: .name)
            self.offChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtOrgDataId)
            self.orgId = try container.decodeIfPresent(String.self, forKey: .orgId)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.location, forKey: .location)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.offChrtOrgDataId, forKey: .offChrtOrgDataId)
            try container.encodeIfPresent(self.orgId, forKey: .orgId)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case location
            case name
            case offChrtOrgDataId = "off_chrt_org_data_id"
            case orgId = "org_id"
            case schemaVersion = "schema_version"
        }
    }
}