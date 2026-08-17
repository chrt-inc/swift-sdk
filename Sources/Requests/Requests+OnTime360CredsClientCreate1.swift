import Foundation

extension Requests {
    public struct OnTime360CredsClientCreate1: Codable, Hashable, Sendable {
        public let apiKey: String
        public let baseUrl: String
        public let notes: String?
        public let schemaVersion: Int
        /// IANA time zone name (e.g. `America/New_York`).
        public let siteTimeZone: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            apiKey: String,
            baseUrl: String,
            notes: String? = nil,
            schemaVersion: Int,
            siteTimeZone: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.apiKey = apiKey
            self.baseUrl = baseUrl
            self.notes = notes
            self.schemaVersion = schemaVersion
            self.siteTimeZone = siteTimeZone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.apiKey = try container.decode(String.self, forKey: .apiKey)
            self.baseUrl = try container.decode(String.self, forKey: .baseUrl)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.siteTimeZone = try container.decode(String.self, forKey: .siteTimeZone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.apiKey, forKey: .apiKey)
            try container.encode(self.baseUrl, forKey: .baseUrl)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encode(self.siteTimeZone, forKey: .siteTimeZone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case apiKey = "api_key"
            case baseUrl = "base_url"
            case notes
            case schemaVersion = "schema_version"
            case siteTimeZone = "site_time_zone"
        }
    }
}