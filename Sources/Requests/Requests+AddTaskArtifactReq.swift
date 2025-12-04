import Foundation

extension Requests {
    public struct AddTaskArtifactReq: Codable, Hashable, Sendable {
        public let taskArtifact: TaskArtifactClientCreate1
        /// Initial status of the task artifact.
        public let status: TaskArtifactStatusEnum1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            taskArtifact: TaskArtifactClientCreate1,
            status: TaskArtifactStatusEnum1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.taskArtifact = taskArtifact
            self.status = status
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.taskArtifact = try container.decode(TaskArtifactClientCreate1.self, forKey: .taskArtifact)
            self.status = try container.decode(TaskArtifactStatusEnum1.self, forKey: .status)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.taskArtifact, forKey: .taskArtifact)
            try container.encode(self.status, forKey: .status)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case taskArtifact = "task_artifact"
            case status
        }
    }
}