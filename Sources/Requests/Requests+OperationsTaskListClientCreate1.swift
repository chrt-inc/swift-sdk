import Foundation

extension Requests {
    public struct OperationsTaskListClientCreate1: Codable, Hashable, Sendable {
        public let description: String?
        public let entries: [OperationsTaskListEntryClientCreate1]?
        public let name: String
        public let schemaVersion: Int
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            description: String? = nil,
            entries: [OperationsTaskListEntryClientCreate1]? = nil,
            name: String,
            schemaVersion: Int,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.description = description
            self.entries = entries
            self.name = name
            self.schemaVersion = schemaVersion
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.entries = try container.decodeIfPresent([OperationsTaskListEntryClientCreate1].self, forKey: .entries)
            self.name = try container.decode(String.self, forKey: .name)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.entries, forKey: .entries)
            try container.encode(self.name, forKey: .name)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case description
            case entries
            case name
            case schemaVersion = "schema_version"
        }
    }
}