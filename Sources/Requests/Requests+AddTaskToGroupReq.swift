import Foundation

extension Requests {
    public struct AddTaskToGroupReq: Codable, Hashable, Sendable {
        /// 0-based index of desired ordering
        public let index: Int
        /// Initial status of the task. Must respect ordering constraints (COMPLETED tasks strictly before STAGED tasks).
        public let status: TaskStatusEnum1
        public let task: TaskClientCreate1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            index: Int,
            status: TaskStatusEnum1,
            task: TaskClientCreate1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.index = index
            self.status = status
            self.task = task
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.index = try container.decode(Int.self, forKey: .index)
            self.status = try container.decode(TaskStatusEnum1.self, forKey: .status)
            self.task = try container.decode(TaskClientCreate1.self, forKey: .task)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.index, forKey: .index)
            try container.encode(self.status, forKey: .status)
            try container.encode(self.task, forKey: .task)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case index
            case status
            case task
        }
    }
}