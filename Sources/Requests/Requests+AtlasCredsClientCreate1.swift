import Foundation

extension Requests {
    public struct AtlasCredsClientCreate1: Codable, Hashable, Sendable {
        public let apiKey: String
        public let notes: String?
        public let schemaVersion: Int
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            apiKey: String,
            notes: String? = nil,
            schemaVersion: Int,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.apiKey = apiKey
            self.notes = notes
            self.schemaVersion = schemaVersion
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.apiKey = try container.decode(String.self, forKey: .apiKey)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.apiKey, forKey: .apiKey)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case apiKey = "api_key"
            case notes
            case schemaVersion = "schema_version"
        }
    }
}