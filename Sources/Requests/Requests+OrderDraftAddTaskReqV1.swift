import Foundation

extension Requests {
    public struct OrderDraftAddTaskReqV1: Codable, Hashable, Sendable {
        public let cargoIds: [String]?
        public let task: TaskClientCreate1
        public let taskGroupId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            cargoIds: [String]? = nil,
            task: TaskClientCreate1,
            taskGroupId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.cargoIds = cargoIds
            self.task = task
            self.taskGroupId = taskGroupId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.cargoIds = try container.decodeIfPresent([String].self, forKey: .cargoIds)
            self.task = try container.decode(TaskClientCreate1.self, forKey: .task)
            self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.cargoIds, forKey: .cargoIds)
            try container.encode(self.task, forKey: .task)
            try container.encode(self.taskGroupId, forKey: .taskGroupId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case cargoIds = "cargo_ids"
            case task
            case taskGroupId = "task_group_id"
        }
    }
}