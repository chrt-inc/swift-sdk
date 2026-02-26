import Foundation

extension Requests {
    public struct OrderDraftAddTaskReqV1: Codable, Hashable, Sendable {
        public let taskGroupId: String
        public let task: TaskClientCreate1
        public let cargoIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            taskGroupId: String,
            task: TaskClientCreate1,
            cargoIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.taskGroupId = taskGroupId
            self.task = task
            self.cargoIds = cargoIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
            self.task = try container.decode(TaskClientCreate1.self, forKey: .task)
            self.cargoIds = try container.decodeIfPresent([String].self, forKey: .cargoIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.taskGroupId, forKey: .taskGroupId)
            try container.encode(self.task, forKey: .task)
            try container.encodeIfPresent(self.cargoIds, forKey: .cargoIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case taskGroupId = "task_group_id"
            case task
            case cargoIds = "cargo_ids"
        }
    }
}