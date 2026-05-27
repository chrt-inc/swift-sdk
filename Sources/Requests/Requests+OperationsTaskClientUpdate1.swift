import Foundation

extension Requests {
    public struct OperationsTaskClientUpdate1: Codable, Hashable, Sendable {
        public let title: String?
        public let description: String?
        public let deadlineTimestamp: Date?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            title: String? = nil,
            description: String? = nil,
            deadlineTimestamp: Date? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.title = title
            self.description = description
            self.deadlineTimestamp = deadlineTimestamp
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.title = try container.decodeIfPresent(String.self, forKey: .title)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.deadlineTimestamp = try container.decodeIfPresent(Date.self, forKey: .deadlineTimestamp)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.title, forKey: .title)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.deadlineTimestamp, forKey: .deadlineTimestamp)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case title
            case description
            case deadlineTimestamp = "deadline_timestamp"
        }
    }
}