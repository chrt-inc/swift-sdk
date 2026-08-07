import Foundation

extension Requests {
    public struct OrdersAddTaskReq: Codable, Hashable, Sendable {
        public let cargoIds: [String]?
        public let index: Int?
        public let status: TaskStatusEnum1?
        public let task: TaskClientCreate1
        public let taskGroupId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            cargoIds: [String]? = nil,
            index: Int? = nil,
            status: TaskStatusEnum1? = nil,
            task: TaskClientCreate1,
            taskGroupId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.cargoIds = cargoIds
            self.index = index
            self.status = status
            self.task = task
            self.taskGroupId = taskGroupId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.cargoIds = try container.decodeIfPresent([String].self, forKey: .cargoIds)
            self.index = try container.decodeIfPresent(Int.self, forKey: .index)
            self.status = try container.decodeIfPresent(TaskStatusEnum1.self, forKey: .status)
            self.task = try container.decode(TaskClientCreate1.self, forKey: .task)
            self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.cargoIds, forKey: .cargoIds)
            try container.encodeIfPresent(self.index, forKey: .index)
            try container.encodeIfPresent(self.status, forKey: .status)
            try container.encode(self.task, forKey: .task)
            try container.encode(self.taskGroupId, forKey: .taskGroupId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case cargoIds = "cargo_ids"
            case index
            case status
            case task
            case taskGroupId = "task_group_id"
        }
    }
}