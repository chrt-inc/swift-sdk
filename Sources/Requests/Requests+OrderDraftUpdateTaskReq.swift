import Foundation

extension Requests {
    public struct OrderDraftUpdateTaskReq: Codable, Hashable, Sendable {
        public let taskId: String
        public let taskUpdate: TaskClientUpdate1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            taskId: String,
            taskUpdate: TaskClientUpdate1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.taskId = taskId
            self.taskUpdate = taskUpdate
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.taskId = try container.decode(String.self, forKey: .taskId)
            self.taskUpdate = try container.decode(TaskClientUpdate1.self, forKey: .taskUpdate)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.taskId, forKey: .taskId)
            try container.encode(self.taskUpdate, forKey: .taskUpdate)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case taskId = "task_id"
            case taskUpdate = "task_update"
        }
    }
}