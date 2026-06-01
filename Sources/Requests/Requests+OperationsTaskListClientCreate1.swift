import Foundation

extension Requests {
    public struct OperationsTaskListClientCreate1: Codable, Hashable, Sendable {
        public let schemaVersion: Int
        public let name: String
        public let description: String?
        public let tags: [String]?
        public let entries: [OperationsTaskListEntry1]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            schemaVersion: Int,
            name: String,
            description: String? = nil,
            tags: [String]? = nil,
            entries: [OperationsTaskListEntry1]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.schemaVersion = schemaVersion
            self.name = name
            self.description = description
            self.tags = tags
            self.entries = entries
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.name = try container.decode(String.self, forKey: .name)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.tags = try container.decodeIfPresent([String].self, forKey: .tags)
            self.entries = try container.decodeIfPresent([OperationsTaskListEntry1].self, forKey: .entries)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.tags, forKey: .tags)
            try container.encodeIfPresent(self.entries, forKey: .entries)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case schemaVersion = "schema_version"
            case name
            case description
            case tags
            case entries
        }
    }
}