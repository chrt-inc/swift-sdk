import Foundation

extension Requests {
    public struct TaskArtifactAddToTaskReq: Codable, Hashable, Sendable {
        public let taskId: String
        public let taskArtifactType: TaskArtifactTypeEnum1
        public let taskArtifactIsCompleted: Bool
        public let completorComments: String?
        public let location: LocationFeature?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            taskId: String,
            taskArtifactType: TaskArtifactTypeEnum1,
            taskArtifactIsCompleted: Bool,
            completorComments: String? = nil,
            location: LocationFeature? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.taskId = taskId
            self.taskArtifactType = taskArtifactType
            self.taskArtifactIsCompleted = taskArtifactIsCompleted
            self.completorComments = completorComments
            self.location = location
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.taskId = try container.decode(String.self, forKey: .taskId)
            self.taskArtifactType = try container.decode(TaskArtifactTypeEnum1.self, forKey: .taskArtifactType)
            self.taskArtifactIsCompleted = try container.decode(Bool.self, forKey: .taskArtifactIsCompleted)
            self.completorComments = try container.decodeIfPresent(String.self, forKey: .completorComments)
            self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.taskId, forKey: .taskId)
            try container.encode(self.taskArtifactType, forKey: .taskArtifactType)
            try container.encode(self.taskArtifactIsCompleted, forKey: .taskArtifactIsCompleted)
            try container.encodeIfPresent(self.completorComments, forKey: .completorComments)
            try container.encodeIfPresent(self.location, forKey: .location)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case taskId = "task_id"
            case taskArtifactType = "task_artifact_type"
            case taskArtifactIsCompleted = "task_artifact_is_completed"
            case completorComments = "completor_comments"
            case location
        }
    }
}