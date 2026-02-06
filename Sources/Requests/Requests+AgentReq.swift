import Foundation

extension Requests {
    public struct AgentReq: Codable, Hashable, Sendable {
        public let topics: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            topics: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.topics = topics
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.topics = try container.decodeIfPresent([String].self, forKey: .topics)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.topics, forKey: .topics)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case topics
        }
    }
}