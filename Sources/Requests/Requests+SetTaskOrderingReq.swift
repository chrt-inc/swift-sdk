import Foundation

extension Requests {
    public struct SetTaskOrderingReq: Codable, Hashable, Sendable {
        /// Complete list of task IDs in the desired order
        public let taskIds: [String]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            taskIds: [String],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.taskIds = taskIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.taskIds = try container.decode([String].self, forKey: .taskIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.taskIds, forKey: .taskIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case taskIds = "task_ids"
        }
    }
}