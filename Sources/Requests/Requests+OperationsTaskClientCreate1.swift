import Foundation

extension Requests {
    public struct OperationsTaskClientCreate1: Codable, Hashable, Sendable {
        public let schemaVersion: Int
        public let caseId: String
        public let title: String
        public let description: String
        public let deadlineTimestamp: Date?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            schemaVersion: Int,
            caseId: String,
            title: String,
            description: String,
            deadlineTimestamp: Date? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.schemaVersion = schemaVersion
            self.caseId = caseId
            self.title = title
            self.description = description
            self.deadlineTimestamp = deadlineTimestamp
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.caseId = try container.decode(String.self, forKey: .caseId)
            self.title = try container.decode(String.self, forKey: .title)
            self.description = try container.decode(String.self, forKey: .description)
            self.deadlineTimestamp = try container.decodeIfPresent(Date.self, forKey: .deadlineTimestamp)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encode(self.caseId, forKey: .caseId)
            try container.encode(self.title, forKey: .title)
            try container.encode(self.description, forKey: .description)
            try container.encodeIfPresent(self.deadlineTimestamp, forKey: .deadlineTimestamp)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case schemaVersion = "schema_version"
            case caseId = "case_id"
            case title
            case description
            case deadlineTimestamp = "deadline_timestamp"
        }
    }
}