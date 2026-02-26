import Foundation

extension Requests {
    public struct OrderDraftAddTaskArtifactReq: Codable, Hashable, Sendable {
        public let taskId: String
        public let taskArtifactType: TaskArtifactTypeEnum1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            taskId: String,
            taskArtifactType: TaskArtifactTypeEnum1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.taskId = taskId
            self.taskArtifactType = taskArtifactType
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.taskId = try container.decode(String.self, forKey: .taskId)
            self.taskArtifactType = try container.decode(TaskArtifactTypeEnum1.self, forKey: .taskArtifactType)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.taskId, forKey: .taskId)
            try container.encode(self.taskArtifactType, forKey: .taskArtifactType)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case taskId = "task_id"
            case taskArtifactType = "task_artifact_type"
        }
    }
}