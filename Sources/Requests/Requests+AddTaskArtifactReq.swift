import Foundation

extension Requests {
    public struct AddTaskArtifactReq: Codable, Hashable, Sendable {
        /// Initial status of the task artifact.
        public let status: TaskArtifactStatusEnum1
        public let taskArtifact: TaskArtifactClientCreate1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            status: TaskArtifactStatusEnum1,
            taskArtifact: TaskArtifactClientCreate1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.status = status
            self.taskArtifact = taskArtifact
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.status = try container.decode(TaskArtifactStatusEnum1.self, forKey: .status)
            self.taskArtifact = try container.decode(TaskArtifactClientCreate1.self, forKey: .taskArtifact)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.status, forKey: .status)
            try container.encode(self.taskArtifact, forKey: .taskArtifact)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case status
            case taskArtifact = "task_artifact"
        }
    }
}