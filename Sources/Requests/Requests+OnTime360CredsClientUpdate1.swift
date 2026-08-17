import Foundation

extension Requests {
    public struct OnTime360CredsClientUpdate1: Codable, Hashable, Sendable {
        public let apiKey: String?
        public let apiKeySetToNone: Bool?
        public let notes: String?
        public let notesSetToNone: Bool?
        /// IANA time zone name (e.g. `America/New_York`).
        public let siteTimeZone: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            apiKey: String? = nil,
            apiKeySetToNone: Bool? = nil,
            notes: String? = nil,
            notesSetToNone: Bool? = nil,
            siteTimeZone: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.apiKey = apiKey
            self.apiKeySetToNone = apiKeySetToNone
            self.notes = notes
            self.notesSetToNone = notesSetToNone
            self.siteTimeZone = siteTimeZone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.apiKey = try container.decodeIfPresent(String.self, forKey: .apiKey)
            self.apiKeySetToNone = try container.decodeIfPresent(Bool.self, forKey: .apiKeySetToNone)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.notesSetToNone = try container.decodeIfPresent(Bool.self, forKey: .notesSetToNone)
            self.siteTimeZone = try container.decodeIfPresent(String.self, forKey: .siteTimeZone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.apiKey, forKey: .apiKey)
            try container.encodeIfPresent(self.apiKeySetToNone, forKey: .apiKeySetToNone)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.notesSetToNone, forKey: .notesSetToNone)
            try container.encodeIfPresent(self.siteTimeZone, forKey: .siteTimeZone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case apiKey = "api_key"
            case apiKeySetToNone = "api_key__set_to_None"
            case notes
            case notesSetToNone = "notes__set_to_None"
            case siteTimeZone = "site_time_zone"
        }
    }
}