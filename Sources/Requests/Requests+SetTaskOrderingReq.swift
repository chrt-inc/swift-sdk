import Foundation

extension Requests {
    public struct SetTaskOrderingReq: Codable, Hashable, Sendable {
        public let taskOrdering: [String]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            taskOrdering: [String],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.taskOrdering = taskOrdering
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.taskOrdering = try container.decode([String].self, forKey: .taskOrdering)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.taskOrdering, forKey: .taskOrdering)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case taskOrdering = "task_ordering"
        }
    }
}