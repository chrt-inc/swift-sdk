import Foundation

extension Requests {
    public struct SetTaskGroupOrderingDraftReq: Codable, Hashable, Sendable {
        /// Complete list of task group IDs in the desired order
        public let taskGroupIds: [String]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            taskGroupIds: [String],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.taskGroupIds = taskGroupIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.taskGroupIds = try container.decode([String].self, forKey: .taskGroupIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.taskGroupIds, forKey: .taskGroupIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case taskGroupIds = "task_group_ids"
        }
    }
}