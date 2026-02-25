import Foundation

extension Requests {
    public struct OrderDraftAddTaskArtifactReq: Codable, Hashable, Sendable {
        public let taskArtifactType: TaskArtifactTypeEnum1
        public let taskId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            taskArtifactType: TaskArtifactTypeEnum1,
            taskId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.taskArtifactType = taskArtifactType
            self.taskId = taskId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.taskArtifactType = try container.decode(TaskArtifactTypeEnum1.self, forKey: .taskArtifactType)
            self.taskId = try container.decode(String.self, forKey: .taskId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.taskArtifactType, forKey: .taskArtifactType)
            try container.encode(self.taskId, forKey: .taskId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case taskArtifactType = "task_artifact_type"
            case taskId = "task_id"
        }
    }
}