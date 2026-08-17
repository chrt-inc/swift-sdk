import Foundation

extension Requests {
    public struct DispatchScienceCredsClientCreate1: Codable, Hashable, Sendable {
        /// Per-provider https:// base URL for a courier TMS integration.
        public let baseUrl: String
        public let notes: String?
        public let password: String
        public let schemaVersion: Int
        public let username: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            baseUrl: String,
            notes: String? = nil,
            password: String,
            schemaVersion: Int,
            username: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.baseUrl = baseUrl
            self.notes = notes
            self.password = password
            self.schemaVersion = schemaVersion
            self.username = username
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.baseUrl = try container.decode(String.self, forKey: .baseUrl)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.password = try container.decode(String.self, forKey: .password)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.username = try container.decode(String.self, forKey: .username)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.baseUrl, forKey: .baseUrl)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encode(self.password, forKey: .password)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encode(self.username, forKey: .username)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case baseUrl = "base_url"
            case notes
            case password
            case schemaVersion = "schema_version"
            case username
        }
    }
}