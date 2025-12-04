import Foundation

extension Requests {
    public struct AddTaskToGroupReq: Codable, Hashable, Sendable {
        public let task: TaskClientCreate1
        /// Initial status of the task. Must respect ordering constraints (COMPLETED tasks strictly before STAGED tasks).
        public let status: TaskStatusEnum1
        /// 0-based index of desired ordering
        public let index: Int
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            task: TaskClientCreate1,
            status: TaskStatusEnum1,
            index: Int,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.task = task
            self.status = status
            self.index = index
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.task = try container.decode(TaskClientCreate1.self, forKey: .task)
            self.status = try container.decode(TaskStatusEnum1.self, forKey: .status)
            self.index = try container.decode(Int.self, forKey: .index)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.task, forKey: .task)
            try container.encode(self.status, forKey: .status)
            try container.encode(self.index, forKey: .index)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case task
            case status
            case index
        }
    }
}